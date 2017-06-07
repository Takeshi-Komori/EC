/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kagoyume;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.RequestDispatcher;
import javax.xml.parsers.ParserConfigurationException;
import java.util.ArrayList;

import org.xml.sax.SAXException;

import java.net.*;
import java.io.*;
import java.util.Map;
import net.arnx.jsonic.JSON;

/**
 *
 * @author nanameue
 */
public class Search extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    ArrayList connectWebAPI(String searchStr, String appid) throws SAXException, IOException, ParserConfigurationException {
        ArrayList<ResultBeans> resultInfos = new ArrayList<ResultBeans>();

        String uri = "http://shopping.yahooapis.jp/ShoppingWebService/V1/itemSearch?appid=" + appid + "&query=" + searchStr;

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
        
        Map<String, Map<String, Object>> json = JSON.decode(jsonText);
        
        System.out.println("--------------------------------");
        System.out.print(json);
        System.out.println("--------------------------------");
//      
//        parse(jsonText);
        

        return resultInfos;
    }
//
//    private static void parse(String jsonText) {
//        
//
//
////        for (Map.Entry<String, Map<String, Object>> val : json.entrySet()) {
////            // 自動で取得した要素を処理
////            System.out.print((String)val.getKey());
////            System.out.print("-------------");
//////            out.print(val.getValue());
//////            out.print("/");
////        }
//
//       
//            @SuppressWarnings("unchecked")
//            Map<String, Object> result = ((Map<String, Object>) ((Map<String, Map<String, Object>>) json.get("ResultSet").get("0")).get("Result").get("0"));
//
//            String name = result.get("Name").toString();
//            @SuppressWarnings("unchecked")
//            String imageUrl = ((Map<String, Object>) result.get("Image")).get("Medium").toString();
//
//            System.out.println("--------------------------------");
//            System.out.println(imageUrl);
//            System.out.println("--------------------------------");
//       
//    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SAXException, ParserConfigurationException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String result = "search.jsp";
            request.setCharacterEncoding("UTF-8");
            String searchStr = request.getParameter("search");
            String appid = "dj0zaiZpPWhqd2pObWg4MGxZQSZzPWNvbnN1bWVyc2VjcmV0Jng9Nzg-";

            ArrayList<ResultBeans> results = connectWebAPI(searchStr, appid);

            request.setAttribute("GetDataFromAPI", results);

            RequestDispatcher rq = request.getRequestDispatcher(result);
            rq.forward(request, response);
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SAXException e) {

        } catch (ParserConfigurationException e) {

        }

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SAXException e) {

        } catch (ParserConfigurationException e) {

        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
