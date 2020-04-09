/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author tranq
 */
public class Product {

    private String code;
    private String name;
    private String price;

    public Product(String code, String name, String price) {
        this.code = code;
        this.name = name;
        this.price = price;

    }

    public Product() {
    }

    public Product(String code) {
        this.code = code;

    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

}
