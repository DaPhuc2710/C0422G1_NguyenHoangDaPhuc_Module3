package service;

import model.Customer;

import java.util.List;

public interface IServiceCustomer {
    List<Customer> findAll();
    void add(Customer customer);
    void update( Customer customer);
    void delete(int customerId);
    Customer findById(int id);
}
