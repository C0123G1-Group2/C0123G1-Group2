package com.example.controller;

import com.example.model.User;
import com.example.service.CustomerService;
import com.example.service.ICustomerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static ICustomerService customerService = new CustomerService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/login.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username==null){
            username="";
        }
        if (checkLoginAdmin(username, password)) {
//            Cookie cookie = new Cookie("login", "true");
//            response.addCookie(cookie);

            HttpSession session = request.getSession();
            session.setAttribute("login", "true");
            response.sendRedirect("home.jsp");
        } else if (username.equals("")) {
            request.setAttribute("message", "Logout success");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        } else {
            request.setAttribute("message", "Login Fail");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }


    }

    public static boolean checkLoginAdmin(String username, String password) {
        List<User> userList = customerService.getUser();
        for (int i = 0; i < userList.size(); i++) {
            if (username.equals(userList.get(i).getUsername()) && password.equals(userList.get(i).getPassword())) {
                return true;
            }
        }
        return false;
    }
}