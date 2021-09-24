package Servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ArithmeticCalculatorServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String message = "--";

        request.setAttribute("answer", message);
        getServletContext().getRequestDispatcher("/WEB-INF/arithmeticcalculator.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get values from the request
        String first = request.getParameter("first");
        String second = request.getParameter("second");
        String operation = request.getParameter("operation");
        String invalid = "invalid";

        int val1, val2, answer;

        // used as a flag to assign parameters 0= no issue, 1= first missin 2= second missin =3 both
        if (first == null || first.equals("") || second == null || second.equals("")) {
            request.setAttribute("answer", invalid);

            // set attributes 
            request.setAttribute("first", first);
            request.setAttribute("second", second);
            reloadPage(request, response);
            return;
        } else {
            try {
                val1 = Integer.parseInt(first);
                val2 = Integer.parseInt(second);

                request.setAttribute("first", first);
                request.setAttribute("second", second);

                switch (operation) {
                    case "+":
                        answer = val1 + val2;
                        request.setAttribute("answer", String.format("%d", answer));
                        reloadPage(request, response);
                        return;
                    case "-":
                        answer = val1 - val2;
                        request.setAttribute("answer", String.format("%d", answer));
                        reloadPage(request, response);
                        return;
                    case "*":
                        answer = val1 * val2;
                        request.setAttribute("answer", String.format("%d", answer));
                        reloadPage(request, response);
                        return;
                    case "%":
                        answer = val1 % val2;
                        request.setAttribute("answer", String.format("%d", answer));
                        reloadPage(request, response);
                        return;
                    default:
                        request.setAttribute("answer", invalid);
                        reloadPage(request, response);
                        return;
                }

            } catch (NumberFormatException e) {
                System.out.println(e);
                request.setAttribute("first", first);
                request.setAttribute("second", second);
                 request.setAttribute("answer", invalid);
                reloadPage(request, response);
            }
        }

        System.out.println("First = " + first + " Second = " + second + " operation = " + operation);
        // reload the page
        reloadPage(request, response);

    }

    /**
     * Used to reload the page according to the post request conditions
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    protected void reloadPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        getServletContext().getRequestDispatcher("/WEB-INF/arithmeticcalculator.jsp").forward(request, response);
        return;
    }
}
