package com.db.grad.javaapi.service;

import com.db.grad.javaapi.model.User;
import com.db.grad.javaapi.repository.UsersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService implements IUserService {

    private UsersRepository usersRepository;

    @Autowired
    public UserService(UsersRepository usersRepository) {
        this.usersRepository = usersRepository;
    }

    @Override
    public User getUserByEmail(String email) {
        User newUser = new User();
        newUser.setEmail(email);
        List<User> userList = usersRepository.findUserByEmail(newUser);

        User result = null;
        if( userList.size() == 1)
            result = userList.get(0);

        return result;
    }
}
