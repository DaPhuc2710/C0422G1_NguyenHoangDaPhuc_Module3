package repository.impl;

import model.Customer;
import repository.BaseRepository;
import repository.ICustomerRepository;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    private final String SELECT_ALL = "select * from khach_hang ";
    private final String INSERT_INTO = "insert into " +
            "khach_hang(ho_ten,ngay_sinh,gioi_tinh,so_cmnd,so_dien_thoai,email,dia_chi,ma_loai_khach)"+
            "values(?,?,?,?,?,?,?,?)";
    private  final String DELETE="delete from khach_hang where ma_khach_hang=?";
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
                String dOfB = resultSet.getString("ngay_sinh");
                boolean gender = resultSet.getBoolean("gioi_tinh");
                int CMND = resultSet.getInt("so_cmnd");
                int telephone = resultSet.getInt("so_dien_thoai");
                String email = resultSet.getString("email");
                String address = resultSet.getString("dia_chi");
                Customer customer = new Customer(customerId, customerCodeType, name, dOfB, gender, CMND, telephone, email, address);
                customerList.add(customer);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerList;
    }

    @Override
    public void add(Customer customer) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement=connection.prepareStatement(INSERT_INTO);
            preparedStatement.setString(1,customer.getName());
            preparedStatement.setString(2,customer.getdOfB());
            preparedStatement.setBoolean(3,customer.isGender());
            preparedStatement.setInt(4,customer.getCMND());
            preparedStatement.setInt(5,customer.getTelephone());
            preparedStatement.setString(6,customer.getEmail());
            preparedStatement.setString(7,customer.getAddress());
            preparedStatement.setInt(8,customer.getCustomerCodeType());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void update(int customerId, Customer customer) {

    }

    @Override
    public void delete(int customerId) {
        Connection connection= BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement =connection.prepareStatement(DELETE);
            preparedStatement.setInt(1,customerId);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
    @Override
    public Customer findById(int id) {

return null;
    }
}
