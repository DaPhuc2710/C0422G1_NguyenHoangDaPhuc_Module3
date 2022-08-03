package repository;

import model.Users;

import java.sql.SQLException;
import java.util.List;

public interface IRepository {
    List<Users> findAll();

    boolean add(Users user);

    boolean update(int id, Users user);

    boolean delete(int id);

    List<Users> findByCountry(String country);

    List<Users> sortByName();

    List<Users> getUserById(int id);

    void insertUserStore(Users user);
}
