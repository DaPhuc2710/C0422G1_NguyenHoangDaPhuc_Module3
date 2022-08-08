package service;

import model.Customer;

import java.util.List;
import java.util.Map;

public interface IServiceCustomer {
    List<Customer> findAll();
    void add(Customer customer);
    void update( Customer customer);
    void delete(int customerId);
    Customer findById(int id);
    List<Customer> search(String name);
    Map<String,String> check(Customer customer);
}
