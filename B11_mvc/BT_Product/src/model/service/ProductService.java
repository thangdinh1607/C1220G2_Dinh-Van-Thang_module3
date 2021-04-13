package model.service;

import model.bean.Product;

import java.util.List;

public interface ProductService {
    List<Product> findAllProduct();
    Product create(Product product);
    void update(int id , Product product);
    void delete(int id);
    Product findById(int id);
    Product findByName();
}
