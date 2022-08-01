package repository;

import model.Users;

import java.util.List;

public interface IRepository {
    List<Users> findAll();

    boolean add(Users user);

    boolean update(int id, Users user);

    boolean delete(int id);

    Users findByCountry(String country);

    List<Users> sortByName(String name);
}
