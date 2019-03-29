<%-- 
    Document   : killSession
    Created on : 24 Feb, 2019, 1:08:00 PM
    Author     : HP
--%>
<%
if (session.getAttribute("userId") != null) { 
      session.setAttribute("emp_code", null);
    session.setAttribute("emp_name", null);
    session.setAttribute("emp_desig", null);
    session.setAttribute("emp_plant", null);
        session.invalidate();
        
        response.sendRedirect("index.html");
        System.out.println("Hello World!!!!");
        return;
    }
%>