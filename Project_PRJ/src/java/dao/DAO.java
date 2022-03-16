// Load dữ liệu từ database
package dao;

import Context.Dbcontext;
import entity.Account;
import entity.Movie;
import entity.GiamDoc;
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
                list.add(new Movie(rs.getString(1),
                         rs.getString(2),
                         rs.getString(3),
                         rs.getInt(4),
                         rs.getString(5),
                         rs.getInt(6),
                         rs.getString(7),
                         rs.getString(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<GiamDoc> getAllGiamDocs() {
        List<GiamDoc> listt = new ArrayList<>();
        String query = "  select * from  GiamDoc";
        try {
            conn = new Dbcontext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                listt.add(new GiamDoc(rs.getString(1),
                         rs.getString(2),
                         rs.getString(3)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listt;
    }

    public List<Movie> getMovies(String txtSearch){
    List<Movie> list = new ArrayList<>();
    String query = "select *from Movie \n" +
                       "where MovieTitle like ?";
             try {
            conn = new Dbcontext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, "%"+ txtSearch+"%");
            rs = ps.executeQuery();
            while (rs.next()) {
                String id = rs.getString(1);
                list.add(new Movie(id,
                         rs.getString(2),
                         rs.getString(3),
                         rs.getInt(4),
                         rs.getString(5),
                         rs.getInt(6),
                         rs.getString(7),
                         rs.getString(8)));
            }
        } catch (Exception e) {
        }
        return list;
    
    }
    public List<Movie> SearchbyName(String txtSearch) {
        List<Movie> list = new ArrayList<>();
        String query = " Select * from Movie \n"
                + "  where Movieid = ?";
        try {
            conn = new Dbcontext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, txtSearch);
            rs = ps.executeQuery();
            while (rs.next()) {
                String id = rs.getString(1);
                list.add(new Movie(id,
                         rs.getString(2),
                         rs.getString(3),
                         rs.getInt(4),
                         rs.getString(5),
                         rs.getInt(6),
                         rs.getString(7),
                         rs.getString(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
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
            while (rs.next()) {
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
            while (rs.next()) {
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

    public void singup(String user, String pass) {
        String query = "INSERT INTO Accountt\n"
                + "Values(?,?,0,0)";
        try {
            conn = new Dbcontext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Movie> getnhanvienSellID(int id) {
        List<Movie> list = new ArrayList<>();
        String query = "select * from NhanVien\n"
                + " where sellID =?";
        try {
            conn = new Dbcontext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Movie(rs.getString(1),
                         rs.getString(2),
                         rs.getString(3),
                         rs.getInt(4),
                         rs.getString(5),
                         rs.getInt(6),
                         rs.getString(7),
                         rs.getString(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public void editFilm(String MovieTitle,String ReleaseDate, int price, String img, int time, String GenereName, String DirectorID, String pid ){
        String query ="update Movie \n" +
                        "set [MovieTitle] = ?,\n" +
                        "[ReleaseDate]= ?,\n" +
                        "[price] = ?,\n" +
                        "[img] = ?,\n" +
                        "[Time] = ?,\n" +
                        "[GenreName] = ?,\n" +
                        "DirectorID = ?,\n" +
                        "where MovieID = ?";
        try {
            conn = new Dbcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, MovieTitle);
            ps.setString(2, ReleaseDate);
            ps.setInt(3, price);
            ps.setString(4, img);
            ps.setInt(5, time);
            ps.setString(6, GenereName);
            ps.setString(7, DirectorID);
            ps.setString(8, pid);
        } catch (Exception e) {
                e.printStackTrace();
        }
    }
    
    public void deleteFilm(String pid) {
        String query = " delete from Movie where MovieID = ?";
        try {
            conn = new Dbcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int insertFilm(Movie movie) {
        int n = 0;
        String query = "INSERT INTO [Movie]\n"
                + "           ([MovieID]\n"
                + "           ,[MovieTitle]\n"
                + "           ,[ReleaseDate]\n"
                + "           ,[price]\n"
                + "           ,[img]\n"
                + "           ,[Time]\n"
                + "           ,[GenreName]\n"
                + "           ,[DirectorID])\n"
                + "     VALUES"
                + "           (?"
                + "           ,?"
                + "           ,?"
                + "           ,?"
                + "           ,?"
                + "           ,?"
                + "           ,?"
                + "           ,?)";

        try {
            conn = new Dbcontext().getConnection();
            PreparedStatement ps1 = conn.prepareStatement(query);
//             ps = conn.prepareStatement(query);
            ps1.setString(1, movie.getMovieID());
            ps1.setString(2, movie.getMovieTitle());
            ps1.setString(3, movie.getReleaseDate());
            ps1.setInt(4, movie.getPrice());
            ps1.setString(5, movie.getImg());
            ps1.setInt(6, movie.getTime());
            ps1.setString(7, movie.getGenereName());
            ps1.setString(8, movie.getDirectorID());
            //ps.setString(7, pDirectorID);
//                Statement stae = conn.createStatement();
//                n = stae.executeUpdate(query);
            n = ps1.executeUpdate();
            // ps1.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return n;

    }


    
    
    
    public static void main(String[] args) {
        DAO dao = new DAO();
        List<GiamDoc> listt = dao.getAllGiamDocs();
        for (GiamDoc giamDoc : listt) {
            System.out.println(giamDoc);
        }
        System.out.println("\n=================== \n");
        List<Movie> List = dao.getAllMovie();
        for (Movie o : List) {
            System.out.println(o);
        }
        //   int n = dao.insertFilm(new Movie("m46", "cvz", "2022-02-02", 9, "\"https://gamek.mediacdn.vn/133514250583805952/2020/10/19/photo-1-16030814521571502042438.jpg\"", 144, "HÃ nh Ä?á»?ng", "D02"));
//    dao.insertFilm("M222", "ma",Date.valueOf("2022-02-02"), 9, "https://gamek.mediacdn.vn/133514250583805952/2020/10/19/photo-1-16030814521571502042438.jpg", 144, "Hành Động", "D01");
        //      System.out.println(n);
    }

}
