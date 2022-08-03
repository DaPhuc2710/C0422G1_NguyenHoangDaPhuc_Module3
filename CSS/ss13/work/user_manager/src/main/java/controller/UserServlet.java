package controller;

import jdk.nashorn.internal.ir.RuntimeNode;
import model.Users;
import service.IService;
import service.impl.ServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserServlet", urlPatterns = "/users")
public class UserServlet extends HttpServlet {
    IService iService = new ServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "update":
                showUpdateUser(request, response);
                break;
            case "delete":
                deleteButton(request, response);
                break;
            default:
                showListUser(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "update":
                saveUpdateUsers(request, response);
                break;
        }
    }

    private void showListUser(HttpServletRequest request, HttpServletResponse response) {
        List<Users> users = iService.findAll();
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/user/list.jsp");
        request.setAttribute("users", users);
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showUpdateUser(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Users user = iService.getUserById(id);
        request.setAttribute("users", user);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/user/update.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteButton(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        iService.delete(id);
        showListUser(request, response);
    }

    private void saveUpdateUsers(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        Users users = new Users(id, name, email, country);
        iService.update(users);
        showListUser(request, response);
    }

}
