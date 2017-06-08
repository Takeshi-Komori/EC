/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kagoyume;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Map;
import java.util.UUID;
import javax.xml.parsers.ParserConfigurationException;
import net.arnx.jsonic.JSON;
import org.xml.sax.SAXException;

/**
 *
 * @author komoritakeshi
 */
public class YahooAPILogic {

public static ArrayList<ItemBeans> connectWebAPI(String searchStr, String appid) throws SAXException, IOException, ParserConfigurationException {

        String uri = "http://shopping.yahooapis.jp/ShoppingWebService/V1/json/itemSearch?appid=" + appid + "&query=" + searchStr;

        URL url = new URL(uri);
        URLConnection connection = url.openConnection();

        InputStream inStream = connection.getInputStream();
        BufferedReader reader = new BufferedReader(new InputStreamReader(inStream));
        StringBuffer responseBuffer = new StringBuffer();

        while (true) {
            String line = reader.readLine();
            if (line == null) {
                break;
            }
            responseBuffer.append(line);
        }
        
        reader.close();

        //取得したjsonテキストを文字列に変換
        String jsonText = responseBuffer.toString();
        return parse(jsonText);
    }
//
    private static ArrayList<ItemBeans> parse(String jsonText) {
        
        Map<String, Map<String, Object>> json = JSON.decode(jsonText);
        
        ArrayList<ItemBeans> ibArray = new ArrayList<ItemBeans>();

            for (int i = 0; i< 20; i++) {
               ItemBeans itemBeans = new ItemBeans();
               Map<String, Object> result = ((Map<String, Object>) ((Map<String, Map<String, Object>>) json.get("ResultSet").get("0")).get("Result").get(String.valueOf(i)));

               itemBeans.setName(result.get("Name").toString());
               itemBeans.setDescription(result.get("Description").toString());
               itemBeans.setPrice(((Map<String, Object>) result.get("PriceLabel")).get("DefaultPrice").toString());
               itemBeans.setImage(((Map<String, Object>) result.get("Image")).get("Medium").toString());
               itemBeans.setMerchantID(createMerchantID());
               
               ibArray.add(itemBeans);
            }    
            
            return ibArray;
    }
    
    private static UUID createMerchantID () {
        UUID id = UUID.randomUUID();
        return id;
    }

    
}
