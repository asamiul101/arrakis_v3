package com.db.grad.javaapi.model;

import javax.persistence.*;

@Entity
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long user_id;
    private String password;

    private String bond_holder;


    @Id
    @Column(name = "user_id", nullable = false)
    public long getUser_id() {
        return user_id;
    }



    public void setUser_id(long user_id) {
        this.user_id = user_id;
    }

    @Column(name = "password", nullable = false)
    public String getPassword() {
        return password;
    }

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
}
