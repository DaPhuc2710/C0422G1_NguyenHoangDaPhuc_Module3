package repository;

import model.RentTypeCodeClass;

import java.util.List;

public interface IRentTypeCodeRepository {
    List<RentTypeCodeClass> findAll();
}
