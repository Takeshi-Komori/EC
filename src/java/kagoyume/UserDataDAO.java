package kagoyume;

/**
 * ユーザー情報を格納するテーブルに対しての操作処理を包括する DB接続系はDBManagerクラスに一任 基本的にはやりたい1種類の動作に対して1メソッド
 *
 * @author hayashi-s
 */
import base.DBManager;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;

public class UserDataDAO {

    //インスタンスオブジェクトを返却させてコードの簡略化
    public static UserDataDAO getInstance() {
        return new UserDataDAO();
    }

    /**
     * データの挿入処理を行う。現在時刻は挿入直前に生成
     *
     * @param ud 対応したデータを保持しているJavaBeans
     * @throws SQLException 呼び出し元にcatchさせるためにスロー
     */
    public Integer insert(UserDataDTO ud) throws SQLException {
        Connection con = null;
        PreparedStatement st = null;
        try {
            con = DBManager.getConnection();
            st = con.prepareStatement("INSERT INTO user_t(name,password,mail,address,newDate) VALUES(?,?,?,?,?)", Statement.RETURN_GENERATED_KEYS);
            st.setString(1, ud.getName());
            st.setString(2, ud.getPassword());
            st.setString(3, ud.getEmail());
            st.setString(4, ud.getAddress());
            st.setTimestamp(5, new Timestamp(System.currentTimeMillis()));

            st.executeUpdate();
            
            int id = 0;
            
            ResultSet rs = st.getGeneratedKeys();
            if (rs.next()) {
                id = rs.getInt(1);
            }

            return id;

        } catch (SQLException e) {
            System.out.println(e.getMessage());
            throw new SQLException(e);
        } finally {
            if (con != null) {
                con.close();
            }
        }

    }

    public void select(String email, String pass, UserDataBeans udb) throws SQLException {
        Connection con = null;
        PreparedStatement st = null;
        try {
            con = DBManager.getConnection();
            st = con.prepareStatement("SELECT * FROM user_t WHERE mail = ? AND password = ?", Statement.RETURN_GENERATED_KEYS);
            st.setString(1, email);
            st.setString(2, pass);

            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                udb.setUserID(rs.getInt("user_id"));
                udb.setName(rs.getString("name"));
                udb.setAddress(rs.getString("address"));
                udb.setPassword(rs.getString("password"));
                udb.setEmail(rs.getString("mail"));
                udb.setDeleteFlg(rs.getInt("deleteFlg"));

                if (rs.getInt("total") == 0) {
                    udb.setTotalPrice(0);
                } else if (rs.getInt("total") > 0) {
                    udb.setTotalPrice(rs.getInt("total"));
                }
            }

            System.out.println("select completed");
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            throw new SQLException(e);
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }

    public void updateTotalPrice(Integer totalPrice, Integer user_id) throws SQLException {
        Connection con = null;
        PreparedStatement st = null;
        try {
            con = DBManager.getConnection();
            st = con.prepareStatement("UPDATE user_t SET total = ? WHERE user_id = ?");

            st.setInt(1, totalPrice);
            st.setInt(2, user_id);

            st.executeUpdate();
            System.out.println("update completed");
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            throw new SQLException(e);
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }

    public void updateDeleteFlg(UserDataDTO udt) throws SQLException {
        Connection con = null;
        PreparedStatement st = null;
        try {
            con = DBManager.getConnection();
            st = con.prepareStatement("UPDATE user_t SET deleteFlg = ? WHERE user_id = ?");

            st.setInt(1, 1);
            st.setInt(2, udt.getUserID());

            st.executeUpdate();
            System.out.println("update completed");
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            throw new SQLException(e);
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }

    public void updateUserInfo(UserDataDTO udt) throws SQLException {
        Connection con = null;
        PreparedStatement st = null;
        try {
            con = DBManager.getConnection();
            st = con.prepareStatement("UPDATE user_t set name = ?, password = ?, mail = ?, address = ? WHERE user_id = ?");

            st.setString(1, udt.getName());
            st.setString(2, udt.getPassword());
            st.setString(3, udt.getEmail());
            st.setString(4, udt.getAddress());
            st.setInt(5, udt.getUserID());

            st.executeUpdate();
            System.out.println("update completed");
        } catch (SQLException e) {
            System.out.print(e.getMessage());
            throw new SQLException(e);
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }
}
