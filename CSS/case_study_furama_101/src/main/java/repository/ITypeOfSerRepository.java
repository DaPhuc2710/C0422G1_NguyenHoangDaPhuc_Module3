package repository;

import model.TypeOfServicesClass;

import java.util.List;

public interface ITypeOfSerRepository {
    List<TypeOfServicesClass> findAll();
}
