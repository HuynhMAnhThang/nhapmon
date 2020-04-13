/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;

/**
 *
 * @author msi
 */
public class Load implements Serializable {

    public String Name;
    public String Sdt;
    public String Chucvu;
    public String Username;
    public String Pass;

    public Load() {
    }

    public Load(String Name, String Username, String Sdt, String Chucvu) {
        this.Name = Name;
        this.Username = Username;
        this.Sdt = Sdt;
        this.Chucvu = Chucvu;
    }

    public String getPass() {
        return Pass;
    }

    public void setPass(String Pass) {
        this.Pass = Pass;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String Username) {
        this.Username = Username;
    }

    public String getSdt() {
        return Sdt;
    }

    public void setSdt(String Sdt) {
        this.Sdt = Sdt;
    }

    public String getChucvu() {
        return Chucvu;
    }

    public void setChucvu(String Chucvu) {
        this.Chucvu = Chucvu;
    }
}
