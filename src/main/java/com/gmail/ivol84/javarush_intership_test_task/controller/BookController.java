package com.gmail.ivol84.javarush_intership_test_task.controller;

import com.gmail.ivol84.javarush_intership_test_task.model.Book;
import com.gmail.ivol84.javarush_intership_test_task.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.logging.Logger;

@Controller
public class BookController {
    @Autowired
    BookService bookService;

    @RequestMapping(name = "/replace", method = RequestMethod.GET)
    public String replaceForm(@RequestParam(value="id", required=true) long id, Model model) {
        Book book = bookService.findById(id);
        model.addAttribute("book", book);
        model.addAttribute("title", "Replace book");
        return "replace_book";
    }

    @RequestMapping(name = "/replace", method = RequestMethod.POST)
    /**
     * @XXX: Add Validation
     * @XXX: Fix redirect
     */
    public String replaceFormSubmit(@RequestParam(value="id", required=true) long id, HttpServletRequest request) {
        Book book = bookService.findById(id);
        book.setTitle(request.getParameter("title"));
        book.setDescription(request.getParameter("description"));
        book.setIsbn(request.getParameter("isbn"));
        book.setPrintYear(Integer.parseInt(request.getParameter("year")));
        book.setReadAlready(false);
        System.out.println(book);
        bookService.updateBook(book);
        return "redirect:/replace?id="+book.getId();
    }


}
