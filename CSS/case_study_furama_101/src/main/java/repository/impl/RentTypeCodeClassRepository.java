package repository.impl;
import model.RentTypeCodeClass;
import repository.BaseRepository;
import repository.IRentTypeCodeRepository;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RentTypeCodeClassRepository implements IRentTypeCodeRepository {
    private final String SELECT_ALL = "select * from kieu_thue";

    @Override
    public List<RentTypeCodeClass> findAll() {
        List<RentTypeCodeClass> rentTypeCodeClassList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int rentTypeCode = resultSet.getInt("ma_kieu_thue");
                String rentTypeName= resultSet.getString("ten_kieu_thue");
                RentTypeCodeClass rentTypeCodeClass= new RentTypeCodeClass(rentTypeCode,rentTypeName);
                rentTypeCodeClassList.add(rentTypeCodeClass);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rentTypeCodeClassList;

    }
}
