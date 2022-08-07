package service.impl;

import model.RentTypeCodeClass;
import repository.IRentTypeCodeRepository;

import repository.impl.RentTypeCodeClassRepository;
import service.IServiceRentTypeCodeClass;

import java.util.List;

public class ServiceRentTypeCodeClass implements IServiceRentTypeCodeClass {
    IRentTypeCodeRepository iRentTypeCodeRepository=  new RentTypeCodeClassRepository();
    @Override
    public List<RentTypeCodeClass> findAll() {
        return iRentTypeCodeRepository.findAll();
    }
}
