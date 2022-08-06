package repository;

import model.customer.Customer;

import java.util.List;

public interface IRepository {
    List<Customer> findAll();
    void add(Customer customer);
    void update(int customerId, Customer customer);
    void delete(int customerCodeType);
}
