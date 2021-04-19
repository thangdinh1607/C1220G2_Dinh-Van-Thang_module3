package model.repository;

import model.bean.Customer;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

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
                ("insert into customer(customer_type_id,customer_name," +
                        "customer_birthday,customer_gender,customer_id_card," +
                        "customer_phone,customer_email,customer_address)\n" +
                        "value\n" +
                        "(?,?,?,?,?,?,?,?)");
//        preparedStatement.setInt(1, customer.getId());
        preparedStatement.setInt(1, customer.getTypeId());
        preparedStatement.setString(2, customer.getName());
        preparedStatement.setString(3, customer.getBirthDay());
        preparedStatement.setInt(4, customer.isGender());
        preparedStatement.setString(5, customer.getIdCard());
        preparedStatement.setString(6, customer.getPhoneNumber());
        preparedStatement.setString(7, customer.getEmail());
        preparedStatement.setString(8, customer.getAddress());
        preparedStatement.execute();
    }

    @Override
    public List<Customer> showAllCustomer() {
        List<Customer> customerList = new ArrayList<>();
        Customer customer = null;
        Connection connection = getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet resultset = null;
        try {
            preparedStatement = connection.prepareStatement
                    ("select*\n" +
                            "from customer");
            preparedStatement.executeQuery();
            resultset = preparedStatement.getResultSet();
            while (resultset.next()) {
                int id = resultset.getInt("Customer_id");
                int typeCustomer = resultset.getInt("customer_type_id");
                String name = resultset.getString("customer_name");
                String birthDay = resultset.getString("customer_birthday");
                int gender = resultset.getInt("customer_gender");
                String idCard = resultset.getString("customer_id_card");
                String phoneNumber = resultset.getString("customer_phone");
                String email = resultset.getString("customer_email");
                String address = resultset.getString("customer_address");

                customer = new Customer(id, typeCustomer, name, birthDay, gender, idCard, phoneNumber, email, address);
                customerList.add(customer);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }


        return customerList;
    }

    @Override
    public Customer findById(int id) {
        Connection connection = getConnection();
        Customer customer = null;
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement
                    ("select *\n" +
                            "from customer\n" +
                            "where customer_id = ?");
            preparedStatement.setInt(1, id);
            preparedStatement.executeQuery();
            ResultSet resultSet = preparedStatement.getResultSet();
            resultSet.next();

            int id1 = resultSet.getInt("customer_id");
            int typeCustomer = resultSet.getInt("customer_type_id");
            String name = resultSet.getString("customer_name");
            String birthDay = resultSet.getString("customer_birthday");
            int gender = resultSet.getInt("customer_gender");
            String idCard = resultSet.getString("customer_id_card");
            String phoneNumber = resultSet.getString("customer_phone");
            String email = resultSet.getString("customer_email");
            String address = resultSet.getString("customer_address");
            customer = new Customer(id1, typeCustomer, name, birthDay, gender, idCard, phoneNumber, email, address);


        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customer;
    }

    @Override
    public List<Customer> findByName(String nameInput) {
        List<Customer> customerList = new ArrayList<>();
        Customer customer = null;
        Connection connection = getConnection();
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement
                    ("select *\n" +
                            "from customer\n" +
                            "where customer_name like ?");

            preparedStatement.setString(1, "%" + nameInput + "%");

            preparedStatement.execute();
            ResultSet resultSet = preparedStatement.getResultSet();
            while (resultSet.next()) {
                int id1 = resultSet.getInt("customer_id");
                int typeCustomer = resultSet.getInt("customer_type_id");
                String name = resultSet.getString("customer_name");
                String birthDay = resultSet.getString("customer_birthday");
                int gender = resultSet.getInt("customer_gender");
                String idCard = resultSet.getString("customer_id_card");
                String phoneNumber = resultSet.getString("customer_phone");
                String email = resultSet.getString("customer_email");
                String address = resultSet.getString("customer_address");
                customer = new Customer(id1, typeCustomer, name, birthDay, gender, idCard, phoneNumber, email, address);
                customerList.add(customer);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return customerList;
    }

    @Override
    public void deleteCustomer(int id) {
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement
                    ("delete from customer\n" +
                            "where customer_id = ?");
            preparedStatement.setString(1, String.valueOf(id));
            preparedStatement.executeQuery();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public Customer editCustomer(int id, Customer customer) {
        return null;
    }
}
