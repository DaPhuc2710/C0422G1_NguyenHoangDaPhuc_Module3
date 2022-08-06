package repository;

import model.customer.Customer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class Repository implements IRepository{
    private  final String SELECT_ALL = "";

    @Override
    public List<Customer> findAll() {
//        List<Customer> customerList = new ArrayList<>();
//
//        Connection connection = BaseRepository.getConnectDB();
//        try {
//            PreparedStatement preparedStatement = connection.prepareStatement("SELECT_ALL");
//            ResultSet resultSet = preparedStatement.executeQuery();
//            while (resultSet.next()) {
//                int customerId = resultSet.getInt("customerId");
//                int customerCodeType = resultSet.getInt("customerCodeType");
//                String name = resultSet.getString("name");
//                LocalDate dOfB=LocalDate.parse(resultSet.getString("dOfB"));
//                boolean gender=resultSet.getBoolean("gender");
//                int CMND = resultSet.getInt("CMND");
//                int telephone = resultSet.getInt("telephone");
//                String email=resultSet.getString("email");
//                String address=resultSet.getString("address");
//                Customer customer= new Customer(customerId,customerCodeType,name,dOfB,gender,CMND,telephone,email,address);
//                customerList.add(customer);
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return customerList;


    }

    @Override
    public void add(Customer customer) {


    }

    @Override
    public void update(int customerId, Customer customer) {

    }

    @Override
    public void delete(int customerCodeType) {

    }
}
