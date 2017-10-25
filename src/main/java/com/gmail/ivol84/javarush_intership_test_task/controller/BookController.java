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
public class BookController {
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

    @RequestMapping(path = "/")
    public String listBooks(@RequestParam(value="filter", required=false, defaultValue = "") String filter,
                            @RequestParam(value="page", required=false, defaultValue = "1") Integer page,
                            Model model) {
        model.addAttribute("books", bookService.findByCriteria(filter, page));
        model.addAttribute("filter", filter);
        model.addAttribute("page", page);
        return "list_books";
    }

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

    @RequestMapping(path = "/markAsRead", method = RequestMethod.GET)
    public String markAsRead(@RequestParam(value="id", required=true) long id) {
        Book book = bookService.findById(id);
        book.setReadAlready(true);
        bookService.updateBook(book);
        return "redirect:/";
    }

    @RequestMapping(path = "/delete", method = RequestMethod.GET)
    public String delete(@RequestParam(value="id", required=true) long id) {
        Book book = bookService.findById(id);
        bookService.deleteBook(book);
        return "redirect:/";
    }
}
