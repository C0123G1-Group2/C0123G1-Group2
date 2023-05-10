package com.example.controller;

import com.example.model.Customer;
import com.example.model.User;
import com.example.model.UserCustomer;
import com.example.service.CustomerService;
import com.example.service.ICustomerService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SignServlet", value = "/sign")
public class SignServlet extends HttpServlet {
    private static ICustomerService customerService = new CustomerService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("action");
        if(action==null){
            action="";
        }
        switch (action){
            case "createUserCustomer":
                createUserCustomer(request,response);

                break;



        }

    }

    private void createUserCustomer(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String user = request.getParameter("user");
        String password = request.getParameter("password");
        String name =request.getParameter("name");
        String phoneNumber = request.getParameter("phoneNumber");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        UserCustomer userCustomer = new UserCustomer(user,password);
        Customer customer = new Customer(name,phoneNumber,address,email);
        customerService.saveCustomer(customer);
        customerService.saveUserCustomer(userCustomer);
response.sendRedirect("login.jsp");
    }
}
