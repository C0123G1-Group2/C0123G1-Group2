package controller;

import model.Services;
import service.IServicesService;
import service.ServicesService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServicesServlet", value = "/services")
public class ServicesServlet extends HttpServlet {
    private IServicesService servicesService = new ServicesService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        int id ;
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                request.getRequestDispatcher("/create.jsp").forward(request, response);
                break;
            case "delete":
                id = Integer.parseInt(request.getParameter("id"));
                servicesService.delete(id);
                response.sendRedirect("/services");
                break;

            case "edit":
                id= Integer.parseInt(request.getParameter("idEdit"));
               request.setAttribute("idEdit",id);
               request.getRequestDispatcher("/edit.jsp").forward(request,response);
                break;
            default:
                List<Services> servicesList = servicesService.getAll();
                if (servicesList == null) {
                    request.getRequestDispatcher("/error.jsp").forward(request, response);
                } else {
                    request.setAttribute("servicesList", servicesList);
                    request.getRequestDispatcher("/list.jsp").forward(request, response);
                }

        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        int id ;
        if (action == null) {
            action = "";
        }

        switch (action){
            case "create" :
                create(request, response);
            case "edit":
                id = Integer.parseInt(request.getParameter("idEdit"));
                String name = request.getParameter("name");
                String price = request.getParameter("price");

                Services services = new Services(id,name,price);
                servicesService.edit(services);
                response.sendRedirect("/services");
                break;

        }
    }

    public void create(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id;
        id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String price = request.getParameter("price");

        Services services = new Services(id,name,price);
        servicesService.save(services);
        response.sendRedirect("/services");
    }
}
