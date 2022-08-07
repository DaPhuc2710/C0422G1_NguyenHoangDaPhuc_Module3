package controller.customer;

import model.Customer;
import model.CustomerTypeTable;
import service.IServiceCustomer;
import service.IServiceCustomerType;
import service.impl.ServiceCustomer;
import service.impl.ServiceCustomerType;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CustomerServlet", urlPatterns = "/customer")
public class CustomerServlet extends HttpServlet {
    IServiceCustomer iServiceCustomer = new ServiceCustomer();
    IServiceCustomerType iServiceType = new ServiceCustomerType();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                showFormAdd(request, response);
                break;
            case "delete":
                delete(request, response);
                break;
            case "update":
                showUpdateForm(request, response);
                break;
            default:
                showListCustomer(request, response);
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

    private void saveUpdateForm(HttpServletRequest request, HttpServletResponse response) {
        int customerId = Integer.parseInt(request.getParameter("customerId"));
        int customerCodeType = Integer.parseInt(request.getParameter("type"));
        String name = request.getParameter("name");
        String dOfB = request.getParameter("dOfB");
        boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
        int CMND = Integer.parseInt(request.getParameter("CMND"));
        int telephone = Integer.parseInt(request.getParameter("telephone"));
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        iServiceCustomer.update(new Customer(customerId,customerCodeType, name, dOfB, gender, CMND, telephone, email, address));
        showListCustomer(request, response);
    }

    private void showUpdateForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Customer customer = iServiceCustomer.findById(id);
        request.setAttribute("customer",customer);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/customer/update.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        iServiceCustomer.delete(id);
        showListCustomer(request, response);
    }


    private void saveAddForm(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        String dOfB = request.getParameter("dOfB");
        boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
        int CMND = Integer.parseInt(request.getParameter("CMND"));
        int telephone = Integer.parseInt(request.getParameter("telephone"));
        String email = request.getParameter("email");
        int customerCodeType = Integer.parseInt(request.getParameter("type"));
        String address = request.getParameter("address");
        iServiceCustomer.add(new Customer(customerCodeType, name, dOfB, gender, CMND, telephone, email, address));
        showListCustomer(request, response);

    }

    private void showFormAdd(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/customer/add.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    private void showListCustomer(HttpServletRequest request, HttpServletResponse response) {
        List<Customer> customers = iServiceCustomer.findAll();
        List<CustomerTypeTable> customerTypeTables = iServiceType.findAll();
        request.setAttribute("customer", customers);
        request.setAttribute("customerTypes", customerTypeTables);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/customer/list.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
