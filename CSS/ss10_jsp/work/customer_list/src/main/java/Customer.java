import java.time.LocalDate;

public class Customer {
    String name;
    LocalDate dOfB;
    String address;
    String picture;

    public Customer() {
    }

    public Customer(String name, LocalDate dOfB, String address, String picture) {
        this.name = name;
        this.dOfB = dOfB;
        this.address = address;
        this.picture = picture;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }
}
