package model.service;

import model.bean.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "John", 100.0 ,"1BAnh","Toyota1"));
        products.put(2, new Product(2, "Thang", 100.0 ,"2BAnh","Toyota2"));
        products.put(3, new Product(3, "Gau", 100.0 ,"3BAnh","Toyota3"));
        products.put(4, new Product(4, "meo", 100.0 ,"4BAnh","Toyota4"));
        products.put(5, new Product(5, "hehe", 100.0 ,"5BAnh","Toyota5"));

    }
    @Override
    public List<Product> findAllProduct() {
        return new ArrayList<>(products.values());
    }

    @Override
    public Product create(Product product) {
        return products.put(product.getId(),product);
    }

    @Override
    public void update(int id , Product product) {
        products.put(id,product);
    }

    @Override
    public void delete(int id) {
products.remove(id);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public Product findByName() {
        return null;
    }


}
