package entities;

public class Users implements java.io.Serializable {

    private String userName;
    private String password;
    private String ten;
    private String sdt;
    private String permission;
    private boolean status;

    public Users() {
    }

    public Users(String userName) {
        this.userName = userName;
    }

    public Users(String userName, String password, String ten, String sdt, String permission) {
        this.userName = userName;
        this.password = password;
        this.ten = ten;
        this.sdt = sdt;
        this.permission = permission;
    }

    public String getUserName() {
        return this.userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getTen() {
        return this.ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getSdt() {
        return this.sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getPermission() {
        return this.permission;
    }

    public void setPermission(String permission) {
        this.permission = permission;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

}
