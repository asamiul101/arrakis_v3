package com.db.grad.javaapi.repository;

import com.db.grad.javaapi.model.User;
import nonapi.io.github.classgraph.json.JSONUtils;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import javax.persistence.Table;
import java.util.List;

@Repository
public interface UsersRepository  extends JpaRepository<User, Long> {

    @Query(nativeQuery = true, value= "select * from users")
    List<User> findAll();

    @Query(nativeQuery = true, value= "select * from users where bond_holder = :bond_holder")
    List<User> findUserByName(String bond_holder);


}
