package service.impl;

import model.Customer;
import repository.ICustomerRepository;
import repository.impl.CustomerRepository;

import java.util.List;

public class ServiceCustomer implements service.IServiceCustomer {
    ICustomerRepository repository= new CustomerRepository();
    @Override
    public List<Customer> findAll() {
        return repository.findAll();
    }

    @Override
    public void add(Customer customer) {

    }

    @Override
    public void update(int customerId, Customer customer) {

    }

    @Override
    public void delete(int customerCodeType) {

    }
}
