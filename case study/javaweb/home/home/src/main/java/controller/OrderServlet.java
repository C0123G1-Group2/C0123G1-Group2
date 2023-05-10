package controller;

import model.Order;
import model.Product;
import service.IOrderService;
import service.IProductService;
import service.OrderService;
import service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "OrderServlet", value = "/order")
public class OrderServlet extends HttpServlet {
    IOrderService orderProduct =new OrderService();
    IProductService productService=new ProductService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action==null){
            action="";
        }
        switch (action){
            case "oder":
                int maDV= Integer.parseInt(request.getParameter("maDV"));
                request.setAttribute("maDV",maDV);
                request.getRequestDispatcher("product/oder.jsp").forward(request,response);
                break;
            default:
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
            case "oder":
                orderProduct(request,response);
                break;
            default:
                break;
        }
    }
    private void orderProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int maDV= Integer.parseInt(request.getParameter("value"));
        String beginTime=request.getParameter("beginTime");
        int rentalTime= Integer.parseInt(request.getParameter("rentalTime"));
        double gia = 0;
        List<Product> productList=productService.showListProduct();
        for (int i = 0; i < productList.size(); i++) {
            if (productList.get(i).getMaSan()==maDV){
                gia=productList.get(i).getGia();
                break;
            }
        }
        gia=gia*rentalTime;
        Order order=new Order(1,1,maDV,beginTime,rentalTime, gia);
        boolean check= orderProduct.orderProduct(order);
        String mess="Oder success!";
        if (!check){
            mess="Oder fail!";
        }
        request.setAttribute("mess",mess);
        request.getRequestDispatcher("product/oder.jsp").forward(request,response);
    }
}
