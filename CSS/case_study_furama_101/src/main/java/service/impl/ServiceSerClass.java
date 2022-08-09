package service.impl;

import model.Customer;
import model.ServicesClass;
import repository.IServicesRepository;
import repository.impl.ServicesRepository;
import service.IServiceSerClass;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ServiceSerClass implements IServiceSerClass {
    IServicesRepository iServicesRepository = new ServicesRepository();

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

    @Override
    public List<ServicesClass> search(String name) {
        return iServicesRepository.search(name);
    }

    @Override
    public Map<String, String> check(ServicesClass servicesClass) {
        Map<String, String> errorMap = new HashMap<>();
        if (!servicesClass.getName().isEmpty()) {
            if (!servicesClass.getName().matches("^([A-Z][a-z0-1]*)+(\\s[A-Z0-9][a-z0-9]*)*$")) {
                errorMap.put("name", "Mời nhập đúng format");
            }
        } else {
            errorMap.put("name", "Không được để trống");
        }
        if (servicesClass.getFloor() < 0) {
            errorMap.put("floor", "Sai định dạng hoặc không phải là số nguyên dương");
        }
        String poolArea= servicesClass.getPoolArea()+"";

        if (servicesClass.getArea() < 0) {
            errorMap.put("area", "Sai định dạng hoặc không phải là số nguyên dương");
        }
        if (servicesClass.getPoolArea() < 0) {
            errorMap.put("poolArea", "Sai định dạng hoặc không phải là số nguyên dương");
        }
        return errorMap;
    }
}
