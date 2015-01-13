package net.randomant;

import javax.servlet.annotation.WebServlet;
import java.io.IOException;


@WebServlet(
        name = "fortuneServlet",
        urlPatterns = "/fortuneServlet",
        loadOnStartup = 1
)
public class HelloServlet extends javax.servlet.http.HttpServlet {

    @Override
    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response)
            throws javax.servlet.ServletException, IOException {

        String fortune;

        // Determine the users fortune based on his/her birth year
        if (request.getParameter("birthYear").equals("even")) {
            fortune =  "You will live a long, peaceful life because you always sleep well at night knowing your ";
            fortune += "infrastructure configuration is stored safely away in source control.";
        } else if (request.getParameter("birthYear").equals("odd")) {
            fortune =  "You will be properous and successful because your software development team is so productive.  ";
            fortune += "They spend all their time coding, instead of debugging configuration-related problems.";
        } else {
            fortune  = "You will experience a stormy road ahead, as the DevOps spirits look down on people who ";
            fortune += "hack the query string.";
        }

        // Forward the fortune to the view that will display it to the user
        request.setAttribute("fortune", fortune);
        request.getRequestDispatcher("/WEB-INF/jsp/view/revealFortune.jsp").forward(request, response);
    }
}
