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
    int numOfQues;

    public Category(int catId, String catName, int numOfQues) {
        this.catId = catId;
        this.catName = catName;
        this.numOfQues = numOfQues;
    }

    public int getCatId() {
        return catId;
    }

    public String getCatName() {
        return catName;
    }

    public int getNumOfQues() {
        return numOfQues;
    }

    public void setCatId(int catId) {
        this.catId = catId;
    }

    public void setCatName(String catName) {
        this.catName = catName;
    }

    public void setNumOfQues(int numOfQues) {
        this.numOfQues = numOfQues;
    }

    @Override
    public String toString() {
        return "Category{" + "catId=" + catId + ", catName=" + catName + ", numOfQues=" + numOfQues + '}';
    }
    
    
    
}
