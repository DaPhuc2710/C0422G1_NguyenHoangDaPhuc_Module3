package service;

import model.Users;


import java.util.List;

public interface IService {
    List<Users> findAll();
    void update(Users user);
    void delete(int id);
    Users getUserById(int id);
}
