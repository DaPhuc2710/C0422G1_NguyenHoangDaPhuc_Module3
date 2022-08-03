package repository.impl;

import model.Users;
import repository.BaseRepository;
import repository.IRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class RepositoryImpl implements IRepository {


    @Override
    public List<Users> findAll() {
        List<Users> userList = new ArrayList<>();
        String query = "{CALL list_all}";
        Connection connection = BaseRepository.getConnectDB();
        try {
            CallableStatement callableStatement = connection.prepareCall(query);
            ResultSet resultSet = callableStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String country = resultSet.getString("country");
                Users user = new Users(id, name, email, country);
                userList.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return userList;
    }


    @Override
    public void update(Users user) {
        Connection connection = BaseRepository.getConnectDB();
        String query = "{CALL update_list(?,?,?,?)}";
        try {
            CallableStatement callableStatement = connection.prepareCall(query);
            callableStatement.setString(1, user.getName());
            callableStatement.setString(2, user.getEmail());
            callableStatement.setString(3, user.getCountry());
            callableStatement.setInt(4, user.getId());
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void delete(int id) {
        Connection connection = BaseRepository.getConnectDB();
        String query = "{CALL delete_list(?)}";
        try {
            CallableStatement callableStatement = connection.prepareCall(query);
            callableStatement.setInt(1, id);
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    @Override
    public Users getUserById(int id) {
        Users users = null;
        String query = "{CALL find_id(?)}";
        Connection connection = BaseRepository.getConnectDB();
        try {
            CallableStatement callableStatement = connection.prepareCall(query);
            callableStatement.setInt(1, id);
            ResultSet resultSet = callableStatement.executeQuery();
            while (resultSet.next()) {
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String country = resultSet.getString("country");
                users = new Users(id, name, email, country);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }

}