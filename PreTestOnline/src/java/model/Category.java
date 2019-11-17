/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author bud
 */
public class Category {
    int catId;
    String catName;
    int grade;

    public Category(int catId, String catName, int grade) {
        this.catId = catId;
        this.catName = catName;
        this.grade = grade;
    }

    public int getCatId() {
        return catId;
    }

    public void setCatId(int catId) {
        this.catId = catId;
    }

    public String getCatName() {
        return catName;
    }

    public void setCatName(String catName) {
        this.catName = catName;
    }

    public int getGrade() {
        return grade;
    }

    public void setGrade(int grade) {
        this.grade = grade;
    }

    @Override
    public String toString() {
        return "Category{" + "catId=" + catId + ", catName=" + catName + ", grade=" + grade + '}';
    }

    
    
}
