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
    private String ReleaseDate;
    private int price;
    private String img;
    private int time;
    private String GenereName;
    private String DirectorID;

    public Movie() {
    }

    public Movie(String MovieID, String MovieTitle, String ReleaseDate, int price, String img, int time, String GenereName, String DirectorID) {
        this.MovieID = MovieID;
        this.MovieTitle = MovieTitle;
        this.ReleaseDate = ReleaseDate;
        this.price = price;
        this.img = img;
        this.time = time;
        this.GenereName = GenereName;
        this.DirectorID = DirectorID;
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

    public String getReleaseDate() {
        return ReleaseDate;
    }

    public void setReleaseDate(String ReleaseDate) {
        this.ReleaseDate = ReleaseDate;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getTime() {
        return time;
    }

    public void setTime(int time) {
        this.time = time;
    }

    public String getGenereName() {
        return GenereName;
    }

    public void setGenereName(String GenereName) {
        this.GenereName = GenereName;
    }

    public String getDirectorID() {
        return DirectorID;
    }

    public void setDirectorID(String DirectorID) {
        this.DirectorID = DirectorID;
    }

    @Override
    public String toString() {
        return "Movie{" + "MovieID=" + MovieID + ", MovieTitle=" + MovieTitle + ", ReleaseDate=" + ReleaseDate + ", price=" + price + ", img=" + img + ", time=" + time + ", GenereName=" + GenereName + ", DirectorID=" + DirectorID + '}';
    }
       
}
