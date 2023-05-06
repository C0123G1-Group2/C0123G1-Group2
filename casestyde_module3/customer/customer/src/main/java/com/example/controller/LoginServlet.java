package com.example.controller;

import com.example.model.User;
import com.example.service.CustomerService;
import com.example.service.ICustomerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/login.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ICustomerService customerService = new CustomerService();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user = new User(username,password);

        System.out.println(username + " --- " + password);

        if(customerService.checkLogin(user)){
//            Cookie cookie = new Cookie("login", "true");
//            response.addCookie(cookie);
            HttpSession session = request.getSession();
            session.setAttribute("login", "true");
            response.sendRedirect("home.jsp");
        }else {
            request.setAttribute("message","Login Fail");
            request.getRequestDispatcher("/login.jsp").forward(request,response);
        }
    }
}
