package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AgeCalculatorServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        getServletContext().getRequestDispatcher("/WEB-INF/agecalculator.jsp").forward(request, response);

        return;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userAge = request.getParameter("age");
        int age;

        // check validity of entry
        if (userAge == null || userAge.equals("")) {
            request.setAttribute("message", "You must give your current age");

  
            reloadPage(request, response);
            return;
        }

        // convert user enter to a num
        try {
            age = Integer.parseInt(userAge);
            if (age < 0 || age > 125) {
                request.setAttribute("message", "Please enter a positive number between 1 and 125.");

                reloadPage(request, response);
                return;
            }
            age++;

            request.setAttribute("message", String.format("Your age next birthday will be %d", age));

            reloadPage(request, response);
            return;

        } catch (NumberFormatException e) {
            System.err.println(e.getStackTrace());
            request.setAttribute("message", "You must enter a number.");
 
            reloadPage(request, response);
            return;
        }
    }

    /**
     * Used to reload the page according to the post request conditions
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException 
     */
    protected void reloadPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        getServletContext().getRequestDispatcher("/WEB-INF/agecalculator.jsp").forward(request, response);
        return;
    }
}
