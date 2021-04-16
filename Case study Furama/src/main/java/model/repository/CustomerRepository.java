package model.repository;

import model.bean.Customer;

import java.sql.SQLException;

public interface CustomerRepository {
     void create(Customer customer) throws SQLException;
    Customer findById(int id);
    void deleteCustomer(int id);
    Customer editCustomer(int id , Customer customer);
}
