
<%@page import="java.sql.PreparedStatement" %>      
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">


<%
    
         String comment= request.getParameter("cmnt");
      // String uname=request.getParameter("user");
        String uname=session.getAttribute("userId").toString();
        int tid=Integer.parseInt(request.getParameter("tool"));
          
            System.out.println(tid+"  "+uname);
           
          try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/iwt_project","root","sanjay");
        
        PreparedStatement st=con.prepareStatement("insert into comment values(?,?,?)");
        st.setString(1, comment);
         st.setInt(2, tid);
        st.setString(3, uname);
       st.executeUpdate();//only for select query
        
        
                }
          catch(Exception ex){
              ex.printStackTrace();
              
          }
          
         
        
%>

</html>