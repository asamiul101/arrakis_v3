package com.db.grad.javaapi.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "book_to_user")
public class BookToUser {

    @Id
    private long user_id;
    private String password;

    private String bond_holder;
    private long book_id;

    private String book_name;


    @Column(name = "user_id", nullable = false)
    public long getUser_id() {
        return user_id;
    }

    public void setUser_id(long user_id) {
        this.user_id = user_id;
    }

    public String getPassword() {
        return password;
    }

    @Column(name = "password", nullable = false)
    public void setPassword(String password) {
        this.password = password;
    }

    @Column(name = "bond_holder", nullable = false)
    public String getBond_holder() {
        return bond_holder;
    }

    public void setBond_holder(String bond_holder) {
        this.bond_holder = bond_holder;
    }

    @Column(name = "book_id", nullable = false)
    public long getBook_id() {
        return book_id;
    }

    public void setBook_id(long book_id) {
        this.book_id = book_id;
    }

    @Column(name = "book_name", nullable = false)
    public String getBook_name() {
        return book_name;
    }

    public void setBook_name(String book_name) {
        this.book_name = book_name;
    }
}
