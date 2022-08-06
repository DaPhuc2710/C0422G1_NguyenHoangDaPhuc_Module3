package model;

import java.time.LocalDate;

public class Customer {
    private int customerId;
    private int customerCodeType;
    private String name;
    private LocalDate dOfB;
    private boolean gender;
    private int CMND;
    private int telephone;
    private String email;
    private String address;

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
}
