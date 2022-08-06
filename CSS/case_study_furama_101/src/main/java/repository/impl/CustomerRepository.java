package repository.impl;

import model.Customer;
import repository.BaseRepository;
import repository.ICustomerRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    private final String SELECT_ALL="select * from khach_hang ";
    @Override
    public List<Customer> findAll() {
        List<Customer> customerList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int customerId = resultSet.getInt("ma_khach_hang");
                int customerCodeType = resultSet.getInt("ma_loai_khach");
                String name = resultSet.getString("ho_ten");
                LocalDate dOfB=LocalDate.parse(resultSet.getString("ngay_sinh"));
                boolean gender=resultSet.getBoolean("gioi_tinh");
                int CMND = resultSet.getInt("so_cmnd");
                int telephone = resultSet.getInt("so_dien_thoai");
                String email=resultSet.getString("email");
                String address=resultSet.getString("dia_chi");
                Customer customer= new Customer(customerId,customerCodeType,name,dOfB,gender,CMND,telephone,email,address);
                customerList.add(customer);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerList;
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
