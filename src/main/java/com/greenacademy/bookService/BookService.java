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

        // if (this.booksList == null) {
        //     this.booksList = new ArrayList<>();
        //     session.setAttribute("booksList", this.booksList);
        // }

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

    public Book getBookId(String id){
        for(Book book : booksList){
            if(book.getId().equals(id)){
                return book;
            }
        }
        return null;
    }

    public void updateBook(Book updateBook){
        for(Book book : booksList){
            if(book.getId().equals(updateBook.getId())){
                book.setTitle(updateBook.getTitle());
                book.setIsbn(updateBook.getIsbn());
                book.setYear(updateBook.getYear());
                book.setPrice(updateBook.getPrice());
                book.setStock(updateBook.getStock());
                book.setDescription(updateBook.getDescription());
                book.setCategory(updateBook.getCategory());
            }
        }
        this.session.setAttribute("booksList", booksList);
    }

    public void deleteBook(String id) {
        if (booksList != null) {
            for (int book = 0; book < booksList.size(); book++) {
                if (booksList.get(book).getId().equals(id)) {
                    booksList.remove(book);
                }
            }
            this.session.setAttribute("booksList", booksList);
        }
    }
}
