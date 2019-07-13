package SimpleHelloServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "SimpleHelloServlet", urlPatterns = {"/simple-hello"})
public class SimpleHelloServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String firstname = request.getParameter("firstname");
        String name = request.getParameter("lastname");
        String heure = request.getParameter("heure");
        String dayTime;

        String[] heures = heure.split("h");
        int heureH = Integer.parseInt(heures[0]);

        if (heureH >= 4 && heureH < 13){
            dayTime = "Good morning ";
        }else if(heureH >= 13 && heureH < 21){
            dayTime = "Good evening ";
        }else {
            dayTime = "Good night ";
        }

        String message = dayTime + firstname + " " + name;

        request.setAttribute( "message", message );
        this.getServletContext().getRequestDispatcher( "/custom-hello.jsp" ).forward( request, response );
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //PrintWriter out = response.getWriter();
        //out.print("Simple hello!");
    }
}
