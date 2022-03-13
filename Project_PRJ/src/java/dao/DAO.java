// Load dữ liệu từ database
package dao;

import Context.Dbcontext;
import entity.Account;
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
                list.add(new Movie(rs.getString(1)
                        ,rs.getString(2)
                        ,rs.getDate(3)
                        ,rs.getInt(4)
                        ,rs.getString(5)
                        ,rs.getString(6)
                        ,rs.getString(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }
//        public List<Movie> SearchbyName(String txtSearch) {
//        List<Movie> list = new ArrayList<>();
//        String query = " Select * from Movie \n" +
//                        "  where MovieTitle like ?";
//        try {
//            conn = new Dbcontext().getConnection();//mo ket noi voi sql
//            ps = conn.prepareStatement(query);
//            rs = ps.setString(2,"%" + txtSearch + "%");
//            while (rs.next()) {
//                list.add(new Movie(rs.getString(1),
//                         rs.getString(2),
//                         rs.getString(3),
//                         rs.getString(4),
//                         rs.getDate(5)));
//            }
//        } catch (Exception e) {
//        }
//        return list;
//    }

    public Account login(String user, String pass) {
        String query = "select * from Accountt \n"
                + "where [USER] = ?\n"
                + "and pass = ?";
        try {
             conn = new Dbcontext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }

    
    public Account CheckAccountExit(String user) {
        String query = "select * from Accountt \n"
                + "where [USER] = ?\n";
                
        try {
            conn = new Dbcontext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void singup(String user, String pass ) {
        String query ="INSERT INTO Accountt\n" +
                       "Values(?,?',0,0)";
        try {
            conn = new Dbcontext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    
    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Movie> List = dao.getAllMovie();
        for (Movie o : List) {
            System.out.println(o);
        }
    }

}
