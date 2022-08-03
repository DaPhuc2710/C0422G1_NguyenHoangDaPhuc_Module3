package service.impl;

import model.Users;
import repository.IRepository;
import repository.impl.RepositoryImpl;
import service.IService;


import java.util.List;

public class ServiceImpl implements IService {
    IRepository iRepository = new RepositoryImpl();

    @Override
    public List<Users> findAll() {
        return iRepository.findAll();
    }

    @Override
    public void add(Users user) {
        iRepository.add(user);
    }

    @Override
    public void update(int id, Users user) {
        iRepository.update(id, user);
    }

    @Override
    public void delete(int id) {
        iRepository.delete(id);
    }

    @Override
    public List<Users> findByCountry(String country) {
        return iRepository.findByCountry(country);
    }

    @Override
    public List<Users> sortByName() {
        return iRepository.sortByName();
    }

    @Override
    public List<Users> getUserById(int id) {
        return iRepository.getUserById(id);
    }

    @Override
    public void insertUserStore(Users user) {
        iRepository.insertUserStore(user);
    }


}
