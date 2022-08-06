package repository;

import model.customer.CustomerType;

import java.util.List;

public interface IRepositoryType {
    List<CustomerType> findAll();
}
