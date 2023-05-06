package com.example.controller;

import com.example.model.Customer;
import com.example.service.CustomerService;
import com.example.service.ICustomerService;

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
        String action = request.getParameter("action");
        int id ;
        if(action==null){
            action="";
        }
        switch (action){
            case  "create":
                request.getRequestDispatcher("/create.jsp").forward(request,response);
                break;

            case "delete" :
                id = Integer.parseInt(request.getParameter("id"));
                customerService.delete(id);
                response.sendRedirect("/customer");
                break;

            case "edit":
                    id = Integer.parseInt(request.getParameter("idEdit"));
                    request.setAttribute("idEdit",id);
                    request.getRequestDispatcher("/edit.jsp").forward(request,response);
                break;

            default:
                List<Customer> customerList = customerService.getAll();
                if(customerList==null){
                    request.getRequestDispatcher("/error.jsp").forward(request,response);
                }else {

                    request.setAttribute("customerList",customerList);
                    request.getRequestDispatcher("/list.jsp").forward(request,response);
                }



        }



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        int id;
        if(action==null){
            action = "";
        }
        switch (action){
            case "create":
                create(request, response);
                break;
            case "edit":
                 id = Integer.parseInt(request.getParameter("idEdit"));
                String name = request.getParameter("name");
                String phoneNumber = request.getParameter("phoneNumber");
                String address = request.getParameter("address");
                String email = request.getParameter("email");
                Customer customer = new Customer(id,name,phoneNumber,address,email);
                customerService.edit(customer);
                response.sendRedirect("/customer");
                break;

        }

    }

    public void create(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id;
        id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String phoneNumber = request.getParameter("phoneNumber");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        Customer customer = new Customer(id,name,phoneNumber,address,email);
        customerService.saveCustomer(customer);
        response.sendRedirect("/customer");
    }
}