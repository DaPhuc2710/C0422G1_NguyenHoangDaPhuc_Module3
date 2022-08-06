package repository;

import model.Customer;

import java.util.List;

public interface ICustomerRepository {
    List<Customer> findAll();
    void add(Customer customer);
    void update(int customerId, Customer customer);
    void delete(int customerCodeType);
}
