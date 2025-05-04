package com.greenacademy.viewmodel;



import com.greenacademy.models.Book;
import com.greenacademy.models.Category;

public class BookViewModel {
    private Book book;
    private Category category;

    public BookViewModel(Book book, Category category) {
        this.book = book;
        this.category = category;
    }
    public Book getBook() {
        return book;
    }
    public void setBook(Book book) {
        this.book = book;
    }
    public Category getCategory() {
        return category;
    }
    public void setCategory(Category category) {
        this.category = category;
    }
}
