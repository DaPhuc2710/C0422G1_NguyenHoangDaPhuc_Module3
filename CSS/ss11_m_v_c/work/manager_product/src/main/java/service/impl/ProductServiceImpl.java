package service.impl;

import model.Product;
import respository.IProductRespository;
import respository.impl.ProductRespositoryImpl;
import service.IProductService;

import java.util.List;

public class ProductServiceImpl implements IProductService {
    IProductRespository productRespository = new ProductRespositoryImpl();

    @Override
    public List<Product> findAll() {
        return productRespository.findAll();
    }

    @Override
    public void add(Product product) {
        // validate dữ liệu chô này
        // nêu ok thì thêm mới
        productRespository.add(product);
    }

    @Override
    public void update(int id, Product product) {
        productRespository.update(id, product);

    }

    @Override
    public void remove(int id) {
        productRespository.remove(id);
    }

    @Override
    public Product findById(int id) {

        return productRespository.findById(id);
    }

    @Override
    public Product findByName(String name) {
        return productRespository.findByName(name);
    }
}
