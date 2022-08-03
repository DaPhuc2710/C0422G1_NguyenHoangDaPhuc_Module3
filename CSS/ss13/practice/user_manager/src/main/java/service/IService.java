package service;

import model.Users;


import java.util.List;

public interface IService {
    List<Users> findAll();
    void add(Users user);
    void update(int id, Users user);
    void delete(int id);
    List<Users> findByCountry(String country);
    List<Users> sortByName();
    List<Users> getUserById(int id);
    void insertUserStore(Users user) ;
}
