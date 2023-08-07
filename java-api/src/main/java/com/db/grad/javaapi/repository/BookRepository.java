package com.db.grad.javaapi.repository;

import com.db.grad.javaapi.model.Book;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BookRepository  extends JpaRepository<Book, Long> {

    @Query(nativeQuery = true, value = "SELECT users.*, book.* FROM book_user" +
            "                       JOIN users ON users.user_id = book_user.user_id" +
            "                        JOIN book ON book.book_id = book_user.book_id;")
    List<Book> findAll();
}
