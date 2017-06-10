/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kagoyume;

/**
 *
 * @author komoritakeshi
 */
public class ItemDataDTO {
    private String itemCode;
    private Integer deliveryType;
    private Integer userID;
    private String image;
    private String name;
            
    
    public void setItemCode(String itemCode) {
        this.itemCode = itemCode;
    }
    
    public String getItemCode() {
        return this.itemCode;
    }
    
    public void setDeliveryType(Integer deliveryType) {
        this.deliveryType = deliveryType;
    }
    
    public Integer getDeliveryType() {
        return this.deliveryType;
    }
    
    public void setUserID(Integer userID) {
        this.userID = userID;
    }
    
    public Integer getUserID() {
        return this.userID;
    }
    
    public String getImage() {
        return this.image;
    }
    
    public void setImage(String image) {
        this.image = image;
    }
    
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
}
