package service;

import model.Customer;
import model.ServicesClass;

import java.util.List;

public interface IServiceSerClass {
    List<ServicesClass> findAll();
    void add(ServicesClass servicesClass);
    void update( ServicesClass servicesClass);
    void delete(int servicesId);
    ServicesClass findById(int servicesId);
}
