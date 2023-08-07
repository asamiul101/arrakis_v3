package com.db.grad.javaapi.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "bond_details")
public class Bond_Details {

    @Id
    private long user_id;

    private String bond_holder;
    private long book_id;

    private String book_name;
    private long counterparty_id;
    private String counterparty_name;

    private long security_id;
    private String isin;
    private String cusip;
    private String issuer_name;
    private String maturity_date;
    private float coupon;
    private String type;

    private float face_value;
    private String currency;
    private String status;

    private long quantity;

    private String trade_date;
    private String settlement_date;

    @Id
    @Column(name = "user_id", nullable = false)
    public long getUser_id() {
        return user_id;
    }

    public void setUser_id(long user_id) {
        this.user_id = user_id;
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

    @Column(name = "counterparty_id", nullable = false)
    public long getCounterparty_id() {
        return counterparty_id;
    }

    public void setCounterparty_id(long counterparty_id) {
        this.counterparty_id = counterparty_id;
    }

    @Column(name = "counterparty_name", nullable = false)
    public String getCounterparty_name() {
        return counterparty_name;
    }

    public void setCounterparty_name(String counterparty_name) {
        this.counterparty_name = counterparty_name;
    }

    @Column(name = "security_id", nullable = false)
    public long getSecurity_id() {
        return security_id;
    }

    public void setSecurity_id(long security_id) {
        this.security_id = security_id;
    }

    @Column(name = "isin", nullable = false)
    public String getIsin() {
        return isin;
    }

    public void setIsin(String isin) {
        this.isin = isin;
    }

    @Column(name = "cusip", nullable = false)
    public String getCusip() {
        return cusip;
    }

    public void setCusip(String cusip) {
        this.cusip = cusip;
    }

    @Column(name = "issuer_name", nullable = false)
    public String getIssuer_name() {
        return issuer_name;
    }

    public void setIssuer_name(String issuer_name) {
        this.issuer_name = issuer_name;
    }

    @Column(name = "maturity_date", nullable = false)
    public String getMaturity_date() {
        return maturity_date;
    }

    public void setMaturity_date(String maturity_date) {
        this.maturity_date = maturity_date;
    }

    @Column(name = "coupon", nullable = false)
    public float getCoupon() {
        return coupon;
    }

    public void setCoupon(float coupon) {
        this.coupon = coupon;
    }

    @Column(name = "type", nullable = false)
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Column(name = "face_value", nullable = false)
    public float getFace_value() {
        return face_value;
    }

    public void setFace_value(float face_value) {
        this.face_value = face_value;
    }

    @Column(name = "currency", nullable = false)
    public String getCurrency() {
        return currency;
    }


    public void setCurrency(String currency) {
        this.currency = currency;
    }

    @Column(name = "status", nullable = false)
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
