package repository.impl;

import model.ServicesClass;
import repository.BaseRepository;
import repository.IServicesRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ServicesRepository implements IServicesRepository {
    private final String SELECT_ALL = "select * from dich_vu";
    private final String ADD = "insert into dich_vu(ten_dich_vu,dien_tich,chi_phi_thue,so_nguoi_toi_da,ma_kieu_thue,ma_loai_dich_vu,tieu_chuan_phong,mo_ta_tien_nghi_khach,dien_tich_ho_boi,so_tang,dich_vu_mien_phi_di_kem)"
            + "values(?,?,?,?,?,?,?,?,?,?,?)";
    private final String DELETE = "delete from dich_vu where ma_dich_vu = ?";
    private final String FIND_BY_ID = "select * from dich_vu where ma_dich_vu = ?";
    private final String EDIT = "update dich_vu set ten_dich_vu =?,dien_tich =?" +
            ",chi_phi_thue =?, so_nguoi_toi_da =?, ma_kieu_thue =?, ma_loai_dich_vu =?," +
            " tieu_chuan_phong =?,mo_ta_tien_nghi_khach =?,dien_tich_ho_boi =?,so_tang =?," +
            "dich_vu_mien_phi_di_kem=? where ma_dich_vu=?;";
    private final String SEARCH = "select * from dich_vu where ten_dich_vu like ? ";

    @Override
    public List<ServicesClass> findAll() {
        List<ServicesClass> servicesClasses = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int servicesId = resultSet.getInt("ma_dich_vu");
                String name = resultSet.getString("ten_dich_vu");
                double area = resultSet.getDouble("dien_tich");
                double cost = resultSet.getDouble("chi_phi_thue");
                int maxPeople = resultSet.getInt("so_nguoi_toi_da");
                int rentTypeCode = resultSet.getInt("ma_kieu_thue");
                int servicesTypeCode = resultSet.getInt("ma_loai_dich_vu");
                String quality = resultSet.getString("tieu_chuan_phong");
                String description = resultSet.getString("mo_ta_tien_nghi_khach");
                double poolArea = resultSet.getDouble("dien_tich_ho_boi");
                int floor = resultSet.getInt("so_tang");
                String extraServices = resultSet.getString("dich_vu_mien_phi_di_kem");
                ServicesClass servicesClass = new ServicesClass(servicesId, name, area, cost, maxPeople, rentTypeCode, servicesTypeCode, quality, description, poolArea, floor, extraServices);
                servicesClasses.add(servicesClass);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return servicesClasses;
    }

    @Override
    public void add(ServicesClass servicesClass) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(ADD);
            preparedStatement.setString(1, servicesClass.getName());
            preparedStatement.setDouble(2, servicesClass.getArea());
            preparedStatement.setDouble(3, servicesClass.getCost());
            preparedStatement.setInt(4, servicesClass.getMaxPeople());
            preparedStatement.setInt(5, servicesClass.getRentTypeCode());
            preparedStatement.setInt(6, servicesClass.getServicesTypeCode());
            preparedStatement.setString(7, servicesClass.getQuality());
            preparedStatement.setString(8, servicesClass.getDescription());
            preparedStatement.setDouble(9, servicesClass.getPoolArea());
            preparedStatement.setInt(10, servicesClass.getFloor());
            preparedStatement.setString(11, servicesClass.getExtraServices());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void update(ServicesClass servicesClass) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(EDIT);
            preparedStatement.setString(1, servicesClass.getName());
            preparedStatement.setString(2, String.valueOf(servicesClass.getArea()));
            preparedStatement.setDouble(3, servicesClass.getCost());
            preparedStatement.setInt(4, servicesClass.getMaxPeople());
            preparedStatement.setInt(5, servicesClass.getRentTypeCode());
            preparedStatement.setInt(6, servicesClass.getServicesTypeCode());
            preparedStatement.setString(7, servicesClass.getQuality());
            preparedStatement.setString(8, servicesClass.getDescription());
            preparedStatement.setDouble(9, servicesClass.getPoolArea());
            preparedStatement.setInt(10, servicesClass.getFloor());
            preparedStatement.setString(11, servicesClass.getExtraServices());
            preparedStatement.setInt(12, servicesClass.getServicesId());

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void delete(int servicesId) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE);
            preparedStatement.setInt(1, servicesId);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public ServicesClass findById(int servicesId) {
        ServicesClass servicesClass = null;
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_ID);
            preparedStatement.setInt(1, servicesId);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String name = resultSet.getString("ten_dich_vu");
                double area = resultSet.getDouble("dien_tich");
                double cost = resultSet.getDouble("chi_phi_thue");
                int maxPeople = resultSet.getInt("so_nguoi_toi_da");
                int rentTypeCode = resultSet.getInt("ma_kieu_thue");
                int servicesTypeCode = resultSet.getInt("ma_loai_dich_vu");
                String quality = resultSet.getString("tieu_chuan_phong");
                String description = resultSet.getString("mo_ta_tien_nghi_khach");
                double poolArea = resultSet.getDouble("dien_tich_ho_boi");
                int floor = resultSet.getInt("so_tang");
                String extraServices = resultSet.getString("dich_vu_mien_phi_di_kem");
                servicesClass = new ServicesClass(servicesId, name, area, cost, maxPeople, rentTypeCode, servicesTypeCode, quality, description, poolArea, floor, extraServices);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return servicesClass;
    }

    @Override
    public List<ServicesClass> search(String name) {
        List<ServicesClass> servicesClassList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SEARCH);
            preparedStatement.setString(1, "%" + name + "%");
            ResultSet resultSet = preparedStatement.executeQuery();
            while ((resultSet.next())) {
                int servicesId = resultSet.getInt("ma_dich_vu");
                String name1 = resultSet.getString("ten_dich_vu");
                double area = resultSet.getDouble("dien_tich");
                double cost = resultSet.getDouble("chi_phi_thue");
                int maxPeople = resultSet.getInt("so_nguoi_toi_da");
                int rentTypeCode = resultSet.getInt("ma_kieu_thue");
                int servicesTypeCode = resultSet.getInt("ma_loai_dich_vu");
                String quality = resultSet.getString("tieu_chuan_phong");
                String description = resultSet.getString("mo_ta_tien_nghi_khach");
                double poolArea = resultSet.getDouble("dien_tich_ho_boi");
                int floor = resultSet.getInt("so_tang");
                String extraServices = resultSet.getString("dich_vu_mien_phi_di_kem");
                ServicesClass servicesClass = new ServicesClass(servicesId, name1, area, cost, maxPeople, rentTypeCode, servicesTypeCode, quality, description, poolArea, floor, extraServices);
                servicesClassList.add(servicesClass);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return servicesClassList;
    }
}
