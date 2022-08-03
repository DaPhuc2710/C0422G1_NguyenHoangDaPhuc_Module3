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
    public void update(Users user) {
        iRepository.update( user);
    }

    @Override
    public void delete(int id) {
        iRepository.delete(id);
    }

    @Override
    public Users getUserById(int id) {
        return iRepository.getUserById(id);
    }


}
