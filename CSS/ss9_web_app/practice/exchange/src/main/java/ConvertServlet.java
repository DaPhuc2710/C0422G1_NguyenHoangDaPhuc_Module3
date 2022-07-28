import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ConvertServlet", urlPatterns= {"/convert"})
public class ConvertServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float rate = Float.parseFloat(request.getParameter("rate"));
        float usd= Float.parseFloat(request.getParameter("usd"));
        float vnd= usd*rate;
        PrintWriter printWriter= response.getWriter();
        printWriter.print("<html>");
        printWriter.print("<h1>Rate:"+rate+"</h1>");
        printWriter.print("<h1>USD:"+usd+"</h1>");
        printWriter.print("<h1>VND:"+vnd+"</h1>");
        printWriter.print("</html>");


    }
}
