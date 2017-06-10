/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kagoyume;

import base.DBManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;

/**
 *
 * @author komoritakeshi
 */
public class ItemDataDAO {
    public static ItemDataDAO getInstance() {
        return new ItemDataDAO();
    }
    
    public void insert(ItemDataDTO idt) {
        Connection con = null;
        PreparedStatement st = null;
        try{
            con = DBManager.getConnection();
            st =  con.prepareStatement("INSERT INTO buy_t(user_id,item_code,image,type,buy_date) VALUES(?,?,?,?,?)");
            st.setInt(1, idt.getUserID());
            st.setString(2, idt.getItemCode());
            st.setString(3, idt.getImage());
            st.setInt(4, idt.getDeliveryType());
            st.setTimestamp(5, new Timestamp(System.currentTimeMillis()));
            st.executeUpdate();
            System.out.println("insert completed");
        }catch(SQLException e){
            System.out.println(e.getMessage());
//            throw new SQLException(e);
        }finally{
            if(con != null){
//                con.close();
            }
        }
    } 
    
}
