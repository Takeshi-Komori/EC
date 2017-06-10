/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kagoyume;

import java.io.Serializable;

/**
 *
 * @author komoritakeshi
 */
public class UserDataBeans implements Serializable {

    private String name;
    private String email;
    private String password;
    private String address;
    private Integer userID;
    private Integer totalPrice;

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return this.name;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmail() {
        return this.email;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword() {
        return this.password;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }

    public String getAddress() {
        return this.address;
    }
    
    public void setUserID(Integer userID) {
        this.userID = userID;
    }
    
    public Integer getUserID() {
        return this.userID;
    }
    
    public void setTotalPrice(Integer totalPrice) {
        this.totalPrice = totalPrice;
    }
    
    public Integer getTotalPrice() {
        return this.totalPrice;
    }
    
    public void UD2DTOMapping(UserDataDTO udo) {
        udo.setName(this.name);
        udo.setEmail(this.email);
        udo.setAddress(this.address);
        udo.setPassword(this.password);
    }
}
