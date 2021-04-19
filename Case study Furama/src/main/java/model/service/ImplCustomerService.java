package model.service;

import model.bean.Customer;
import model.repository.CustomerRepository;
import model.repository.IplmCustomerRepository;

import java.sql.SQLException;
import java.util.List;

public class ImplCustomerService implements CustomerService {
    CustomerRepository customerRepository = new IplmCustomerRepository();

    @Override
    public void create(Customer customer) throws SQLException {
        customerRepository.create(customer);
    }

    @Override
    public List<Customer> showAllCustomer() {
        return customerRepository.showAllCustomer();
    }

    @Override
    public Customer findById(int id) {
        return customerRepository.findById(id);
    }

    @Override
    public List<Customer> findByName(String name) {
        return customerRepository.findByName(name);
    }

    @Override
    public void deleteCustomer(int id) {
        customerRepository.deleteCustomer(id);
    }

    @Override
    public Customer editCustomer(int id, Customer customer) {
        return null;
    }
}
