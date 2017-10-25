package com.gmail.ivol84.javarush_intership_test_task.service;

import com.gmail.ivol84.javarush_intership_test_task.model.Book;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;

@Service
public class RequestBookMapping {
    public Book map(Book book, HttpServletRequest request) {
        book.setTitle(request.getParameter("title"));
        book.setDescription(request.getParameter("description"));
        book.setIsbn(request.getParameter("isbn"));
        book.setPrintYear(Integer.parseInt(request.getParameter("year")));
        book.setReadAlready(false);
        book.setAuthor(request.getParameter("author"));
        return book;
    }
}
