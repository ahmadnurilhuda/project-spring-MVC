package com.greenacademy.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class BookController {
    @GetMapping("/books")
    public String getBooks() {
        return "books/index";
    }
    @GetMapping("/books/create")
    public String create() {
        return "books/create-book";
    }
    @PostMapping("/books/create")
    public String store(){
        return "books/index";
    }
}
