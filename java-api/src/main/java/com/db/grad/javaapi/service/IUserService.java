package com.db.grad.javaapi.service;

import com.db.grad.javaapi.model.Book;
import com.db.grad.javaapi.model.User;

import java.util.List;

public interface IUserService {
    Book getBookByUser(long id);

    User getUserByBondHolder(String bond_holder);

    public List<User> getAllUsers();
    //User getUserByEmail(String bondHolder);
}
