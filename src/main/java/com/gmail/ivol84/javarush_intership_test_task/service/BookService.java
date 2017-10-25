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
    public List<Book> findByCriteria() {
        return findByCriteria("", 1);
    }
    @Transactional
    public List<Book> findByCriteria(String query) {
        return findByCriteria(query, 1);
    }
    @Transactional
    public List<Book> findByCriteria(String query, int page) {
        return dao.findByCriteria(query, page);
    }

    @Transactional(readOnly = false)
    public void addNewBook(Book book) {
        dao.save(book);
    }

    @Transactional(readOnly = false)
    public void updateBook(Book book) {
        dao.update(book);
    }

    @Transactional(readOnly = false)
    public void deleteBook(Book book) {
        dao.delete(book);
    }
}
