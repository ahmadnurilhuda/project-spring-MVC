package com.greenacademy.controllers;

import java.time.LocalDate;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.greenacademy.bookService.BookService;
import com.greenacademy.models.Book;

@Controller
public class BookController {
    @GetMapping("/books")
    public String index(HttpSession session, Model model) {
        BookService bookService = new BookService(session);
        ArrayList<Book> booksList = bookService.getBook();

        model.addAttribute("booksList", booksList);
        return "books/index";
    }

    @GetMapping("/books/create")
    public String create() {
        return "books/create-book";
    }

    @PostMapping("/books/create")
    public String store(@ModelAttribute("book") Book book,HttpSession session) {

        BookService bookService = new BookService(session);
        bookService.addBook(book);

        return "redirect:/books";
    }
}
