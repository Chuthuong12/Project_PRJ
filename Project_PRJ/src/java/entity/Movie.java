/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.Date;

/**
 *
 * @author Thuong
 */
public class Movie {
    private String MovieID;
    private  String MovieTitle;
    private String GenereID;
    private String DirectorID;
    private Date date;
    public Movie() {
    }

    public Movie(String MovieID, String MovieTitle, String GenereID, String DirectorID, Date date) {
        this.MovieID = MovieID;
        this.MovieTitle = MovieTitle;
        this.GenereID = GenereID;
        this.DirectorID = DirectorID;
        this.date = date;
    }

    public String getMovieID() {
        return MovieID;
    }

    public void setMovieID(String MovieID) {
        this.MovieID = MovieID;
    }

    public String getMovieTitle() {
        return MovieTitle;
    }

    public void setMovieTitle(String MovieTitle) {
        this.MovieTitle = MovieTitle;
    }

    public String getGenereID() {
        return GenereID;
    }

    public void setGenereID(String GenereID) {
        this.GenereID = GenereID;
    }

    public String getDirectorID() {
        return DirectorID;
    }

    public void setDirectorID(String DirectorID) {
        this.DirectorID = DirectorID;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "Movie{" + "MovieID=" + MovieID + ", MovieTitle=" + MovieTitle + ", GenereID=" + GenereID + ", DirectorID=" + DirectorID + ", date=" + date + '}';
    }


    
    
}