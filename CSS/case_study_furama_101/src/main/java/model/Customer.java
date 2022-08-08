package model;



public class Customer {
    private int customerId;
    private String customerCodeType;
    private String name;
    private String dOfB;
    private boolean gender;
    private String CMND;
    private String telephone;
    private String email;
    private String address;

    public Customer() {
    }

    public Customer(int customerId, String customerCodeType, String name, String dOfB, boolean gender, String CMND, String telephone, String email, String address) {
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

    public Customer(String customerCodeType, String name, String dOfB, boolean gender, String CMND, String telephone, String email, String address) {
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

    public String getCustomerCodeType() {
        return customerCodeType;
    }

    public void setCustomerCodeType(String customerCodeType) {
        this.customerCodeType = customerCodeType;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getdOfB() {
        return dOfB;
    }

    public void setdOfB(String dOfB) {
        this.dOfB = dOfB;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getCMND() {
        return CMND;
    }

    public void setCMND(String CMND) {
        this.CMND = CMND;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
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
