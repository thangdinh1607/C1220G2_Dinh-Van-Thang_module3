import com.sun.xml.internal.ws.api.model.wsdl.WSDLOutput;
import org.w3c.dom.ls.LSOutput;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CalculatorServlet", urlPatterns = "/index")
public class CalculatorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float firstOperand = Float.parseFloat(request.getParameter("first"));
        float secondOperand = Float.parseFloat(request.getParameter("second"));
        String operator = request.getParameter("operator");
        String exception = null;
        float result = 0;
        switch (operator) {
            case "addition":
                result = firstOperand + secondOperand;
                break;
            case "subtraction":
                result = firstOperand - secondOperand;
                break;
            case "multiplication":
                result = firstOperand * secondOperand;
                break;
            case "division":
                try {
//                    result = firstOperand / secondOperand;
                    if (secondOperand == 0) {
                        throw new ArithmeticException("asd");
                    }
                    result = firstOperand / secondOperand;
                } catch (ArithmeticException e) {
                    exception = "ttytyytytyt";
                }

                break;
        }
        request.setAttribute("ex", exception);
        request.setAttribute("resultFinal", result);
        request.setAttribute("firstOperand", firstOperand);
        request.setAttribute("secondOperand", secondOperand);
        request.getRequestDispatcher("Calculator.jsp").forward(request, response);
    }
}