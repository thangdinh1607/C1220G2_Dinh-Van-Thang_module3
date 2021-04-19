package model.service;

import model.bean.Customer;

import java.sql.SQLException;
import java.util.List;

public interface CustomerService {
    void create(Customer customer) throws SQLException;
    List<Customer> showAllCustomer();
    Customer findById(int id);
    List<Customer> findByName(String name);
    void deleteCustomer(int id);
    Customer editCustomer(int id , Customer customer);
}
