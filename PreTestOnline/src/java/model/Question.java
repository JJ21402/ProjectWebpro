/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author bud
 */
public class Question {
    int questId;
    String questName;
    ArrayList<Answer> answers;
    int catId;

    public Question(int questId, String questName, ArrayList<Answer> answers, int catId) {
        this.questId = questId;
        this.questName = questName;
        this.answers = answers;
        this.catId = catId;
    }

    public Question(String questName, int catId) {
        this.questName = questName;
        this.catId = catId;
    }

    public Question() {
    }

    
    public int getCatId() {
        return catId;
    }

    public void setCatId(int catId) {
        this.catId = catId;
    }
    
    public ArrayList<Answer> getAnswers() {
        return answers;
    }

    public void setAnswers(ArrayList<Answer> answers) {
        this.answers = answers;
    }
    
    public Question(int questId, String questName) {
        this.questId = questId;
        this.questName = questName;
    }

    public int getQuestId() {
        return questId;
    }

    public String getQuestName() {
        return questName;
    }

    public void setQuestId(int questId) {
        this.questId = questId;
    }

    public void setQuestName(String questName) {
        this.questName = questName;
    }

    @Override
    public String toString() {
        return "Question{" + "questId=" + questId + ", questName=" + questName + ", answers=" + answers + '}';
    }

    public Question(int questId, String questName, ArrayList<Answer> answers) {
        this.questId = questId;
        this.questName = questName;
        this.answers = answers;
    }

    
    
    
    
}
