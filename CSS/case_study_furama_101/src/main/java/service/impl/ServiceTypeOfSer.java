package service.impl;

import model.TypeOfServicesClass;
import repository.ITypeOfSerRepository;
import repository.impl.TypeOfSerRepository;
import service.IServiceTypeOfSer;

import java.util.List;

public class ServiceTypeOfSer implements IServiceTypeOfSer {
    ITypeOfSerRepository iTypeOfSerRepository= new TypeOfSerRepository();
    @Override
    public List<TypeOfServicesClass> findAll() {
        return iTypeOfSerRepository.findAll();
    }
}
