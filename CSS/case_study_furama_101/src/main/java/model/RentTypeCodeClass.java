package model;

public class RentTypeCodeClass {
    private int rentTypeCode;
    private String rentTypeName;
    public RentTypeCodeClass(){}

    public RentTypeCodeClass(int rentTypeCode, String rentTypeName) {
        this.rentTypeCode = rentTypeCode;
        this.rentTypeName = rentTypeName;
    }

    public int getRentTypeCode() {
        return rentTypeCode;
    }

    public void setRentTypeCode(int rentTypeCode) {
        this.rentTypeCode = rentTypeCode;
    }

    public String getRentTypeName() {
        return rentTypeName;
    }

    public void setRentTypeName(String rentTypeName) {
        this.rentTypeName = rentTypeName;
    }
}
