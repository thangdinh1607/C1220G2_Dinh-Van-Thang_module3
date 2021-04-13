package controller;

import com.sun.org.apache.xerces.internal.impl.xpath.regex.Match;
import model.bean.Customer;
import model.service.CustomerService;
import model.service.CustomerServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/customers", ""})
public class CustomerServlet extends javax.servlet.http.HttpServlet {
    private CustomerService customerService = new CustomerServiceImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionClient = request.getParameter("actionClient");
        if (actionClient == null) {
            actionClient = "";
        }
        switch (actionClient) {
            case "create":
                createCustomer(request, response);
            case "edit":
                editCustomer(request,response);
                break;
        }
    }

    private void editCustomer(HttpServletRequest request, HttpServletResponse response) {
        int id =Integer.parseInt(request.getParameter("id")) ;
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String address = request.getParameter("address");

        Customer customer =this.customerService.findById(id);
        customer.setName(name);
        customer.setAddress(address);
        customer.setEmail(email);
        customerService.update(id,customer);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("customer/editCustomer.jsp")  ;
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void createCustomer(HttpServletRequest request, HttpServletResponse response) {
        int id = (int) (Math.random()*1000);
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        Customer customer = new Customer(id, name, email, address);
        customerService.save(customer);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("customer/createCustomer.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionClient = request.getParameter("actionClient");

        if (actionClient == null) {
            actionClient = "";
        }
        switch (actionClient) {
            case "create":
                createFormCustomer(request, response);
                break;
            case "edit" :
                editFormCustomer(request,response);
                break;
            case "delete" :
                deleteCustomer(request,response);
                break;
            default:
                listCustomer(request, response);
                break;
        }
    }

    private void deleteCustomer(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        customerService.remove(id);
        RequestDispatcher dispatcher = null ;
        try {
            response.sendRedirect("/customers");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void editFormCustomer(HttpServletRequest request, HttpServletResponse response) {
        int id =Integer.parseInt(request.getParameter("id")) ;
        Customer customer = this.customerService.findById(id);
        request.setAttribute("customer",customer);
        RequestDispatcher dispatcher = request.getRequestDispatcher("customer/editCustomer.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void createFormCustomer(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("customer/createCustomer.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    private void listCustomer(HttpServletRequest request, HttpServletResponse response) {
        List<Customer> customerList = this.customerService.findAll();
        request.setAttribute("customers", customerList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("customer/list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}