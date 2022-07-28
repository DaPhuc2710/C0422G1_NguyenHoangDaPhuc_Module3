import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DiscountServlet", urlPatterns = {"/display-discount"})
public class DiscountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productDescription= request.getParameter("ProductDescription");
        float listPrice = Float.parseFloat(request.getParameter("ListPrice"));
        float discountPercent = Float.parseFloat(request.getParameter("DiscountPercent"));
        double discountAmount = listPrice * discountPercent * 0.01;
        double discountPrice= listPrice-discountAmount;
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("result.jsp");
        request.setAttribute("ProductDescription",productDescription);
        request.setAttribute("DiscountAmount",discountAmount);
        request.setAttribute("DiscountPrice",discountPrice);
        requestDispatcher.forward(request,response);



    }
}
