/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entities.Sanpham;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author tranq
 */
public class Products {

    public Products() {
    }

    public void delete(String masp) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=Ass_Java4";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "delete from SANPHAM where MASP = '" + masp + "'";
            if (masp.length() > 0) {
                Statement stm = con.createStatement();
                stm.executeUpdate(sql);
                stm.close();
                con.close();
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void insert(String masp, String tensp, float gia) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=Ass_Java4";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "INSERT INTO SANPHAM (MASP, TENSP, GIA) values ('" + masp + "','" + tensp + "','" + gia + "')";
            if (masp.length() > 0) {
                Statement stm = con.createStatement();
                stm.executeUpdate(sql);
                stm.close();
                con.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void update(String masp, String tensp, float gia) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=Ass_Java4";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "update SANPHAM set TENSP='" + tensp + "', GIA='" + gia + "' where MASP='" + masp + "'";
            if (masp.length() > 0) {
                Statement stm = con.createStatement();
                stm.executeUpdate(sql);
                stm.close();
                con.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<Product> showProduct(String tensp) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=Ass_Java4";
            Connection con = DriverManager.getConnection(url, "sa", "123");
            String sql = "select * from SANPHAM";
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery(sql);
            List<Product> list = new ArrayList<>();
            while (rs.next()) {
                String code = rs.getString("MASP");
                String name = rs.getString("TENSP");
                String price = rs.getString("GIA");
//                float price = Float.parseFloat(rs.getFloat("GIA");
                Product sp = new Product(code, name, price);
                list.add(sp);
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
    protected SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

    public boolean update(Sanpham sp) {
        boolean result = true;
        Session session = null;
        Transaction transaction = null;
        try {
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();
            session.update(sp);
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
