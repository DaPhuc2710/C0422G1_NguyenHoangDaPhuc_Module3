package repository;

import model.ServicesClass;

import java.util.List;

public interface IServicesRepository {
    List<ServicesClass> findAll();
    void add(ServicesClass servicesClass);
    void update( ServicesClass servicesClass);
    void delete(int servicesId);
    ServicesClass findById(int servicesId);
}
