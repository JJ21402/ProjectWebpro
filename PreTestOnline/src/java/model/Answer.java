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
public class Answer {
    int ansId;
    String ansName;
    boolean isRight;

    public Answer(int ansId, String ansName, boolean isRight) {
        this.ansId = ansId;
        this.ansName = ansName;
        this.isRight = isRight;
    }

    public int getAnsId() {
        return ansId;
    }

    public String getAnsName() {
        return ansName;
    }

    public boolean isIsRight() {
        return isRight;
    }

    public void setAnsId(int ansId) {
        this.ansId = ansId;
    }

    public void setAnsName(String ansName) {
        this.ansName = ansName;
    }

    public void setIsRight(boolean isRight) {
        this.isRight = isRight;
    }

    @Override
    public String toString() {
        return "Answer{" + "ansId=" + ansId + ", ansName=" + ansName + ", isRight=" + isRight + '}';
    }
    
    
    
}
