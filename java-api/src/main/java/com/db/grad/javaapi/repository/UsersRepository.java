package com.db.grad.javaapi.repository;

import com.db.grad.javaapi.model.Book;
import com.db.grad.javaapi.model.User;
import nonapi.io.github.classgraph.json.JSONUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Table;
import java.sql.SQLOutput;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Repository
public interface UsersRepository  extends JpaRepository<User, Long> {



    @Query(nativeQuery = true, value= "select * from users")
    List<User> findAll();







}
