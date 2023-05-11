package controller;

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
    private ISoccerFieldService productService=new SoccerFieldService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action==null){
            action="";
        }
        switch (action){
            case "add":
                request.getRequestDispatcher("/product/add.jsp").forward(request,response);
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
                request.getRequestDispatcher("product/edit.jsp").forward(request,response);
                break;
            case "oder":
                int maDV= Integer.parseInt(request.getParameter("maDV"));
                request.setAttribute("maDV",maDV);
                request.getRequestDispatcher("product/oder.jsp").forward(request,response);
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
            case "oder":
                orderSoccerField(request,response);
                break;
            case "search":
                searchSoccerField(request,response);
                    break;
            default:
                showListSoccerField(request,response);
                break;
        }

    }

    private void searchSoccerField(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String tenDV=request.getParameter("tenDV");
        String tenLoaiDV=request.getParameter("tenLoaiDV");
        List<SoccerField> productList=productService.searchProduct(tenDV,tenLoaiDV);
        request.setAttribute("productList",productList);
        request.getRequestDispatcher("product/product.jsp").forward(request,response);
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
        String mess="Oder success!";
        if (!check){
            mess="Oder fail!";
        }
        request.setAttribute("mess",mess);
        request.getRequestDispatcher("product/oder.jsp").forward(request,response);
    }

    private void editSoccerField(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int maSan= Integer.parseInt(request.getParameter("value"));
        String tenSan=request.getParameter("tenSan");
        String tenLoaiSan=request.getParameter("tenLoaiSan");
        double gia= Double.parseDouble(request.getParameter("gia"));
        SoccerField soccerField=new SoccerField(maSan,tenSan,tenLoaiSan,gia);
        boolean check = productService.editProduct(soccerField);
        String mess= "Edit Soccer Field success!";
        if(!check){
            mess="Edit Soccer Field fail!";
        }
        request.setAttribute("mess",mess);
        request.getRequestDispatcher("product/edit.jsp").forward(request,response);
    }

    private void addSoccerField(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String tenSan=request.getParameter("tenSan");
        String tenLoaiSan=request.getParameter("tenLoaiSan");
        double gia= Double.parseDouble(request.getParameter("gia"));
        boolean check=productService.addProduct(tenSan,tenLoaiSan,gia);
        String mess= "Add new Soccer Field success!";
        if(!check){
            mess="Add new Soccer Field fail!";
        }
        request.setAttribute("mess",mess);
        request.getRequestDispatcher("product/add.jsp").forward(request,response);
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
        request.getRequestDispatcher("product/product.jsp").forward(request,response);
    }

    private void showListSoccerField(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<SoccerField> productList=productService.showListProduct();
        request.setAttribute("productList",productList);
        request.getRequestDispatcher("product/product.jsp").forward(request,response);
    }
}
