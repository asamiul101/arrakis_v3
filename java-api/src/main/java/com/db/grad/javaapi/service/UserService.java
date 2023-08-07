package com.db.grad.javaapi.service;

import com.db.grad.javaapi.model.Book;
import com.db.grad.javaapi.model.User;
import com.db.grad.javaapi.repository.UsersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Service
public class UserService implements IUserService {

    @Autowired
    private UsersRepository usersRepository;

    @Autowired
    public UserService(UsersRepository usersRepository) {
        this.usersRepository = usersRepository;
    }


    @Override
    public Book getBookByUser(long id) {
        User newUser = new User();
        newUser.setId(id);
        HashMap<User, Book> UserBooks = usersRepository.findBookBasedOnUser(id);
        System.out.println(UserBooks);
        List<Book> books = new ArrayList<>();
        for (User user : UserBooks.keySet()) {
            System.out.println(UserBooks.get(user));
            books.add(UserBooks.get(user));
        }

        System.out.println(books);
        return (Book) books;
    }

    @Override
    public User getUserByBondHolder(String bond_holder) {
        User newUser = new User();
        newUser.setBond_holder(bond_holder);
        List<User> userList = usersRepository.findUserByName(bond_holder);
        User result = null;
        if( userList.size() == 1)
            result = userList.get(0);

        return result;
    }

    @Override
    public List<User> getAllUsers()
    {
        return usersRepository.findAll();
    }
}
