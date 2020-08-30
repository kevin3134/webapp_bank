package cn.domain;

import java.io.Serializable;
import java.util.Date;

public class Post implements Serializable {
    private String txtData;
    private Date date;

    @Override
    public String toString() {
        return "Post{" +
                "txtData='" + txtData + '\'' +
                ", data=" + date +
                '}';
    }

    public String getTxtData() {
        return txtData;
    }

    public void setTxtData(String txtData) {
        this.txtData = txtData;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

}
