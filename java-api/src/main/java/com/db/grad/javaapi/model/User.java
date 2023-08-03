package com.db.grad.javaapi.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class User {

    @Id
    private long id;
    private String email;
    private String password;

    private String bondHolder;

    public User() {
    }

    public User(long id, String email, String password, String bondHolder) {
        this.id = id;
        this.email = email;
        this.password = password;
        this.bondHolder = bondHolder;
    }

    public long getId() {
        return id;
    }

    @Id
    @Column(name = "id", nullable = false)
    public void setId(long id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getBondHolder() {
        return bondHolder;
    }

    public void setBondOwner(String bondHolder) {
        this.bondHolder = bondHolder;
    }
}
