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
public class GiamDoc {
    private String DirectorID;
   private String DirectorName;
   private  String DirectoryNationality;

    public GiamDoc() {
    }

    public GiamDoc(String DirectorID, String DirectorName, String DirectoryNationality) {
        this.DirectorID = DirectorID;
        this.DirectorName = DirectorName;
        this.DirectoryNationality = DirectoryNationality;
    }

    public String getDirectorID() {
        return DirectorID;
    }

    public void setDirectorID(String DirectorID) {
        this.DirectorID = DirectorID;
    }

    public String getDirectorName() {
        return DirectorName;
    }

    public void setDirectorName(String DirectorName) {
        this.DirectorName = DirectorName;
    }

    public String getDirectoryNationality() {
        return DirectoryNationality;
    }

    public void setDirectoryNationality(String DirectoryNationality) {
        this.DirectoryNationality = DirectoryNationality;
    }

    @Override
    public String toString() {
        return super.toString(); //To change body of generated methods, choose Tools | Templates.
    }

 
    
   
}
