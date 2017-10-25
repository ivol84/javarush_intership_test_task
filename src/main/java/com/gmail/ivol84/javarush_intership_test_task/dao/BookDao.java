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

    public List<Book> findByCriteria(String queryString, int page) {
        String whereClause = "from book b";
        if (!queryString.isEmpty()) {
            whereClause += " WHERE b.author=:query or b.title=:query";
        }
        TypedQuery<Book> query=getSession().createQuery(whereClause);
        if (!queryString.isEmpty()) {
            query.setParameter("query", queryString);
        }
        query.setFirstResult((page - 1) * 10);
        query.setMaxResults(10);
        return query.getResultList();
    }

    public void delete(Book book) {
        getSession().delete(book);
    }
}