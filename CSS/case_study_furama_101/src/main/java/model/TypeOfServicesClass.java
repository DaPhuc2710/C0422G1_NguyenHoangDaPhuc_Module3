package model;

public class TypeOfServicesClass {
    private int servicesTypeCode;
    private String servicesTypeName;

    public TypeOfServicesClass() {
    }

    public TypeOfServicesClass(int servicesTypeCode, String servicesTypeName) {
        this.servicesTypeCode = servicesTypeCode;
        this.servicesTypeName = servicesTypeName;
    }

    public int getServicesTypeCode() {
        return servicesTypeCode;
    }

    public void setServicesTypeCode(int servicesTypeCode) {
        this.servicesTypeCode = servicesTypeCode;
    }

    public String getServicesTypeName() {
        return servicesTypeName;
    }

    public void setServicesTypeName(String servicesTypeName) {
        this.servicesTypeName = servicesTypeName;
    }
}
