package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CustomerServlet")
public class CustomerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action =request.getParameter("action");
        if(action == null){
            action="";
        }
        switch (action){
            case "create":
                createCustomer(request,response);
                break;
        }
    }

    private void createCustomer(HttpServletRequest request, HttpServletResponse response) {
        int id =Integer.parseInt(request.getParameter("id")) ;
        int type = Integer.parseInt(request.getParameter("type"));
        String name = request.getParameter("name");
        String birthDay = request.getParameter("birthday");
        int gender =Integer.parseInt(request.getParameter("gender"));
   //////////////////////
    }


}
