package service;
import model.CustomerTypeTable;

import java.util.List;

public interface IServiceCustomerType {
    List<CustomerTypeTable> findAll();
}
