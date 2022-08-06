package controller;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;


@WebServlet(name = "CustomerServlet", urlPatterns = "/Customer")
public class CustomerServlet extends HttpServlet {
    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String action=request.getParameter("action");
//        if (action==null){
//            action="";
//        }
//        switch (action){
//            case "" :
//                break;
//            default: showListCustomer(request,response);
//        }
//
//
//    }

//    private void showListCustomer(HttpServletRequest request, HttpServletResponse response) {
//        IService iService= new ServiceImpl();
//        IServiceType iServiceType= new IServiceTypeImpl();
//        List<Customer> customers=iService.findAll();
//        List<CustomerType> customerTypes =iServiceType.findAll();
//        request.setAttribute("customer",customers);
//        request.setAttribute("customerTypes",customerTypes);
//        RequestDispatcher requestDispatcher= request.getRequestDispatcher("/view/customer/list.jsp");
//        try {
//            requestDispatcher.forward(request,response);
//        } catch (ServletException e) {
//            e.printStackTrace();
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//    }

//    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
