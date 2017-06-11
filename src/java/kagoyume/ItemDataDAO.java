/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kagoyume;

import base.DBManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

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
            st =  con.prepareStatement("INSERT INTO buy_t(user_id,name,item_code,image,type,buy_date) VALUES(?,?,?,?,?,?)");
            st.setInt(1, idt.getUserID());
            st.setString(2, idt.getName());
            st.setString(3, idt.getItemCode());
            st.setString(4, idt.getImage());
            st.setInt(5, idt.getDeliveryType());
            st.setTimestamp(6, new Timestamp(System.currentTimeMillis()));
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
    
    public void select(Integer userID, ArrayList<ItemBeans> ibArray) {
        Connection con = null;
        PreparedStatement st = null;
        try {
            con = DBManager.getConnection();
            st =  con.prepareStatement("SELECT * FROM buy_t where user_id = ?");
            st.setInt(1, userID);
            
            ResultSet rs = st.executeQuery();
            
            while (rs.next()) {
                ItemBeans idb = new ItemBeans();
                idb.setName(rs.getString("name"));
                idb.setImage(rs.getString("image"));
                idb.setBoughtDate(rs.getDate("buy_date"));
                ibArray.add(idb);
            }
            
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
