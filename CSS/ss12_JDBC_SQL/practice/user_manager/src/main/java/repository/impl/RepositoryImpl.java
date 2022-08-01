package repository.impl;

import model.Users;
import repository.BaseRepository;
import repository.IRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RepositoryImpl implements IRepository {
    private final String SELECT_ALL = "select * from users";
    private final String INSERT_INTO = "insert into users (name, email, country)" + "value(?,?,?)";
    private final String SET_USER = "update users set name=?,email=?,country=? where id=?";
    private final String DETELE_FROM = "delete from users where id=?";
    private final String FIND_COUNTRY = "select * from users where country = ?";


    @Override
    public List<Users> findAll() {
        List<Users> userList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL);
            ResultSet resultSet = preparedStatement.executeQuery();
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
    public boolean add(Users user) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_INTO);
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getCountry());
            int check = preparedStatement.executeUpdate();
            return (check == 1);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean update(int id, Users user) {
        Connection connection= BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement= connection.prepareStatement(SET_USER);
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getCountry());
            preparedStatement.setInt(4, id);
            int check = preparedStatement.executeUpdate();
            return (check == 1);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
            Connection connection= BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement= connection.prepareStatement(DETELE_FROM);
            preparedStatement.setInt(1, id);
            int check = preparedStatement.executeUpdate();
            return (check == 1);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    @Override
    public Users findByCountry(String country) {
        List<Users> userList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement=connection.prepareStatement(FIND_COUNTRY);
            preparedStatement.setString(1, country);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String country1 = resultSet.getString("country");
                Users user = new Users(id, name, email, country);
               userList.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public List<Users> sortByName(String name) {
        return null;
    }
}
