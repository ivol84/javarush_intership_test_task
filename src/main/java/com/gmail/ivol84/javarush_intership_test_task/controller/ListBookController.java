package com.gmail.ivol84.javarush_intership_test_task.controller;

import com.gmail.ivol84.javarush_intership_test_task.model.Book;
import com.gmail.ivol84.javarush_intership_test_task.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ListBookController {
    @Autowired
    BookService bookService;

    @RequestMapping(path = "/", method = RequestMethod.GET)
    public String listBooks(Model model) {
        model.addAttribute("books", bookService.findAll());
        return "list_books";
    }
}
