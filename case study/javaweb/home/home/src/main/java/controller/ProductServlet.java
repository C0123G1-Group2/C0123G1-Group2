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
                int maSan= Integer.parseInt(request.getParameter("value"));
                List<Product> productList=productService.showListProduct();
                Product product=new Product();
                for (int i = 0; i < productList.size(); i++) {
                    if (productList.get(i).getMaSan()==maSan){
                        product=productList.get(i);
                        break;
                    }
                }
                request.setAttribute("product",product);
                request.getRequestDispatcher("product/edit.jsp").forward(request,response);
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
            case "edit":
                edit(request,response);
                break;
            default:
                showListProduct(request,response);
                break;
        }

    }

    private void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int maSan= Integer.parseInt(request.getParameter("value"));
        String tenSan=request.getParameter("tenSan");
        String tenLoaiSan=request.getParameter("tenLoaiSan");
        double gia= Double.parseDouble(request.getParameter("gia"));
        boolean check = productService.editProduct(maSan,tenSan,tenLoaiSan,gia);
        String mess= "Edit Soccer Field success!";
        if(!check){
            mess="Edit Soccer Field fail!";
        }
        request.setAttribute("mess",mess);
        request.getRequestDispatcher("product/edit.jsp").forward(request,response);
    }

    private void addProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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


    private void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int maDV = Integer.parseInt(request.getParameter("maDV"));
        boolean check= productService.deleteProduct(maDV);
        String mess="Delete Soccer Field success ";
        if (!check){
            mess="Delete Soccer Field fail";
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
