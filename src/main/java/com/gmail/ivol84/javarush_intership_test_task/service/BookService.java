package com.gmail.ivol84.javarush_intership_test_task.service;

import com.gmail.ivol84.javarush_intership_test_task.dao.BookDao;
import com.gmail.ivol84.javarush_intership_test_task.model.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(readOnly = true)
public class BookService {
    @Autowired
    BookDao dao;

    @Transactional
    public Book findById(final long id) {
        return dao.findById(id);
    }

    @Transactional
    public List<Book> findAll() {
        return dao.findAll();
    }

    @Transactional(readOnly = false)
    public void addNewBook(Book book) {
        dao.save(book);
    }
}
