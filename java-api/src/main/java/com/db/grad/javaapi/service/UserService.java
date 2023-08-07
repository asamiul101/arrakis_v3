package com.db.grad.javaapi.service;

import com.db.grad.javaapi.model.Book;
import com.db.grad.javaapi.model.BookToUser;
import com.db.grad.javaapi.model.User;
import com.db.grad.javaapi.repository.BookRepository;
import com.db.grad.javaapi.repository.BookToUserRepository;
import com.db.grad.javaapi.repository.UsersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService implements IUserService {

    @Autowired
    private UsersRepository usersRepository;

    @Autowired
    private BookRepository bookRepository;


    @Autowired
    private BookToUserRepository bookToUserRepository;

    @Autowired
    public UserService(UsersRepository usersRepository) {
        this.usersRepository = usersRepository;
    }


    public UserService(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    @Override
    public List<User> getAllUsers()
    {
        return usersRepository.findAll();
    }

    @Override
    public List<Book> getAllBooks() {
        return bookRepository.findAll();
    }

    @Override
    public List<BookToUser> getAllBooksByUsers() {
        return bookToUserRepository.findAll();
    }
}
