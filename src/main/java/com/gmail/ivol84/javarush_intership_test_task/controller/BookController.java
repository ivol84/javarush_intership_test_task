package com.gmail.ivol84.javarush_intership_test_task.controller;

import com.gmail.ivol84.javarush_intership_test_task.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.logging.Logger;

@Controller
public class BookController {
    @Autowired
    BookService bookService;
    @RequestMapping(name = "/edit")
    public String index(@RequestParam(value="id", required=true) long id, Model model) {
        model.addAttribute("book", bookService.findById(id));
        return "book_edit";
    }
}
