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
            case "jhhi":
                break;
            default:
                showListCustomer(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

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
