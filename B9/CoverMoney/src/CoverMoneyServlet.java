import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CoverMoneyServlet",urlPatterns = "/cover")
public class CoverMoneyServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float vnd = Float.parseFloat(request.getParameter("rate")) ;
        float usd = Float.parseFloat(request.getParameter("usd")) ;

        float result = vnd*usd;
        PrintWriter printWriter = response.getWriter();
        printWriter.println("<html>");
        printWriter.println("<h1>VND : "+vnd + "<h1>" );
        printWriter.println("<h1>USD : "+usd + "<h1>" );
        printWriter.println("<h1>RESULT : "+result + "<h1>" );
        printWriter.println("<html>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
