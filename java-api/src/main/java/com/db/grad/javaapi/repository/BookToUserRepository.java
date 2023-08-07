package com.db.grad.javaapi.repository;

import com.db.grad.javaapi.model.BookToUser;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface BookToUserRepository extends JpaRepository<BookToUser, Long> {

    @Query(nativeQuery = true, value= "select * from book_to_user")
    List<BookToUser> findAll();
}
