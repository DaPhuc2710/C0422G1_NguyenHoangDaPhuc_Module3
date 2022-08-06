package repository.impl;

import model.CustomerTypeTable;
import repository.BaseRepository;
import repository.ICustomerTypeRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerTypeRepository implements ICustomerTypeRepository {
    private final String SELECT_ALL="select * from loai_khach ";
    @Override
    public List<CustomerTypeTable> findAll() {
        List<CustomerTypeTable> customerTypeTables= new ArrayList<>();
        Connection collection= BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement= collection.prepareStatement(SELECT_ALL);
            ResultSet resultSet= preparedStatement.executeQuery();
            while (resultSet.next()){
                int customerCodeType= resultSet.getInt("ma_loai_khach");
                String typeCustomerName=resultSet.getString("ten_loai_khach");
                CustomerTypeTable customerTypeTable= new CustomerTypeTable(customerCodeType,typeCustomerName);
                customerTypeTables.add(customerTypeTable);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerTypeTables;

    }
}
