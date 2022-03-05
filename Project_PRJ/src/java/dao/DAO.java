// Load dữ liệu từ database
package dao;

import Context.Dbcontext;
import entity.Movie;
import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Thuong
 */
public class DAO {

    Connection conn = null; // ket noi vs sql
    PreparedStatement ps = null; // nhan cau lenh
    ResultSet rs = null; // tra kq

    public java.util.List<Movie> getAllMovie() {
        java.util.List<Movie> list = new ArrayList<>();
        String query = "select * from Movie";
        try {
            conn = new Dbcontext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Movie(rs.getString(1),
                         rs.getString(2),
                         rs.getString(3),
                         rs.getString(4),
                         rs.getDate(5)));
            }
        } catch (Exception e) {
        }
        return list;
    }

//    public  Account login(String user, String pass){
//       String query = "select * from SELECT * FROm LoginUser \n" 
//               +"where UserName =? \n" 
//               +"and PassWord = ? " 
//    return null;
//}
    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Movie> List = dao.getAllMovie();
        for (Movie o : List) {
            System.out.println(o);
        }
    }
}
