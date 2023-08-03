package com.db.grad.javaapi.controller;

import com.db.grad.javaapi.exception.ResourceNotFoundException;
import com.db.grad.javaapi.model.Dog;
import com.db.grad.javaapi.model.User;
import com.db.grad.javaapi.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/users")
@CrossOrigin(origins = "http://localhost:3000")
public class UsersController {

    private UserService userService;

    @Autowired
    public UsersController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/users/{email}")
    public ResponseEntity <User> getUserByEmail(@PathVariable(value = "email") String email)
            throws ResourceNotFoundException {
        User users = userService.getUserByEmail(email);
        return ResponseEntity.ok().body(users);
    }
}
