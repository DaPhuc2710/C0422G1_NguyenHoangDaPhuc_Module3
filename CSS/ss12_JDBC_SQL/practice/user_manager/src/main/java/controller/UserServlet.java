package controller;

import model.Users;
import service.IService;
import service.impl.ServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.DataInputStream;
import java.io.IOException;
import java.util.ArrayList;
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
            case "add":
                showAddForm(request, response);
                break;
            case "update": showUpdateUser(request,response);
                break;
            case "delete": deleteButton(request,response);
                break;
            case "sortByName":sortByName(request,response);
                break;
          case "findByCountry": showFindByCountry(request,response);
               break;
            default: showListUser(request,response);
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
    private void showAddForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/user/add.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    private void showUpdateUser(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher= request.getRequestDispatcher("view/user/update.jsp");
        try {
            requestDispatcher.forward(request,response);
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
   private void showFindByCountry(HttpServletRequest request, HttpServletResponse response) {
       String country = request.getParameter("country");
       List<Users> usersList = iService.findByCountry(country);
       RequestDispatcher requestDispatcher = null;
       if (usersList == null) {
           requestDispatcher = request.getRequestDispatcher("view/error.jsp");
       } else {
            request.setAttribute("users", usersList);
           requestDispatcher = request.getRequestDispatcher("view/user/list.jsp");
       }
       try {
           requestDispatcher.forward(request, response);
       } catch (ServletException e) {
            e.printStackTrace();
       } catch (IOException e) {
           e.printStackTrace();
        }
    }
    private void sortByName(HttpServletRequest request, HttpServletResponse response) {
        List<Users> usersList= iService.sortByName();
        RequestDispatcher requestDispatcher;
        if (usersList==null){
             requestDispatcher= request.getRequestDispatcher("view/error.jsp");
        }else {
            request.setAttribute("users",usersList);
            requestDispatcher= request.getRequestDispatcher("view/user/list.jsp");
        }
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
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
                saveAddUsers(request, response);
                break;
            case "update":
                saveUpdateUsers(request, response);
                break;
        }
    }
    private void saveAddUsers(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        Users users = new Users(name, email, country);
        request.setAttribute("users", users);
        iService.add(users);
        showListUser(request, response);
    }
    private void saveUpdateUsers(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        Users users = new Users(name, email, country);
        request.setAttribute("users", users);
        iService.update(id,users);
        showListUser(request, response);
    }

}
