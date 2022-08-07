package model;

public class ServicesClass {
    private int servicesId;
    private String name;
    private double area;
    private double cost;
    private int maxPeople;
    private int rentTypeCode;
    private int servicesTypeCode;
    private String quality;
    private String description;
    private double poolArea;
    private int floor;
    private String extraServices;

    public ServicesClass() {

    }

    public ServicesClass(String name, double area, double cost, int maxPeople, int rentTypeCode, int servicesTypeCode, String quality, String description, double poolArea, int floor, String extraServices) {
        this.name = name;
        this.area = area;
        this.cost = cost;
        this.maxPeople = maxPeople;
        this.rentTypeCode = rentTypeCode;
        this.servicesTypeCode = servicesTypeCode;
        this.quality = quality;
        this.description = description;
        this.poolArea = poolArea;
        this.floor = floor;
        this.extraServices = extraServices;
    }
    public ServicesClass(int servicesId, String name, double area, double cost, int maxPeople, int rentTypeCode, int servicesTypeCode, String quality, String description, double poolArea, int floor, String extraServices) {
        this.servicesId = servicesId;
        this.name = name;
        this.area = area;
        this.cost = cost;
        this.maxPeople = maxPeople;
        this.rentTypeCode = rentTypeCode;
        this.servicesTypeCode = servicesTypeCode;
        this.quality = quality;
        this.description = description;
        this.poolArea = poolArea;
        this.floor = floor;
        this.extraServices = extraServices;
    }

    public int getServicesId() {
        return servicesId;
    }

    public void setServicesId(int servicesId) {
        this.servicesId = servicesId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getArea() {
        return area;
    }

    public void setArea(double area) {
        this.area = area;
    }

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }

    public int getMaxPeople() {
        return maxPeople;
    }

    public void setMaxPeople(int maxPeople) {
        this.maxPeople = maxPeople;
    }

    public int getRentTypeCode() {
        return rentTypeCode;
    }

    public void setRentTypeCode(int rentTypeCode) {
        this.rentTypeCode = rentTypeCode;
    }

    public int getServicesTypeCode() {
        return servicesTypeCode;
    }

    public void setServicesTypeCode(int servicesTypeCode) {
        this.servicesTypeCode = servicesTypeCode;
    }

    public String getQuality() {
        return quality;
    }

    public void setQuality(String quality) {
        this.quality = quality;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPoolArea() {
        return poolArea;
    }

    public void setPoolArea(double poolArea) {
        this.poolArea = poolArea;
    }

    public int getFloor() {
        return floor;
    }

    public void setFloor(int floor) {
        this.floor = floor;
    }

    public String getExtraServices() {
        return extraServices;
    }

    public void setExtraServices(String extraServices) {
        this.extraServices = extraServices;
    }
}
