package repository.impl;

import model.Product;
import repository.IProductRepository;

import java.util.ArrayList;
import java.util.List;


public class IProductRepositoryImpl implements IProductRepository {
    private static List<Product> productList = new ArrayList<>();

    static {
        productList.add(new Product(1, "Coca", 10000, "Loai nho, mau do", "Vn"));
        productList.add(new Product(2, "Fanta", 10000, "Mau cam, khong calo", "My"));
        productList.add(new Product(3, "Pepsi", 10000, "Loai nho, mau xanh", "Vn"));
        productList.add(new Product(4, "Pepsi", 10000, "Mau den, vi chanh, khong calo", "My"));
    }

    @Override
    public List<Product> findAll() {
        return productList;
    }

    @Override
    public void add(Product product) {
        productList.add(product);
    }

    @Override
    public void update(int id, Product product) {
        for (int i = 0; i < productList.size(); i++) {
            if (productList.get(i).getId() == id) {
                productList.get(i).setId(id);
                productList.get(i).setName(product.getName());
                productList.get(i).setPrice(product.getPrice());
                productList.get(i).setDescription(product.getDescription());
                productList.get(i).setProducer(product.getProducer());
            }
        }
    }

    @Override
    public void delete(int id) {
        for (int i = 0; i < productList.size() ; i++) {
            if (productList.get(i).getId()==id){
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
    public List<Product> findByName(String name) {
        List<Product> productList1= new ArrayList<>();
        for (int i = 0; i <productList.size() ; i++) {
            if (productList.get(i).getName().toLowerCase().contains(name.toLowerCase())){
                productList1.add(productList.get(i));
            }
        }return productList1;
    }
}
