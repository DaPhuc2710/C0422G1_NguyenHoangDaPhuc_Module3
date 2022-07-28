import model.Calculator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CalculatorServlet", urlPatterns = {"/calculator"})
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher= request.getRequestDispatcher("result.jsp");
        requestDispatcher.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher= request.getRequestDispatcher("result.jsp");
        double firstOperand =Double.parseDouble(request.getParameter("firstOperand"));
        double secondOperand =Double.parseDouble(request.getParameter("secondOperand"));
        String operator= request.getParameter("operator");
        double result= Calculator.calculator(firstOperand,secondOperand,operator);
        request.setAttribute("result",result);
        requestDispatcher.forward(request,response);

    }
}
