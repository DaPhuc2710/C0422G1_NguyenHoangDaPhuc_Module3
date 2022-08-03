package repository;

import model.Users;


import java.util.List;

public interface IRepository {
    List<Users> findAll();

   void update( Users user);

    void delete(int id);

    Users getUserById(int id);

}
