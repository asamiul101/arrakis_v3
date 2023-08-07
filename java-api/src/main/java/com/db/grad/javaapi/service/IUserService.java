package com.db.grad.javaapi.service;

import com.db.grad.javaapi.model.Bond_Details;
import com.db.grad.javaapi.model.Book;
import com.db.grad.javaapi.model.BookToUser;
import com.db.grad.javaapi.model.User;

import java.util.List;

public interface IUserService {

    public List<User> getAllUsers();


    List<Book> getAllBooks();

    List<BookToUser> getAllBooksByUsers();

    List<Bond_Details> getAllBonds();
}
