/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entities.Users;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import static java.util.Objects.hash;
import org.apache.catalina.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author msi
 */
public class LoginBean {

    public List<Load> LoadData() {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=Ass_Java4";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "select * from Users";
            PreparedStatement stm = con.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            List<Load> list = new ArrayList<>();
            while (rs.next()) {
                String Username = rs.getString(1);
                String Pass = rs.getString(2);
                String Name = rs.getString(3);
                String Sdt = rs.getString(4);
                String Chucvu = rs.getString(5);
                Load ld = new Load(Name, Username, Sdt, Chucvu, Pass);
                list.add(ld);
            }
            rs.close();
            stm.close();
            con.close();
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public void Them(String username, String password, String name, String sdt, String chucvu) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=Ass_Java4";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "INSERT INTO Users(UserName,Password,Ten,SDT,Permission) VALUES(?,?,?,?,?)";
            if (username.length() > 0) {
                PreparedStatement stm = con.prepareStatement(sql);
                stm.executeUpdate();
                stm.close();
                con.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void Delete(String username) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=Ass_Java4";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = " Delete from Users where UserName = '" + username + "'";
            if (username.length() > 0) {
                PreparedStatement stm = con.prepareStatement(sql);
                stm.executeUpdate();
                stm.close();
                con.close();
            }

        } catch (Exception e) {
            System.out.println("Gặp lỗi Delete" + e);
            e.printStackTrace();
        }
    }

    public boolean checkLogin(String username, String password) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=Ass_Java4";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "select * from Users where Username=? and Password=?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            boolean result = rs.next();
            System.out.println(result);
            rs.close();
            stm.close();
            con.close();
            if (result) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public String checkQuyen(String username, String password) {
        String a = "";
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=Ass_Java4";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "select * from Users where Username=? and Password=?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                a = rs.getString(5);
            }
            rs.close();
            stm.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return a;
    }
    protected SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

    public boolean update(Users users) {
        boolean result = true;
        Session session = null;
        Transaction transaction = null;
        try {
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();
            session.update(users);
            transaction.commit();
        } catch (Exception e) {
            e.printStackTrace();
            if (transaction != null) {
                transaction.rollback();
            }
            result = false;
        } finally {
            session.close();
        }
        return result;
    }

}
