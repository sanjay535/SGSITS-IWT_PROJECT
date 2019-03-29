<%@page import="java.sql.PreparedStatement" %>      
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.DriverManager" %>

<%
    
         String uname= request.getParameter("uname");
        String pass=request.getParameter("pass");
       // System.out.println(username);
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/iwt_project","root","sanjay");
        PreparedStatement st=con.prepareStatement("select username,password from  login where username=? and password=?");
        st.setString(1,uname);
        st.setString(2, pass);
        ResultSet rs=st.executeQuery();//only for select query
        if(rs.next())
        {
        response.sendRedirect("guitarTool.jsp");
        session.setAttribute("userId", uname);
        }
       else
        {
        response.sendRedirect("index.html");
         
        }
%>

