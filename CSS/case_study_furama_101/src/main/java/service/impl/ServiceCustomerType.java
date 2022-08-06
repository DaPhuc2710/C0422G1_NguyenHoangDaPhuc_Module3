package service.impl;

import model.Customer;
import model.CustomerTypeTable;
import repository.ICustomerTypeRepository;
import repository.impl.CustomerTypeRepository;
import service.IServiceCustomerType;

import java.util.List;

public class ServiceCustomerType implements IServiceCustomerType{
    ICustomerTypeRepository iCustomerTypeRepository= new CustomerTypeRepository();
    @Override
    public List<CustomerTypeTable> findAll() {
        return iCustomerTypeRepository.findAll();
    }
}
