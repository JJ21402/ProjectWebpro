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
public class Question {
    int questId;
    String questName;

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
        return "Question{" + "questId=" + questId + ", questName=" + questName + '}';
    }
    
    
    
}
