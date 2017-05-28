/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kagoyume;

import java.io.Serializable;


/**
 *
 * @author nanameue
 */
public class ResultBeans implements Serializable {
    private String name = "";
    private String image = "";
    private String price = "";
    private String id = "";
    // コンストラクタ
    public ResultBeans() {}
    // Nameのgetter
    public String getName() {
        return this.name; 
    }
    // Nameのsetter
    public void setName(String name) {
        this.name = name; 
    }
    
    public String getImage() {
        return this.image; 
    }
    // Nameのsetter
    public void setImage(String image) {
        this.image = image; 
    }
    
    public String getPrice() {
        return this.price; 
    }
    // Nameのsetter
    public void setPrice(String price) {
        this.price = price; 
    }
    
    public String getID() {
        return this.id; 
    }
    // Nameのsetter
    public void setID(String id) {
        this.id = id; 
    }
}
