package com.greenacademy.bookService;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import com.greenacademy.models.Book;

public class BookService {
    private HttpSession session;
    private ArrayList<Book> booksList = new ArrayList<Book>();
    
// Constructor
    public BookService(HttpSession session) {
        this.session = session;
        this.booksList = (ArrayList<Book>) session.getAttribute("booksList");

    }
// Methodes Service

    public ArrayList<Book> getBook(){
        return booksList == null ? new ArrayList<Book>() : this.booksList;
    }

    public void addBook(Book book){
        ArrayList<Book> booksList = getBook();
        booksList.add(book);
        this.session.setAttribute("booksList", booksList);
    }




}
