package model.customer;

public class CustomerType {
    int customerCodeType;
    String typeCustomerName;
    public CustomerType() {
    }
    public CustomerType(int ma_loai_khach, String ten_loai_khach) {
        this.customerCodeType = ma_loai_khach;
        this.typeCustomerName = ten_loai_khach;
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
