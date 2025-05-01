package com.greenacademy.controllers;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import javax.validation.constraints.AssertFalse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
    public String store(
            @Valid @ModelAttribute("book") Book book,
            BindingResult result,
            HttpSession session,
            Model model,
            RedirectAttributes attributes) {

        if (result.hasErrors()) {
            model.addAttribute("errors", result);
            return "books/create-book";
        }

        BookService bookService = new BookService(session);
        bookService.addBook(book);

        attributes.addFlashAttribute("success", "Book created successfully");
        attributes.addFlashAttribute("status", "create");

        return "redirect:/books";
    }

    @GetMapping("/books/edit/{id}")
    public String edit(@PathVariable("id") String bookId, HttpSession session, Model model) {
        Book book = new BookService(session).getBookId(bookId);
        model.addAttribute("book", book);
        return "books/edit-book";
    }

    @PostMapping("/books/edit/{id}")
    public String update(
            @Valid @ModelAttribute("book") Book book,
            @PathVariable("id") String bookId,
            BindingResult result,
            HttpSession session,
            Model model,
            RedirectAttributes attributes) {

        if (result.hasErrors()) {
            model.addAttribute("errors", result);
            return "books/edit-book";
        }

        book.setId(bookId);

        BookService bookService = new BookService(session);
        bookService.updateBook(book);

        attributes.addFlashAttribute("success", "Book updated successfully");
        attributes.addFlashAttribute("status", "update");

        return "redirect:/books";
    }

    @PostMapping("/books/delete/{id}")
    public String delete(
            @ModelAttribute("book") Book book,
            @PathVariable("id") String bookId,
            HttpSession session,
            RedirectAttributes attributes) {

        BookService bookService = new BookService(session);

        bookService.deleteBook(bookId);
        attributes.addFlashAttribute("success", "Book deleted successfully");
        attributes.addFlashAttribute("status", "delete");

        return "redirect:/books";
    }
}
