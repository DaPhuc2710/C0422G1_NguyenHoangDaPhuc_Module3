package respository.impl;

import model.Product;
import respository.IProductRespository;

import java.util.ArrayList;
import java.util.List;

public class ProductRespositoryImpl implements IProductRespository {
    private static List<Product> productList = new ArrayList<>();

    static {
        productList.add(new Product(1, "Giày Adidas", 50000, "Xanh, limited", "Đức"));
        productList.add(new Product(2, "Giày Nike", 50000, "Đỏ, limited", "Pháp"));
        productList.add(new Product(3, "Giày Adidas", 50000, "Đỏ, limited", "Đức"));
        productList.add(new Product(4, "Giày Nike", 50000, "Đỏ, limited", "Đức"));
        productList.add(new Product(5, "Giày Nike", 50000, "Đỏ, limited", "Mĩ"));
    }

    @Override
    public List<Product> findAll() {
        // kết nối dabase
        // trả về 1 list
        return productList;
    }

    @Override
    public void add(Product product) {
        productList.add(product);

    }

    @Override
    public void update(int id, Product product) {
        for (int i = 0; i < productList.size(); i++) {
            if (id == productList.get(i).getId()) {
                productList.get(i).setId(id);
                productList.get(i).setName(product.getName());
                productList.get(i).setPrice(product.getPrice());
                productList.get(i).setDescription(product.getDescription());
                productList.get(i).setProducer(product.getProducer());
            }
        }
    }

    @Override
    public void remove(int id) {
        for (int i = 0; i < productList.size(); i++) {
            if (id == productList.get(i).getId()) {
                productList.remove(productList.get(i));
            }
        }
    }

    @Override
    public Product findById(int id) {
        for (int i = 0; i < productList.size(); i++) {
            if (id == productList.get(i).getId()) {
                return productList.get(i);
            }
        }
        return null;
    }

    @Override
    public Product findByName(String name) {
        for (int i = 0; i < productList.size(); i++) {
            if (productList.get(i).getName().equals(name)) {
                return productList.get(i);
            }
        }
        return null;
    }
}
