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
    private IProductService productService = new ProductService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        int id;
        if(action==null){
            action="";
        }

        switch (action){

            case "create":
                request.getRequestDispatcher("create.jsp").forward(request,response);
                break;
            case "delete":
                 id = Integer.parseInt(request.getParameter("id"));
                productService.delete(id);
                response.sendRedirect("/product");
                break;
            case "edit":
                id = Integer.parseInt(request.getParameter("idEdit"));
                request.setAttribute("idEdit", id);
                request.getRequestDispatcher("/edit.jsp").forward(request,response);
                break;




            default:
                List<Product> productList = productService.getAll();
                if(productList==null){
                    request.getRequestDispatcher("/error.jsp").forward(request,response);
                }else {
                    request.setAttribute("productList",productList);
                    request.getRequestDispatcher("/list.jsp").forward(request,response);
                }


        }





    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action =request.getParameter("action");
        if(action==null){
            action="";
        }

        switch (action){
            case "create":
                create(request, response);
                break;
            case "edit":
                int id = Integer.parseInt(request.getParameter("idEdit"));
                String name = request.getParameter("name");
                String price = request.getParameter("price");
                Product product = new Product(id, name,price);
                productService.edit(product);
                response.sendRedirect("/product");
                break;

        }

    }

    public void create(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String price= request.getParameter("price");
        Product product = new Product(id,name,price);
        productService.save(product);
        response.sendRedirect("/product");
    }
}
