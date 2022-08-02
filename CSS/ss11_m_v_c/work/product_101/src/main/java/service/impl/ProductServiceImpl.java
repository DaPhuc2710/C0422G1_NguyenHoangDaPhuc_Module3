package service.impl;

import model.Product;
import repository.IProductRepository;
import repository.impl.IProductRepositoryImpl;
import service.IProductService;

import java.util.List;

public class ProductServiceImpl implements IProductService {
    IProductRepository IProductRepository = new IProductRepositoryImpl();

    @Override
    public List<Product> findAll() {
        return IProductRepository.findAll();
    }

    @Override
    public void add(Product product) {
        IProductRepository.add(product);
    }

    @Override
    public void update(int id, Product product) {
        IProductRepository.update(id, product);
    }

    @Override
    public void delete(int id) {
        IProductRepository.delete(id);
    }

    @Override
    public Product findById(int id) {
        return IProductRepository.findById(id);
    }

    @Override
    public List<Product> findByName(String name) {
        return IProductRepository.findByName(name);
    }
}
