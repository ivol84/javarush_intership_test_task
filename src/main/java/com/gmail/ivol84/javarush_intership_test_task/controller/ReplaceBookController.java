package com.gmail.ivol84.javarush_intership_test_task.controller;

import com.gmail.ivol84.javarush_intership_test_task.model.Book;
import com.gmail.ivol84.javarush_intership_test_task.service.BookService;
import com.gmail.ivol84.javarush_intership_test_task.service.RequestBookMapping;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
public class ReplaceBookController {
    @Autowired
    BookService bookService;
    @Autowired
    RequestBookMapping mapping;

    @RequestMapping(path = "/replace", method = RequestMethod.GET)
    public String replaceForm(@RequestParam(value="id", required=true) long id, Model model) {
        Book book = bookService.findById(id);
        model.addAttribute("book", book);
        return "replace_book";
    }

    @RequestMapping(path = "/replace", method = RequestMethod.POST)
    /**
     * @XXX: Add Validation
     * @XXX: Fix redirect
     */
    public String replaceFormSubmit(@RequestParam(value="id", required=true) long id, HttpServletRequest request) {
        Book book = mapping.map(bookService.findById(id), request);
        bookService.updateBook(book);
        return "redirect:/";
    }


}
