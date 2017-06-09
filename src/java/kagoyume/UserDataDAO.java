package kagoyume;

/**
 * ユーザー情報を格納するテーブルに対しての操作処理を包括する
 * DB接続系はDBManagerクラスに一任
 * 基本的にはやりたい1種類の動作に対して1メソッド
 * @author hayashi-s
 */
import base.DBManager;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

public class UserDataDAO {
    
    //インスタンスオブジェクトを返却させてコードの簡略化
    public static UserDataDAO getInstance(){
        return new UserDataDAO();
    }
    /**
     * データの挿入処理を行う。現在時刻は挿入直前に生成
     * @param ud 対応したデータを保持しているJavaBeans
     * @throws SQLException 呼び出し元にcatchさせるためにスロー 
     */
    public void insert(UserDataDTO ud) throws SQLException{
        Connection con = null;
        PreparedStatement st = null;
        try{
            con = DBManager.getConnection();
            st =  con.prepareStatement("INSERT INTO user_t(name,password,mail,address,newDate) VALUES(?,?,?,?,?)");
            st.setString(1, ud.getName());
            st.setString(2, ud.getPassword());
            st.setString(3, ud.getEmail());
            st.setString(4, ud.getAddress());
            st.setTimestamp(5, new Timestamp(System.currentTimeMillis()));
           
            st.executeUpdate();
            System.out.println("insert completed");
        }catch(SQLException e){
            System.out.println(e.getMessage());
            throw new SQLException(e);
        }finally{
            if(con != null){
                con.close();
            }
        }

    }
    
    public void select(String email, String pass, UserDataBeans udb) throws SQLException{
        Connection con = null;
        PreparedStatement st = null;
        try{
            con = DBManager.getConnection();
            st =  con.prepareStatement("select * from user_t where mail = ? and password = ?");
            st.setString(1, email);
            st.setString(2, pass);
           
            ResultSet rs = st.executeQuery();
       
            while(rs.next()) {
//               udb.setUserID(rs.getInt("user_id"));
               udb.setName(rs.getString("name"));
               udb.setAddress(rs.getString("address"));
            }
            
            System.out.println("select completed");
        }catch(SQLException e){
            System.out.println(e.getMessage());
            throw new SQLException(e);
        }finally{
            if(con != null){
                con.close();
            }
        }
    }
}
