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
    private Date ReleaseDate;
    public Movie() {
    }

    public Movie(String MovieID, String MovieTitle, String GenereID, String DirectorID, Date ReleaseDate) {
        this.MovieID = MovieID;
        this.MovieTitle = MovieTitle;
        this.GenereID = GenereID;
        this.DirectorID = DirectorID;
        this.ReleaseDate = ReleaseDate;
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

    public Date getReleaseDate() {
        return ReleaseDate;
    }

    public void setReleaseDate(Date ReleaseDate) {
        this.ReleaseDate = ReleaseDate;
    }

    @Override
    public String toString() {
        return "Movie{" + "MovieID=" + MovieID + ", MovieTitle=" + MovieTitle + ", GenereID=" + GenereID + ", DirectorID=" + DirectorID + ", ReleaseDate=" + ReleaseDate + '}';
    }


    
    
}
