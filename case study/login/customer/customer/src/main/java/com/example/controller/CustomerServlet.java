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
//        Boolean isLogin = false;
//        Cookie[] cookies = request.getCookies();
//        if (cookies != null) {
//            for (Cookie cookie : cookies) {
//                if (cookie.getName().equals("login") && cookie.getValue().equals("true")) {
//                    isLogin = true;
//                }
//            }
//        }
        HttpSession session = request.getSession();
        Boolean isLogin = session.getAttribute("login") == "true";
        List<Customer> customerList;
        String action = request.getParameter("action");
        int id ;
        if(action==null){
            action="";
        }
        switch (action){
            case  "create":
                request.getRequestDispatcher("/create.jsp").forward(request,response);
                break;

            case "edit":
                    id = Integer.parseInt(request.getParameter("idEdit"));
                    customerList = customerService.getAll();
                    Customer customer = new Customer();
                for (int i = 0; i <customerList.size() ; i++) {
                    if(customerList.get(i).getCustomerId()==id){
                        customer=customerList.get(i) ;
                        break;
                    }
                }
                    request.setAttribute("customer",customer);
                    request.getRequestDispatcher("/edit.jsp").forward(request,response);
                break;
           
            default:
                  customerList = customerService.getAll();
                if(customerList==null){
                    request.getRequestDispatcher("/error.jsp").forward(request,response);
                }else {
                    if(isLogin){
                        request.setAttribute("customerList",customerList);
                        request.getRequestDispatcher("/list.jsp").forward(request,response);
                    }
                    else {
                        request.getRequestDispatcher("/login.jsp").forward(request,response);
                    }
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
                id = Integer.parseInt(request.getParameter("id"));
                String name = request.getParameter("name");
                String phoneNumber = request.getParameter("phoneNumber");
                String address = request.getParameter("address");
                String email = request.getParameter("email");
                Customer customer = new Customer(id,name,phoneNumber,address,email);
                boolean check =   customerService.saveCustomer(customer);
                String mess = "Thêm mới Thành Công";
                if(!check){
                    mess="Thêm Mới Không Thành Công";
                }
                request.setAttribute("mess",mess);
                request.getRequestDispatcher("/create.jsp").forward(request,response);
                break;
            case "edit":
                edit(request, response);
                break;
            case "delete" :
                id = Integer.parseInt(request.getParameter("deleteId"));
                customerService.delete(id);
                response.sendRedirect("/customer");
                break;
            case "find" :
                find(request, response);
                break;
        }

    }

    public void find(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nameFind = request.getParameter("name");
        String phoneNumberFind = request.getParameter("phoneNumber");
        List<Customer> customerList =customerService.findCustomer(nameFind,phoneNumberFind);
        request.setAttribute("customerList",customerList);
        request.getRequestDispatcher("/list.jsp").forward(request, response);
    }

    public void edit(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id;

        id = Integer.parseInt(request.getParameter("idEdit"));
        String name = request.getParameter("name");
        String phoneNumber = request.getParameter("phoneNumber");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        Customer customer = new Customer(id,name,phoneNumber,address,email);
       boolean check = customerService.edit(customer);
        String mess ="Sửa Thành Công" ;
       if(!check){
           mess="Thêm Mới Không Thành Công";
       }
       request.setAttribute("mess",mess);
       List<Customer> customerList = customerService.getAll();
        for (int i = 0; i <customerList.size()   ; i++) {
            if(id==customerList.get(i).getCustomerId()){
                request.setAttribute("id",customerList.get(i).getCustomerId());
                request.setAttribute("name",customerList.get(i).getName());
                request.setAttribute("phoneNumber",customerList.get(i).getPhoneNumber());
                request.setAttribute("address",customerList.get(i).getAddress());
                request.setAttribute("email",customerList.get(i).getEmail());
                try {
                    request.getRequestDispatcher("/edit.jsp").forward(request,response);
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
