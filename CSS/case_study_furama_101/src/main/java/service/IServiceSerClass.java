package service;

import model.Customer;
import model.ServicesClass;

import java.util.List;
import java.util.Map;

public interface IServiceSerClass {
    List<ServicesClass> findAll();
    void add(ServicesClass servicesClass);
    void update( ServicesClass servicesClass);
    void delete(int servicesId);
    ServicesClass findById(int servicesId);
    List<ServicesClass>search(String name);
    Map<String,String>check(ServicesClass servicesClass);
}
