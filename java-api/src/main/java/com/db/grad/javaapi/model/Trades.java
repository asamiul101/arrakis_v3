package com.db.grad.javaapi.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "trades")
public class Trades {

    @Id
    private long id;
    private long user_id;
    private long book_id;
    private long security_id;
    private long counterparty_id;

    private String currency;
    private String status;
    private long quantity;

    private String type;
    private String trade_date;
    private String settlement_date;

    @Id
    @Column(name = "id", nullable = false)
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }


    @Column(name = "user_id", nullable = false)
    public long getUser_id() {
        return user_id;
    }

    public void setUser_id(long user_id) {
        this.user_id = user_id;
    }


    @Column(name = "book_id", nullable = false)
    public long getBook_id() {
        return book_id;
    }

    public void setBook_id(long book_id) {
        this.book_id = book_id;
    }

    @Column(name = "security_id", nullable = false)
    public long getSecurity_id() {
        return security_id;
    }

    public void setSecurity_id(long security_id) {
        this.security_id = security_id;
    }

    @Column(name = "counterparty_id", nullable = false)
    public long getCounterparty_id() {
        return counterparty_id;
    }

    public void setCounterparty_id(long counterparty_id) {
        this.counterparty_id = counterparty_id;
    }

    @Column(name = "currency", nullable = false)
    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Column(name = "quantity", nullable = false)
    public long getQuantity() {
        return quantity;
    }

    public void setQuantity(long quantity) {
        this.quantity = quantity;
    }

    @Column(name = "type", nullable = false)
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Column(name = "trade_date", nullable = false)
    public String getTrade_date() {
        return trade_date;
    }

    public void setTrade_date(String trade_date) {
        this.trade_date = trade_date;
    }

    @Column(name = "settlement_date", nullable = false)
    public String getSettlement_date() {
        return settlement_date;
    }

    public void setSettlement_date(String settlement_date) {
        this.settlement_date = settlement_date;
    }
}
