
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.DriverManager" %>
<%
 
         String  fname=request.getParameter("firstname");
         String lname=request.getParameter("lastname");
        
         String  email=request.getParameter("emailid");
         String  fback=request.getParameter("fback");
         try{
        
         int acode=Integer.parseInt(request.getParameter("areacode"));
        long tnum=Long.parseLong(request.getParameter("telnum"));
         Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/iwt_project","root","sanjay");
       
        PreparedStatement st=con.prepareStatement("insert into feedback values(?,?,?,?,?,?)");
        st.setString(1, fname);
        st.setString(2, lname);
          st.setInt(3, acode);
            st.setLong(4, tnum);
              st.setString(5, email);
                st.setString(6, fback);
           st.executeUpdate();
        }
         catch(Exception  ex){
         ex.printStackTrace();
         response.sendRedirect("contact.html");
         }
     
%>

