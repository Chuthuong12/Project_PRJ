/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.DAO;
import entity.Account;
import entity.Movie;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Thuong
 */
@WebServlet(name = "addControl", urlPatterns = {"/add"})
public class addControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
            String tMovieID = request.getParameter("MovieID");
            String tMovieTitle = request.getParameter("MovieTitle");
            String tReleaseDate = request.getParameter("ReleaseDate");
            int tprice = Integer.parseInt(request.getParameter("price"));
            String timg = request.getParameter("img");
            int ttime = Integer.parseInt(request.getParameter("time"));
            String pGenereName = request.getParameter("GenereName");
            String pDirectorID = request.getParameter("GirectorID");
            
            Movie movie = new Movie(tMovieID, tMovieTitle, tReleaseDate, tprice, timg, ttime, pGenereName, pDirectorID);
//            movie.setMovieID(tMovieID);
//            movie.setMovieTitle(tMovieTitle);
//            movie.setReleaseDate(tReleaseDate);
//            movie.setPrice(tprice);
//            movie.setImg(timg);
//            movie.setTime(ttime);
//            movie.setGenereName(pGenereName);
//            movie.setDirectorID(pDirectorID);
            
            DAO dao = new DAO();
            System.out.println(movie);
            int n = dao.insertFilm(movie);
            if (n > 0){
                HttpSession session = request.getSession();
            Account a = (Account) session.getAttribute("acc");
            response.sendRedirect("ManagerControll");
            }
            
//            String tMovieID = "M26";
//            String tMovieTitle = "cvvxcvcx";
//            Date tReleaseDate = Date.valueOf("2022-02-02");
//            int tprice = Integer.parseInt("9");
//            String timg = "https://gamek.mediacdn.vn/133514250583805952/2020/10/19/photo-1-16030814521571502042438.jpg";
//            int ttime = Integer.parseInt("140");
//            String pGenereName = "Hành Động";
//            String pDirectorID = "GirectorID";

//            HttpSession session = request.getSession();
//            Account a = (Account) session.getAttribute("acc");
//        int sid = a.getId();

            
//                 dao.insertFilm(tMovieID, tMovieTitle, tReleaseDate, tprice, timg, ttime, pGenereName, pDirectorID);
//       dao.insertFilm("M40", "Gã Điên Báo Thù",Date.valueOf("2022-12-06"), 9, "https://www.vietphucinema.com/temp/-uploaded-phim-thang32022_gadiendoc_cr_500x700.jpg", 144, "HÃ nh Ä?á»?ng", "D01");
//    dao.insertFilm("tMovieID", "tMovieTitle",Date.valueOf("2022-02-02"), tprice, "https://gamek.mediacdn.vn/133514250583805952/2020/10/19/photo-1-16030814521571502042438.jpg", ttime, "HÃ nh Ä?á»?ng", pDirectorID);
//        dao.insertFilm(tmovieTitle, treleaseDate, tprice, timg, ttime, pgenereName,pDirectorID, sid);
//            response.sendRedirect("ManagerControll");
        
       
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
