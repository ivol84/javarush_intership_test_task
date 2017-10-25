package com.gmail.ivol84.javarush_intership_test_task.controller;

import com.gmail.ivol84.javarush_intership_test_task.model.Book;
import com.gmail.ivol84.javarush_intership_test_task.service.BookService;
import com.gmail.ivol84.javarush_intership_test_task.service.RequestBookMapping;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
public class CreateBookController {
    @Autowired
    BookService bookService;
    @Autowired
    RequestBookMapping mapping;

    @RequestMapping(path = "/create", method = RequestMethod.GET)
    public String createForm(Model model) {
        Book book = new Book();
        model.addAttribute("book", book);
        return "create_book";
    }

    @RequestMapping(path= "/create", method = RequestMethod.POST)
    public String createFormSubmit(HttpServletRequest request) {
        Book book = mapping.map(new Book(), request);
        System.out.println(book);
        bookService.addNewBook(book);
        return "redirect:/";
    }
}
