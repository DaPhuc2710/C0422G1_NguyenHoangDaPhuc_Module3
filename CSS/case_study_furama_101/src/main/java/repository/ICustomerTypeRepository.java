package repository;

import model.CustomerTypeTable;

import java.util.List;

public interface ICustomerTypeRepository {
    List<CustomerTypeTable> findAll();

}
