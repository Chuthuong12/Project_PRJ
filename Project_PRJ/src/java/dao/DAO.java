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

    public List<Movie> getAllMovie() {
        List<Movie> list = new ArrayList<>();
        String query = "select * from Movie";
        try {
            conn = new Dbcontext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Movie(rs.getString("MovieID"),
                         rs.getString("MovieTitle"),
                         rs.getString("GenereID"),
                         rs.getString("DirectorID"),
                         rs.getDate("ReleaseDate")));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Movie> List = dao.getAllMovie();
        for (Movie o : List) {
            System.out.println(o);
        }
    }
}
