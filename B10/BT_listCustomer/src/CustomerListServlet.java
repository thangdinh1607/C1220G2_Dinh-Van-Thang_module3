import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerListServlet", urlPatterns = "")
public class CustomerListServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> customerList = new ArrayList<>();

        customerList.add(new Customer("Mai Van Hoan", "2000-11-11", "Ha Noi", "https://i.pinimg.com/474x/d5/f3/53/d5f35325a030ad5ab9af33e411b1d9f1.jpg"));
        customerList.add(new Customer("Mai Van a", "2000-11-11", "SaiGon", "https://i.vietgiaitri.com/2018/11/27/top-12-hinh-anh-nhung-hotgirlnguoi-dep-o-khap-noi-cuc-xinh-dep-v-023410.jpg"));
        customerList.add(new Customer("Mai Van b", "2000-11-11", "Da Nang", "https://123anhdep.net/wp-content/uploads/2016/04/bst-hinh-anh-nguoi-mau-ngoc-trinh-goi-cam-khoe-duong-cong-nong-bong-trong-vay-trang-tinh-khoi-1.jpg"));

        request.setAttribute("customerListServlet", customerList);
        request.getRequestDispatcher("list_customer_jstl.jsp").forward(request, response);
    }
}
