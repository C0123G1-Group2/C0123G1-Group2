package com.example.controller;

import com.example.model.Customer;
import com.example.model.User;
import com.example.service.CustomerService;
import com.example.service.ICustomerService;
import com.example.util.Helper;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "/customer")
public class CustomerServlet extends HttpServlet {
    private ICustomerService customerService = new CustomerService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        boolean isLogin = Helper.checkUser(request);
        if (!isLogin) {
            request.getRequestDispatcher("/login.jsp").forward(request, response);
            return;
        }
        User userLogin = Helper.getUserLogin(request);
        if (userLogin.getRole().equals("customer")) {
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        } else {
            List<Customer> customerList;
            String action = request.getParameter("action");
            int id;
            if (action == null) {
                action = "";
            }
            switch (action) {
                case "create":
                    request.getRequestDispatcher("/create.jsp").forward(request, response);
                    break;

                case "edit":
                    id = Integer.parseInt(request.getParameter("idEdit"));
                    customerList = customerService.getAll();
                    Customer customer = new Customer();
                    for (int i = 0; i < customerList.size(); i++) {
                        if (customerList.get(i).getCustomerId() == id) {
                            customer = customerList.get(i);
                            break;
                        }

                    }
                    if (customer == null) {
                        request.setAttribute("mess", "ID Not Find");
                        request.getRequestDispatcher("/list.jsp").forward(request, response);
                    } else {
                        request.setAttribute("customer", customer);
                        request.getRequestDispatcher("/edit.jsp").forward(request, response);
                    }
                    break;
                default:
                    customerList = customerService.getAll();
                    if (customerList == null) {
                        request.getRequestDispatcher("/error.jsp").forward(request, response);
                    } else {
                        request.setAttribute("customerList", customerList);
                        request.getRequestDispatcher("/list.jsp").forward(request, response);
                    }
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        int id;
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                String name = request.getParameter("name");
                String phoneNumber = request.getParameter("phoneNumber");
                String address = request.getParameter("address");
                String email = request.getParameter("email");
                Customer customer = new Customer(name, phoneNumber, address, email);
                boolean check = customerService.saveCustomer(customer);
                String mess = null;
                String messF = null;
                if (check) {
                    mess = "ADD NEW CUSTOMER SUCCEED !";
                } else {
                    messF = " ADD NEW CUSTOMER FAIL ! Phone number OR Email already exists  !";
                }
                request.setAttribute("mess", mess);
                request.setAttribute("messF",messF);
                request.getRequestDispatcher("/create.jsp").forward(request, response);
                break;
            case "edit":
                edit(request, response);
                break;
            case "delete":
                id = Integer.parseInt(request.getParameter("deleteId"));
                customerService.delete(id);
                response.sendRedirect("/customer");
                break;
            case "find":
                find(request, response);
                break;


        }

    }

    public void find(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nameFind = request.getParameter("name");
        String phoneNumberFind = request.getParameter("phoneNumber");
        String addressFind = request.getParameter("address");
        List<Customer> customerList = customerService.findCustomer(nameFind, phoneNumberFind, addressFind);
        request.setAttribute("customerList", customerList);
        request.getRequestDispatcher("/list.jsp").forward(request, response);
    }

    public void edit(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id;

        id = Integer.parseInt(request.getParameter("idEdit"));
        String name = request.getParameter("name");
        String phoneNumber = request.getParameter("phoneNumber");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        Customer customer = new Customer(id, name, phoneNumber, address, email);
        boolean check = customerService.edit(customer);
        String mess = null;
        String messF = null;
        if (check) {
            mess = "EDIT CUSTOMER SUCCEED !";
        } else {
            messF = " EDIT CUSTOMER FAIL ! Phone number OR Email already exists  !";
        }
        request.setAttribute("mess", mess);
        request.setAttribute("messF",messF);
        List<Customer> customerList = customerService.getAll();
        for (int i = 0; i < customerList.size(); i++) {
            if (id == customerList.get(i).getCustomerId()) {
                request.setAttribute("id", customerList.get(i).getCustomerId());
                request.setAttribute("name", customerList.get(i).getName());
                request.setAttribute("phoneNumber", customerList.get(i).getPhoneNumber());
                request.setAttribute("address", customerList.get(i).getAddress());
                request.setAttribute("email", customerList.get(i).getEmail());
                try {
                    request.getRequestDispatcher("/edit.jsp").forward(request, response);
                } catch (ServletException e) {
                    e.printStackTrace();
                }
            }

        }
//        response.sendRedirect("/customer");
    }

//    public boolean create(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        int id;
//        id = Integer.parseInt(request.getParameter("id"));
//        String name = request.getParameter("name");
//        String phoneNumber = request.getParameter("phoneNumber");
//        String address = request.getParameter("address");
//        String email = request.getParameter("email");
//       Customer customer = new Customer(id,name,phoneNumber,address,email);
//        boolean check =   customerService.saveCustomer(customer);
//        request.setAttribute("check" ,check);
//        try {
//            request.getRequestDispatcher("/create.jsp").forward(request,response);
//        } catch (ServletException e) {
//            e.printStackTrace();
//        }
//
////        response.sendRedirect("/customer");
//        return check;
//    }
}
