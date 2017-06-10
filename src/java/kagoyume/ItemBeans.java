/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kagoyume;

import java.util.UUID;

/**
 *
 * @author komoritakeshi
 */
public class ItemBeans {
    private String name;
    private String description;
    private String image;
    private String price;
    private String itemID;
    private String reviewAverage;
    private Integer deliveryType;
    
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public String getDescription() {
        return this.description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
    
    public String getImage() {
        return this.image;
    }
    
    public void setImage(String image) {
        this.image = image;
    }
    
    public String getPrice() {
        return this.price;
    }
    
    public void setPrice(String price) {
        this.price = price;
    }
    
    public String getItemID() {
        return this.itemID;
    }
    
    public void setItemID(String itemID) {
        this.itemID = itemID;
    }
    
    public String getReviewAverage() {
        return this.reviewAverage;
    }
    
    public void setReviewAverage(String reviewAverage) {
        this.reviewAverage = reviewAverage;
    }
    
    public void setDeliveryType(Integer deliveryType) {
        this.deliveryType = deliveryType;
    }
    
    public Integer getDeliveryType() {
        return this.deliveryType;
    }
    
    public void ID2DTOMapping(ItemDataDTO ido, Integer userID) {
        ido.setUserID(userID);
        ido.setItemCode(this.itemID);
        ido.setDeliveryType(this.deliveryType);
    }
    
}
