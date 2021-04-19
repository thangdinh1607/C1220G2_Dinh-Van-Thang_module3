package controller;

import model.bean.Customer;
import model.repository.IplmCustomerRepository;
import model.service.CustomerService;
import model.service.ImplCustomerService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", urlPatterns = {"/customer"})
public class CustomerServlet extends HttpServlet {
    CustomerService customerService = new ImplCustomerService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createCustomer(request, response);
                break;
            case "search":
                searchCustomerById(request, response);
                break;
            case "searchName":
                searchCustomerByName(request, response);
                break;
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showFormCreatCustomer(request, response);
                break;
            case "delete":
                deleteCustomer1(request, response);
                break;
            default:
                listCustomer(request, response);
        }
    }

    private void deleteCustomer1(HttpServletRequest request, HttpServletResponse response) {
        int id =Integer.parseInt(request.getParameter("id")) ;
        customerService.deleteCustomer(id);
        try {
            response.sendRedirect("customer/customer.jsp");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    private void searchCustomerByName(HttpServletRequest request, HttpServletResponse response) {
       String name =  request.getParameter("name");
      List<Customer>customerList= customerService.findByName(name);
      request.setAttribute("customers",customerList);
      RequestDispatcher requestDispatcher = request.getRequestDispatcher("customer/customer.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void searchCustomerById(HttpServletRequest request, HttpServletResponse response) {
        int id =Integer.parseInt(request.getParameter("id")) ;
       Customer customer = customerService.findById(id);
       List<Customer> customerList = new ArrayList<>();
       customerList.add(customer);
       request.setAttribute("customers",customerList);
       RequestDispatcher requestDispatcher = request.getRequestDispatcher("customer/customer.jsp");
        try {

            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }



    private void listCustomer(HttpServletRequest request, HttpServletResponse response) {
        List<Customer> customerList = customerService.showAllCustomer();
        request.setAttribute("customers", customerList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("customer/customer.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFormCreatCustomer(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("customer/createCustomer.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void createCustomer(HttpServletRequest request, HttpServletResponse response) {
//        int id = Integer.parseInt(request.getParameter("id"));
        int type = Integer.parseInt(request.getParameter("type"));
        String name = request.getParameter("name");
        String birthDay = request.getParameter("birthDay");
        int gender = Integer.parseInt(request.getParameter("gender"));
        String idCard = request.getParameter("idCard");
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        Customer customer = new Customer(type, name, birthDay, gender, idCard, phoneNumber, email, address);

        try {
            customerService.create(customer);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        try {
            response.sendRedirect("/customer");
        } catch (IOException e) {
            e.printStackTrace();
        }


    }
    }

