package com.db.grad.javaapi;

import com.db.grad.javaapi.model.Book;
import com.db.grad.javaapi.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.util.HashMap;

@SpringBootApplication
public class JavaApiApplication {

	@Autowired

	public static void main(String[] args) {
		SpringApplication.run(JavaApiApplication.class, args);
	}



}

