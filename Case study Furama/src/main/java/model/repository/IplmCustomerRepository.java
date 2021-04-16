package model.repository;

import model.bean.Customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class IplmCustomerRepository implements CustomerRepository {
    private String jdbcURL = "jdbc:mysql://localhost:3306/furama_management?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "12345678";

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }

    @Override
    public void create(Customer customer) throws SQLException {
        Connection connection = getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement
                ("insert into customer(customer_id,customer_type_id,customer_name,customer_birthday,customer_gender,customer_id_card,customer_phone,customer_email,customer_address)\n" +
                        "value\n" +
                        "(?,?,?,?,?,?,?,?,?)");
        preparedStatement.setInt(1, customer.getId());
        preparedStatement.setInt(2, customer.getTypeId());
        preparedStatement.setString(3, customer.getName());
        preparedStatement.setString(4, customer.getBirthDay());
        preparedStatement.setInt(5, customer.isGender());
        preparedStatement.setString(6, customer.getIdCard());
        preparedStatement.setString(7, customer.getPhoneNumber());
        preparedStatement.setString(8, customer.getEmail());
        preparedStatement.setString(9, customer.getAddress());
        preparedStatement.execute();
    }

    @Override
    public Customer findById(int id) {
        return null;
    }

    @Override
    public void deleteCustomer(int id) {

    }

    @Override
    public Customer editCustomer(int id, Customer customer) {
        return null;
    }
}
