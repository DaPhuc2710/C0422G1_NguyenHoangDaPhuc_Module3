package model.customer;

import java.time.LocalDate;

public class Customer {
    int customerId;
    int customerCodeType;
    String name;
    LocalDate dOfB;
    boolean gender;
    int CMND;
    int telephone;
    String email;
    String address;

    public Customer() {
    }

    public Customer(int customerId, int customerCodeType, String name, LocalDate dOfB, boolean gender, int CMND, int telephone, String email, String address) {
        this.customerId = customerId;
        this.customerCodeType = customerCodeType;
        this.name = name;
        this.dOfB = dOfB;
        this.gender = gender;
        this.CMND = CMND;
        this.telephone = telephone;
        this.email = email;
        this.address = address;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public int getCustomerCodeType() {
        return customerCodeType;
    }

    public void setCustomerCodeType(int customerCodeType) {
        this.customerCodeType = customerCodeType;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public LocalDate getdOfB() {
        return dOfB;
    }

    public void setdOfB(LocalDate dOfB) {
        this.dOfB = dOfB;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public int getCMND() {
        return CMND;
    }

    public void setCMND(int CMND) {
        this.CMND = CMND;
    }

    public int getTelephone() {
        return telephone;
    }

    public void setTelephone(int telephone) {
        this.telephone = telephone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
