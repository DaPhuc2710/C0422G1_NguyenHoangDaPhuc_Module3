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
        String productDescription= request.getParameter("Product Description");
        float listPrice = Float.parseFloat(request.getParameter("List Price"));
        float discountPercent = Float.parseFloat(request.getParameter("Discount Percent"));
        double discountAmount = listPrice * discountPercent * 0.01;
        double discountPrice= listPrice-discountAmount;
        PrintWriter printWriter= response.getWriter();
        printWriter.print("<html> ");
        printWriter.print("<h1> Miêu tả sản phẩm:"+productDescription+"</h1>");
        printWriter.print("<h1> Gía được giảm :"+discountAmount+"</h1>");
        printWriter.print("<h1> Gía giảm còn:"+discountPrice+"</h1>");
        printWriter.print("</html>");



    }
}
