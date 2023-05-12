package com.example.controller;

import com.example.model.Customer;
import com.example.model.User;
import com.example.service.CustomerService;
import com.example.service.ICustomerService;
import com.example.service.IUserService;
import com.example.service.UserService;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SignServlet", value = "/sign")
public class SignServlet extends HttpServlet {
    private static ICustomerService customerService = new CustomerService();
    private static IUserService userService = new UserService();
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
        String hashed = BCrypt.hashpw(password, BCrypt.gensalt(10));

        User user1 = new User(user,hashed);
        Customer customer = new Customer(name,phoneNumber,address,email);
        customerService.saveCustomer(customer);
        userService.saveUserCustomer(user1);
        response.sendRedirect("/login.jsp");
    }
}
