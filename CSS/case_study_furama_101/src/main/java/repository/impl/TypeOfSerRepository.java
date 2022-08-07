package repository.impl;

import model.TypeOfServicesClass;
import repository.BaseRepository;
import repository.ITypeOfSerRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TypeOfSerRepository implements ITypeOfSerRepository {
    private final String SELECT_ALL = "select * from loai_dich_vu";

    @Override
    public List<TypeOfServicesClass> findAll() {
        List<TypeOfServicesClass> typeOfServicesClassList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int servicesTypeCode = resultSet.getInt("ma_loai_dich_vu");
                String servicesTypeName = resultSet.getString("ten_loai_dich_vu");
                TypeOfServicesClass typeOfServicesClass = new TypeOfServicesClass(servicesTypeCode, servicesTypeName);
                typeOfServicesClassList.add(typeOfServicesClass);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return typeOfServicesClassList;
    }
}
