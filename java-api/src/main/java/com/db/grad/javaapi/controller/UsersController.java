package com.db.grad.javaapi.controller;

import com.db.grad.javaapi.exception.ResourceNotFoundException;
import com.db.grad.javaapi.model.Book;
import com.db.grad.javaapi.model.User;
import com.db.grad.javaapi.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/")
@CrossOrigin(origins = "http://localhost:3000")
public class UsersController {

    @Autowired
    private UserService userService;

    @Autowired
    public UsersController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/users")
    public List<User> getAllUsers() {
        return userService.getAllUsers();
    }


    @GetMapping("/{bond_holder}")
    public ResponseEntity <User> getUserByEmail(@PathVariable(value = "bond_holder") String bond_holder)
            throws ResourceNotFoundException {
        User users = userService.getUserByBondHolder(bond_holder);
        return ResponseEntity.ok().body(users);
    }


    @GetMapping("/{id}")
    public ResponseEntity <Book> getBookBasedOnUser(@PathVariable(value = "id") long id)
            throws ResourceNotFoundException {
        Book users = userService.getBookByUser(id);
        return ResponseEntity.ok().body(users);
    }
}
