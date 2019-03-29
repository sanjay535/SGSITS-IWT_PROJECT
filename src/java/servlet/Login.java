
package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Login", urlPatterns = {"/servlet/Login"})
public class Login extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     String uname= request.getParameter("uname");
        String pass=request.getParameter("pass");
        System.out.println("priyanshu");
        if(uname.equals("sanjay") || pass.equals("123"))
            response.sendRedirect("GuitarTool.jsp");
    }

 
}
