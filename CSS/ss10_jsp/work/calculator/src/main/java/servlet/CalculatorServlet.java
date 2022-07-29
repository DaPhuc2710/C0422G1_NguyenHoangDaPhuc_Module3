package servlet;

import model.CalculatorService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "servlet.CalculatorServlet", urlPatterns = {"/calculator"})
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher= request.getRequestDispatcher("view/calculator_101/result.jsp");
        requestDispatcher.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher= request.getRequestDispatcher("view/calculator_101/result.jsp");
        double firstOperand =Double.parseDouble(request.getParameter("firstOperand"));
        double secondOperand =Double.parseDouble(request.getParameter("secondOperand"));
        String operator= request.getParameter("operator");
        String error= null;
        double result=0;

        try {
             result= CalculatorService.calculator(firstOperand,secondOperand,operator);
        }catch (ArithmeticException a) {
            error=a.getMessage();
        }
        request.setAttribute("result",result);
        request.setAttribute("error",error);
        requestDispatcher.forward(request,response);

    }
}
