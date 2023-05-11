package com.example.controller;

import com.example.model.User;
import com.example.service.CustomerService;
import com.example.service.ICustomerService;
import com.example.service.IUserService;
import com.example.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    private static IUserService userService = new UserService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie[] cookies = request.getCookies();
        if(cookies!=null){
            for (Cookie cookie:cookies) {
               if(cookie.getName().equals("cookieUser")){
                request.setAttribute("name",cookie.getValue());
               }
               if(cookie.getName().equals("cookiePass")){
                   request.setAttribute("pass",cookie.getValue());
               }
            }
        }
        request.getRequestDispatcher("/login.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String rememberMe = request.getParameter("rememberMe");
        boolean isRemember = Boolean.parseBoolean(rememberMe);

        // tao rememberME
        List<User> userList = userService.getUser();
        User user = null;
        for ( User u: userList) {
            if(username.equals(u.getUsername())&&password.equals((u.getPassword()))){
                user=u;
                break;
            }
        }
        if(user!=null) {
            request.setAttribute("mess", "Đăng nhập thành công");
            HttpSession session1 = request.getSession();
            session1.setAttribute("userSession", user);

            if (isRemember) {
                Cookie cookie = new Cookie("cookieUser", user.getUsername());
                cookie.setMaxAge(300);
                Cookie cookie1 = new Cookie("cookiePass", user.getPassword());
                cookie1.setMaxAge(300);
                response.addCookie(cookie);
                response.addCookie(cookie1);
            }
            response.sendRedirect("/home.jsp");

        }else {
            request.setAttribute("mess","Đăng nhập thất bại ");
            request.getRequestDispatcher("/login.jsp").forward(request,response);
        }
    }
}