import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", urlPatterns = {"/customer"})
public class CustomerServlet extends HttpServlet {
    private static List<Customer> customerList = new ArrayList<>();


    @Override
    public void init() throws ServletException {
        customerList.add(new Customer("Uchiha Sasuke", LocalDate.parse("2000-12-09"), "Team 7", "http://images5.fanpop.com/image/photos/25800000/SASUKE-naruto-shippuuden-sasuke-lovers-25857339-682-1000.jpg"));
        customerList.add(new Customer("Naruto", LocalDate.parse("2000-12-09"), "Team 7", "https://toppng.com/uploads/preview/naruto-11546802848rogubwc0j6.png"));
        customerList.add(new Customer("Sakura", LocalDate.parse("2000-12-09"), "Team 7", "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/84dc13b7-a2e7-4b45-83ec-311e72e82900/dd064it-68380028-93d8-4729-ba0d-87f8b85f914a.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzg0ZGMxM2I3LWEyZTctNGI0NS04M2VjLTMxMWU3MmU4MjkwMFwvZGQwNjRpdC02ODM4MDAyOC05M2Q4LTQ3MjktYmEwZC04N2Y4Yjg1ZjkxNGEucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.TlwZqIDBtuV_gOV8RPd-DPG2C6x4oYnkuCElYFz-FJY"));
        customerList.add(new Customer("Kakashi", LocalDate.parse("2000-12-09"), "Team 7", "https://i.pinimg.com/736x/08/6e/8e/086e8e2e0880262196afd94869a9efe2.jpg"));
        customerList.add(new Customer("Sai", LocalDate.parse("2000-12-09"), "Team 7", "https://www.pngitem.com/pimgs/m/49-491046_sai-naruto-png-transparent-png.png"));
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/customer/list.jsp");
        request.setAttribute("customerList",customerList);
        requestDispatcher.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}
