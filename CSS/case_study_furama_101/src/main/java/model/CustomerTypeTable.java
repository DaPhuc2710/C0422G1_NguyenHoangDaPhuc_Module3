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

    public int getCustomerCodeType() {
        return customerCodeType;
    }

    public void setCustomerCodeType(int customerCodeType) {
        this.customerCodeType = customerCodeType;
    }

    public String getTypeCustomerName() {
        return typeCustomerName;
    }

    public void setTypeCustomerName(String typeCustomerName) {
        this.typeCustomerName = typeCustomerName;
    }
}
