package model;

public class CustomerTypeTable {
    int customerCodeType;
    String typeCustomerName;

    public CustomerTypeTable() {

    }

    public CustomerTypeTable(int customerCodeType, String typeCustomerName) {
        this.customerCodeType = customerCodeType;
        this.typeCustomerName = typeCustomerName;
    }
}
