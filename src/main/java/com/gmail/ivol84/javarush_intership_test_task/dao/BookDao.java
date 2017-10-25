package com.gmail.ivol84.javarush_intership_test_task.dao;

import com.gmail.ivol84.javarush_intership_test_task.model.Book;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.TypedQuery;
import java.io.Serializable;
import java.util.List;

@Repository
public class BookDao {
    @Autowired
    private SessionFactory sessionFactory;

    protected Session getSession() {
        return sessionFactory.getCurrentSession();
    }

    public Serializable save(Book book) {
        return getSession().save(book);
    }

    public void update(Book book) {
        getSession().update(book);
    }

    public Book findById(final long id) {
        return getSession().get(Book.class, id);
    }

    public List<Book> findAll() {
        TypedQuery<Book> query=getSession().createQuery("from book");
        return query.getResultList();
    }
}