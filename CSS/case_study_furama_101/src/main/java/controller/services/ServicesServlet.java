package controller.services;

import model.RentTypeCodeClass;
import model.ServicesClass;
import model.TypeOfServicesClass;
import service.IServiceRentTypeCodeClass;
import service.IServiceSerClass;
import service.IServiceTypeOfSer;
import service.impl.ServiceRentTypeCodeClass;
import service.impl.ServiceSerClass;
import service.impl.ServiceTypeOfSer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

@WebServlet(name = "ServicesServlet", urlPatterns = "/services")
public class ServicesServlet extends HttpServlet {
    IServiceSerClass iServiceSerClass = new ServiceSerClass();
    IServiceRentTypeCodeClass iServiceRentTypeCodeClass = new ServiceRentTypeCodeClass();
    IServiceTypeOfSer iServiceTypeOfSer = new ServiceTypeOfSer();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "search":
                showSearch(request, response);
                break;
            case "add":
                showAddForm(request, response);
                break;
            case "delete":
                letDelete(request, response);
                break;
            case "update":
                showUpdateForm(request, response);
                break;
            default:
                showListServices(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                saveAddForm(request, response);
                break;
            case "update":
                saveUpdateForm(request, response);
                break;
        }
    }

    private void showSearch(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        List<ServicesClass> servicesClassList = iServiceSerClass.search(name);
        List<TypeOfServicesClass> typeOfServicesClassList = iServiceTypeOfSer.findAll();
        List<RentTypeCodeClass> rentTypeCodeClassList = iServiceRentTypeCodeClass.findAll();
        request.setAttribute("services", servicesClassList);
        request.setAttribute("typeOfServices", typeOfServicesClassList);
        request.setAttribute("rentTypes", rentTypeCodeClassList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/services/list.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    private void saveUpdateForm(HttpServletRequest request, HttpServletResponse response) {
        int servicesId = Integer.parseInt(request.getParameter("servicesId"));
        String name = request.getParameter("name");
        double area = Double.parseDouble(request.getParameter("area"));
        double cost = Double.parseDouble(request.getParameter("cost"));
        int maxPeople = Integer.parseInt(request.getParameter("maxPeople"));
        int rentTypeCode = Integer.parseInt(request.getParameter("rentTypeCode"));
        int servicesTypeCode = Integer.parseInt(request.getParameter("servicesTypeCode"));
        String quality = request.getParameter("quality");
        String description = request.getParameter("description");
        double poolArea = Double.parseDouble(request.getParameter("poolArea"));
        int floor = Integer.parseInt(request.getParameter("floor"));
        String extraServices = request.getParameter("extraServices");
        iServiceSerClass.update(new ServicesClass(servicesId, name, area, cost, maxPeople, rentTypeCode, servicesTypeCode, quality, description, poolArea, floor, extraServices));
        showListServices(request, response);
    }

    private void showUpdateForm(HttpServletRequest request, HttpServletResponse response) {
        int servicesId = Integer.parseInt(request.getParameter("id"));
        ServicesClass servicesClass = iServiceSerClass.findById(servicesId);
        List<TypeOfServicesClass> typeOfServicesClassList = iServiceTypeOfSer.findAll();
        List<RentTypeCodeClass> rentTypeCodeClassList = iServiceRentTypeCodeClass.findAll();
        request.setAttribute("rentTypeCodeClassList", rentTypeCodeClassList);
        request.setAttribute("services", servicesClass);
        request.setAttribute("typeOfServicesClassList", typeOfServicesClassList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/services/update.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void saveAddForm(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        double area = Double.parseDouble(request.getParameter("area"));
        double cost = Double.parseDouble(request.getParameter("cost"));
        int maxPeople = Integer.parseInt(request.getParameter("maxPeople"));
        int rentTypeCode = Integer.parseInt(request.getParameter("rentTypeCode"));
        int servicesTypeCode = Integer.parseInt(request.getParameter("servicesTypeCode"));
        String quality = request.getParameter("quality");
        String description = request.getParameter("description");
        double poolArea = Double.parseDouble(request.getParameter("poolArea"));
        int floor = Integer.parseInt(request.getParameter("floor"));
        String extraServices = request.getParameter("extraServices");
        iServiceSerClass.add(new ServicesClass(name, area, cost, maxPeople, rentTypeCode, servicesTypeCode, quality, description, poolArea, floor, extraServices));
        showListServices(request, response);
    }

    private void showAddForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/services/add.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showListServices(HttpServletRequest request, HttpServletResponse response) {
        List<ServicesClass> servicesClassList = iServiceSerClass.findAll();
        List<RentTypeCodeClass> rentTypeCodeClassList = iServiceRentTypeCodeClass.findAll();
        List<TypeOfServicesClass> typeOfServicesClassList = iServiceTypeOfSer.findAll();
        request.setAttribute("services", servicesClassList);
        request.setAttribute("rentTypes", rentTypeCodeClassList);
        request.setAttribute("typeOfServices", typeOfServicesClassList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/services/list.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void letDelete(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        iServiceSerClass.delete(id);
        showListServices(request, response);
    }
}
