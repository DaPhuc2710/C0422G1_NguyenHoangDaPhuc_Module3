package service;

import model.customer.CustomerType;

import java.util.List;

public interface IServiceType {
    List<CustomerType> findAll();
}
