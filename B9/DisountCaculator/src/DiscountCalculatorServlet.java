import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DiscountCalculatorServlet",urlPatterns = "/display-discount")
public class DiscountCalculatorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productDescription = request.getParameter("Description");
        float listPrice = Float.parseFloat(request.getParameter("ListPrice"));
        int discountPercent = Integer.parseInt(request.getParameter("Discount"));

        float discountAmount = listPrice * discountPercent / 100;
        float discountPrice = listPrice - discountAmount;

        PrintWriter printWriter = response.getWriter();
        printWriter.println("<html>");

        if (listPrice > 0 && discountPercent >= 0) {
            printWriter.println("<h1>Product description----" + productDescription + "</h1>");
            printWriter.println("<h1>Discount amount : " + discountAmount + "</h1>");
            printWriter.println("<h1>Discount price : " + discountPrice + "</h1>");
        } else
            printWriter.println("<h1> enter false </h1>");
        printWriter.println("</html>");
    }
}
