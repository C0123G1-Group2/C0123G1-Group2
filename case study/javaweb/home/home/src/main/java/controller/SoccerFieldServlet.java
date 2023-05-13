package controller;

import com.example.model.Customer;
import com.example.service.CustomerService;
import com.example.service.ICustomerService;
import com.example.util.Helper;
import model.Order;
import model.SoccerField;
import service.ISoccerFieldService;
import service.SoccerFieldService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SoccerFieldServlet", value = "/product")
public class SoccerFieldServlet extends HttpServlet {
    private ICustomerService customerService=new CustomerService();
    private ISoccerFieldService productService=new SoccerFieldService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        boolean isLogin = Helper.checkUser(request);
        if(!isLogin) {
            request.getRequestDispatcher("/login.jsp").forward(request,response);
            return;
        }
        String action = request.getParameter("action");
        if (action==null){
            action="";
        }
        switch (action){
            case "add":
                request.getRequestDispatcher("/view/product/add.jsp").forward(request,response);
                break;
            case "edit":
                int maSan= Integer.parseInt(request.getParameter("value"));
                List<SoccerField> productList=productService.showListProduct();
                SoccerField product=new SoccerField();
                for (int i = 0; i < productList.size(); i++) {
                    if (productList.get(i).getSoccerFieldId()==maSan){
                        product=productList.get(i);
                        break;
                    }
                }
                request.setAttribute("product",product);
                request.getRequestDispatcher("/view/product/edit.jsp").forward(request,response);
                break;
            case "editOrder":
                int orderId= Integer.parseInt(request.getParameter("value"));
                List<Order> orderList=productService.showListOrder();
                Order order =new Order();
                for (int i = 0; i < orderList.size(); i++) {
                    if (orderList.get(i).getOrderId()==orderId){
                        order=orderList.get(i);
                        break;
                    }
                }
                request.setAttribute("order",order);
                request.getRequestDispatcher("/view/product/editOrder.jsp").forward(request,response);
                break;
            case "order":
                int maDV= Integer.parseInt(request.getParameter("maDV"));
                request.setAttribute("maDV",maDV);
                request.getRequestDispatcher("/view/product/order.jsp").forward(request,response);
                break;
            case "orderList":
                showListOrder(request,response);
                break;
            default:
                showListSoccerField(request,response);
                break;
        }
    }




    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action==null){
            action="";
        }
        switch (action){
            case "delete":
                deleteSoccerField(request,response);
                break;
            case "add":
                addSoccerField(request,response);
                break;
            case "edit":
                editSoccerField(request,response);
                break;
            case "editOrder":
                editOrder(request,response);
                break;
            case "order":
                orderSoccerField(request,response);
                break;
            case "search":
                searchSoccerField(request,response);
                    break;
            case "deleteOrder":
                deleteOrder(request,response);
                break;
            default:
                showListSoccerField(request,response);
                break;
        }

    }

    private void editOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int orderId= Integer.parseInt(request.getParameter("value"));
        int customerId= Integer.parseInt(request.getParameter("customerId"));
        int employeeId= Integer.parseInt(request.getParameter("employeeId"));
        int soccerFieldId= Integer.parseInt(request.getParameter("soccerFieldId"));
        String beginTime=request.getParameter("beginTime");
        int rentalTime= Integer.parseInt(request.getParameter("rentalTime"));
        double totalPrice= Double.parseDouble((request.getParameter("totalPrice")));
        Order order =new Order(orderId,customerId,employeeId,soccerFieldId,beginTime,rentalTime,totalPrice);
       boolean check=productService.editOrder(order);
        String mess= "Edit Soccer Field success!";
        if(!check){
            mess="Edit Soccer Field fail!";
        }
        request.setAttribute("mess",mess);
        request.getRequestDispatcher("/view/product/editOrder.jsp").forward(request,response);
    }


    private void searchSoccerField(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String tenDV=request.getParameter("tenDV");
        String tenLoaiDV=request.getParameter("tenLoaiDV");
        List<SoccerField> productList=productService.searchProduct(tenDV,tenLoaiDV);
        request.setAttribute("productList",productList);
        request.getRequestDispatcher("/view/product/product.jsp").forward(request,response);
    }

    private void orderSoccerField(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int maDV= Integer.parseInt(request.getParameter("value"));
        String beginTime=request.getParameter("beginTime");
        int rentalTime= Integer.parseInt(request.getParameter("rentalTime"));
        double gia = 0;
        List<SoccerField> productList=productService.showListProduct();
        for (int i = 0; i < productList.size(); i++) {
            if (productList.get(i).getSoccerFieldId()==maDV){
                gia=productList.get(i).getPrice();
                break;
            }
        }
        gia=gia*rentalTime;
        Order order=new Order(1,1,maDV,beginTime,rentalTime, gia);
        boolean check= productService.orderProduct(order);
        String message = null;
        String messageF = null;
        if(check){
            message = "  Booking Succeed !";
        }else{
            messageF = " Booking Fail !";
        }
        request.setAttribute("mess",message);
        request.setAttribute("messF",messageF);
        request.getRequestDispatcher("/view/product/order.jsp").forward(request,response);
    }

    private void editSoccerField(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int maSan= Integer.parseInt(request.getParameter("value"));
        String tenSan=request.getParameter("tenSan");
        String tenLoaiSan=request.getParameter("tenLoaiSan");
        double gia= Double.parseDouble(request.getParameter("gia"));
        SoccerField soccerField=new SoccerField(maSan,tenSan,tenLoaiSan,gia);
        boolean check = productService.editProduct(soccerField);
        String message = null;
        String messageF = null;
        if(check){
            message = "Edit Soccer Field Succeed !";
        }else{
            messageF = "Edit Fail !";
        }
        request.setAttribute("mess",message);
        request.setAttribute("messF",messageF);
        request.getRequestDispatcher("/view/product/edit.jsp").forward(request,response);
    }

    private void addSoccerField(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String tenSan=request.getParameter("tenSan");
        String tenLoaiSan=request.getParameter("tenLoaiSan");
        double gia= Double.parseDouble(request.getParameter("gia"));
        boolean check=productService.addProduct(tenSan,tenLoaiSan,gia);
        String message = null;
        String messageF = null;
        if(check){
            message = "Create new Soccer Field Succeed !";
        }else{
            messageF = "Create Fail !";
        }
        request.setAttribute("mess",message);
        request.setAttribute("messF",messageF);
        request.getRequestDispatcher("/view/product/add.jsp").forward(request,response);
    }


    private void deleteSoccerField(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int maDV = Integer.parseInt(request.getParameter("maDV"));
        boolean check= productService.deleteProduct(maDV);
        String mess="Delete Soccer Field success ";
        if (!check){
            mess="Delete Soccer Field fail";
        }
        request.setAttribute("mess",mess);
        List<SoccerField> productList=productService.showListProduct();
        request.setAttribute("productList",productList);
        request.getRequestDispatcher("/view/product/product.jsp").forward(request,response);
    }
    private void deleteOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int orderId=Integer.parseInt(request.getParameter("orderId"));
        boolean check=productService.deleteOrder(orderId);
        String mess="Delete Soccer Field success ";
        if (!check){
            mess="Delete Soccer Field fail";
        }
        request.setAttribute("mess",mess);
        List<Order> orderList=productService.showListOrder();
        request.setAttribute("orderList",orderList);
        request.getRequestDispatcher("/view/product/orderList.jsp").forward(request,response);
    }
    private void showListSoccerField(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<SoccerField> productList=productService.showListProduct();
        request.setAttribute("productList",productList);
        request.getRequestDispatcher("/view/product/product.jsp").forward(request,response);
    }
    private void showListOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Order> orderList =productService.showListOrder();
        request.setAttribute("orderList",orderList);
        request.getRequestDispatcher("view/product/orderList.jsp").forward(request,response);
    }
}
