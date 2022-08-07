package service.impl;
import model.ServicesClass;
import repository.IServicesRepository;
import repository.impl.ServicesRepository;
import service.IServiceSerClass;

import java.util.List;

public class ServiceSerClass implements IServiceSerClass {
    IServicesRepository iServicesRepository= new ServicesRepository();
    @Override
    public List<ServicesClass> findAll() {
        return iServicesRepository.findAll();
    }

    @Override
    public void add(ServicesClass servicesClass) {
       iServicesRepository.add(servicesClass);
    }

    @Override
    public void update(ServicesClass servicesClass) {
        iServicesRepository.update(servicesClass);
    }

    @Override
    public void delete(int servicesId) {
        iServicesRepository.delete(servicesId);
    }

    @Override
    public ServicesClass findById(int servicesId) {
        return iServicesRepository.findById(servicesId);
    }
}
