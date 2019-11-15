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
public class Grade {
    int gradeId;
    String gradeName;

    public Grade(int gradeId, String gradeName) {
        this.gradeId = gradeId;
        this.gradeName = gradeName;
    }

    public int getGradeId() {
        return gradeId;
    }

    public String getGradeName() {
        return gradeName;
    }

    public void setGradeId(int gradeId) {
        this.gradeId = gradeId;
    }

    public void setGradeName(String gradeName) {
        this.gradeName = gradeName;
    }

    @Override
    public String toString() {
        return "Grade{" + "gradeId=" + gradeId + ", gradeName=" + gradeName + '}';
    }
    
    
    
}
