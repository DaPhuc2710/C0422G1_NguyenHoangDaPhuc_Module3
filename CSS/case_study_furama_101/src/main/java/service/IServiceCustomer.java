package service;

import model.Customer;

import java.util.List;

public interface IServiceCustomer {
    List<Customer> findAll();
    void add(Customer customer);
    void update(int customerId, Customer customer);
    void delete(int customerCodeType);
}
