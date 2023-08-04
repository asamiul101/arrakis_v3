package com.db.grad.javaapi.repository;

import com.db.grad.javaapi.model.Book;
import com.db.grad.javaapi.model.User;
import nonapi.io.github.classgraph.json.JSONUtils;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import javax.persistence.Table;
import java.sql.SQLOutput;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Repository
public interface UsersRepository  extends JpaRepository<User, Long> {

    @Query(nativeQuery = true, value= "select * from users")
    List<User> findAll();

    @Query(nativeQuery = true, value= "select * from users where bond_holder = :bond_holder")
    List<User> findUserByName(String bond_holder);


    @Query(nativeQuery = true, value = "SELECT bond_holder, name\n" +
            "FROM book_user\n" +
            "JOIN users ON users.id = book_user.user_id\n" +
            "JOIN book ON book.id = book_user.book_id;")
    HashMap<User, Book> findBookBasedOnUser(long id);

}
