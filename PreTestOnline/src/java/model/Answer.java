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
    String isRight;

    public Answer(int ansId, String ansName, String isRight) {
        this.ansId = ansId;
        this.ansName = ansName;
        this.isRight = isRight;
    }
    
    public Answer(String ansName) {
        this.ansName = ansName;
    }

    public Answer() {
    }
    

    public int getAnsId() {
        return ansId;
    }

    public String getAnsName() {
        return ansName;
    }

    public String getIsRight() {
        return isRight;
    }

    public void setAnsId(int ansId) {
        this.ansId = ansId;
    }

    public void setAnsName(String ansName) {
        this.ansName = ansName;
    }

    public void setIsRight(String isRight) {
        this.isRight = isRight;
    }

    @Override
    public String toString() {
        return "Answer{" + "ansId=" + ansId + ", ansName=" + ansName + ", isRight=" + isRight + '}';
    }
    
    
    
}
