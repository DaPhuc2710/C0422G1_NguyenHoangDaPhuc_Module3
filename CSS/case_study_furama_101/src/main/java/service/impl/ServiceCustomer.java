package service.impl;

import model.Customer;
import repository.ICustomerRepository;
import repository.impl.CustomerRepository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ServiceCustomer implements service.IServiceCustomer {
    ICustomerRepository repository = new CustomerRepository();

    @Override
    public List<Customer> findAll() {
        return repository.findAll();
    }

    @Override
    public void add(Customer customer) {
        repository.add(customer);

    }

    @Override
    public void update(Customer customer) {
        repository.update(customer);

    }

    @Override
    public void delete(int customerId) {
        repository.delete(customerId);

    }

    @Override
    public Customer findById(int id) {
        return repository.findById(id);
    }

    @Override
    public List<Customer> search(String name) {
        return repository.search(name);
    }

    @Override
    public Map<String, String> check(Customer customer) {
        Map<String, String> errorMap = new HashMap<>();

        if (!customer.getName().isEmpty()) {
            if (!customer.getName().matches("^[A-Z][a-z]*(\\s[A-Z][a-z]+)*$")) {
                errorMap.put("name", "Nhập không đúng format");
            }
        } else {
            errorMap.put("name", "Không được để ô trống");
        }

//        if (!customer.getdOfB().isEmpty()) {
//            if (!customer.getdOfB().matches("^\\d{2}/\\d{2}/\\d{4}$")) {
//                errorMap.put("dOfB", " Nhập không đúng format (Định dạngđ/mm/yyyy)");
//            }
//        } else {
//            errorMap.put("dOfB", "Không được để ô trống (Định dạngđ/mm/yyyy)");
//        }

        if (!(customer.getCMND().isEmpty())) {
            if (!customer.getCMND().matches("^[0-9]{9}$")) {
                errorMap.put("CMND", "Nhập không đúng format hoặc không đủ 9 số");
            }
        } else {
            errorMap.put("CMND", "Không được để ô trống (9 số)");
        }


        if (!(customer.getTelephone().isEmpty())) {
            if (!customer.getTelephone().matches("^(84|0)(91|90)[0-9]{7}$")) {
                errorMap.put("telephone", "Nhập không đúng format (Định dạng (84)+91xxxxxxx)");
            }
        } else {
            errorMap.put("telephone", "Không được để ô trống (Định dạng (84)+91xxxxxxx)");
        }


        if (!(customer.getEmail().isEmpty())) {
            if (!customer.getEmail().matches("^[A-Za-z0-9]+[A-Za-z0-9]*@[A-Za-z0-9]+(\\.[A-Za-z]+)$")) {
                errorMap.put("email", "Nhập không đúng format");
            }
        } else {
            errorMap.put("email", "Không được để ô trống");
        }


//        if (!(customer.getAddress().isEmpty())) {
//            if (!customer.getAddress().matches("^[0-9]{1,4}+(\\s[A-Z][a-z]*)+$")) {
//                errorMap.put("address", "Nhập không đúng format");
//            }
//        } else {
//            errorMap.put("address", "Không được để ô trống");
//        }
        return errorMap;
    }
}
