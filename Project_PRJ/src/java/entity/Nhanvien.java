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
public class Nhanvien {
    private int sellID;
    private int cateID;

    public Nhanvien() {
    }

    public Nhanvien(int sellID, int cateID) {
        this.sellID = sellID;
        this.cateID = cateID;
    }

    public int getSellID() {
        return sellID;
    }

    public void setSellID(int sellID) {
        this.sellID = sellID;
    }

    public int getCateID() {
        return cateID;
    }

    public void setCateID(int cateID) {
        this.cateID = cateID;
    }

    @Override
    public String toString() {
        return "Nhanvien{" + "sellID=" + sellID + ", cateID=" + cateID + '}';
    }
    
    
    
}
