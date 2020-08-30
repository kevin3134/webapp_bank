package cn.domain;

import java.io.Serializable;

public class FileData implements Serializable {
    private String txtdata;
    private String title;
    private Integer dir_1;
    private Integer dir_2;
    private String time;
    private Integer id;
    private String fileName;
    private String fileType;

    public String getFileType() {
        return fileType;
    }

    public void setFileType(String fileType) {
        this.fileType = fileType;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTxtdata() {
        return txtdata;
    }

    public void setTxtdata(String txtdata) {
        this.txtdata = txtdata;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Integer getDir_1() {
        return dir_1;
    }

    public void setDir_1(Integer dir_1) {
        this.dir_1 = dir_1;
    }

    public Integer getDir_2() {
        return dir_2;
    }

    public void setDir_2(Integer dir_2) {
        this.dir_2 = dir_2;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "FileData{" +
                "txtdata='" + txtdata + '\'' +
                ", title='" + title + '\'' +
                ", dir_1=" + dir_1 +
                ", dir_2=" + dir_2 +
                ", time='" + time + '\'' +
                ", id=" + id +
                ", fileName='" + fileName + '\'' +
                ", fileType='" + fileType + '\'' +
                '}';
    }
}
