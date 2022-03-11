/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author Thuong
 */
public class Account {
    private int id;
    private String Username;
    private String password;
    private int isSell;
    private int isAdmin;

    public Account() {
    }

    public Account(int id, String Username, String password, int isSell, int isAdmin) {
        this.id = id;
        this.Username = Username;
        this.password = password;
        this.isSell = isSell;
        this.isAdmin = isAdmin;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String Username) {
        this.Username = Username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getIsSell() {
        return isSell;
    }

    public void setIsSell(int isSell) {
        this.isSell = isSell;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", Username=" + Username + ", password=" + password + ", isSell=" + isSell + ", isAdmin=" + isAdmin + '}';
    }
   
    
   
}
