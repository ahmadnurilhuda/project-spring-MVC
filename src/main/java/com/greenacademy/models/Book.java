package com.greenacademy.models;

import java.time.LocalDate;
import java.util.UUID;

public class Book {

    private String id;
    private String title;
    private String isbn;
    private String year;
    private double price;
    private int stock;
    private String description;
    private String category;
    

    public Book(String title, double price, int stock, String isbn,String year, String description, String category) {
        this.title = title;
        this.price = price;
        this.stock = stock;
        this.isbn = isbn;
        // this.year = year;
        this.description = description;
        this.category = category;

        this.id = UUID.randomUUID().toString();
    }
    
    public String getId(){
        return id;
    }

    public String getTitle() {
        return title;
    }
    public String getIsbn() {
        return isbn;
    }
    public String getYear() {
        return year;
    }
    public double getPrice() {
        return price;
    }
    public int getStock() {
        return stock;
    }
    public String getDescription() {
        return description;
    }
    public String getCategory() {
        return category;
    }

    public void setTitle(String title) {
        this.title = title;
    }
    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }
    public void setYear(String year) {
        this.year = year;
    }
    public void setPrice(double price) {
        this.price = price;
    }
    public void setStock(int stock) {
        this.stock = stock;
    }
    public void setDescription(String description) {
        this.description = description;
    }
    public void setCategory(String category) {
        this.category = category;
    }
}

