/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Nitro5
 */
public class Search {
    int gradeId;
    String gradeName; 
    
    
    public Search(int gradeId, String gradeName) {
        this.gradeId = gradeId;
        this.gradeName = gradeName;
    }

    public int getGradeId() {
        return gradeId;
    }

    public void setGradeId(int gradeId) {
        this.gradeId = gradeId;
    }

    public String getGradeName() {
        return gradeName;
    }

    public void setGradeName(String gradeName) {
        this.gradeName = gradeName;
    }

    @Override
    public String toString() {
        return "Search{" + "gradeId=" + gradeId + ", gradeName=" + gradeName + '}';
    }
    
    
    
}
