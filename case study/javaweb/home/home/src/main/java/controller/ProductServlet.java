package controller;

import model.Product;
import service.IProductService;
import service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet", value = "/product")
public class ProductServlet extends HttpServlet {
    IProductService productService=new ProductService();
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
                List<Product> productList=productService.showListProduct();
                request.setAttribute("productList",productList);
                break;
            default:
                showListProduct(request,response);
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
                deleteProduct(request,response);
                break;
            case "add":
                addProduct(request,response);
                break;
            default:
                showListProduct(request,response);
                break;
        }

    }

    private void addProduct(HttpServletRequest request, HttpServletResponse response) {

    }


    private void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int maDV = Integer.parseInt(request.getParameter("maDV"));
        boolean check= productService.deleteProduct(maDV);
        String mess="Xoa thanh cong";
        if (!check){
            mess="xoa khong thanh cong";
        }
        request.setAttribute("mess",mess);
        List<Product> productList=productService.showListProduct();
        request.setAttribute("productList",productList);
        request.getRequestDispatcher("product/product.jsp").forward(request,response);
    }

    private void showListProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> productList=productService.showListProduct();
        request.setAttribute("productList",productList);
        request.getRequestDispatcher("product/product.jsp").forward(request,response);
    }
}
