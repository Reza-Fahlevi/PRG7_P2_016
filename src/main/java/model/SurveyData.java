package model;

import java.io.Serializable;

public class SurveyData implements Serializable {
    private String fullName;
    private String[] proLangList;

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {

        this.fullName = fullName;
    }

    public String[] getProLangList() {

        return proLangList;
    }

    public void setProLangList(String[] proLangList) {

        this.proLangList = proLangList;
    }
}
