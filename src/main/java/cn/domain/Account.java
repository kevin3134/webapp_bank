package cn.domain;

import java.io.Serializable;

public class Account implements Serializable {
    private String name;
    private String password;
    private Integer level;


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    @Override
    public String toString() {
        return "Account{" +
                "username='" + name + '\'' +
                ", password='" + password + '\'' +
                ", level=" + level +
                '}';
    }


}
