<%@page import="java.sql.PreparedStatement" %>      
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.util.Properties"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>

<%
    
         String username= request.getParameter("uname");
         boolean flag;
      final  String password=request.getParameter("pass");
        final  String email=request.getParameter("email");
          try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/iwt_project","root","sanjay");
        
        PreparedStatement st=con.prepareStatement("select username from  login where username=?");
        st.setString(1, username);
        ResultSet rs=st.executeQuery();//only for select query
        if(rs.next())
        {
            flag=false;
          response.sendRedirect("index.html"); 
           session.setAttribute("userExistOrNot", flag);
        }
        else
        {
         flag=true;
         session.setAttribute("userExistOrNot", flag);
        PreparedStatement st1=con.prepareStatement("insert into login values(?,?,?)");
        st1.setString(1,username);
         st1.setString(2, email);
        st1.setString(3, password);
         if(st1.executeUpdate()>0)
         {
            response.sendRedirect("successSignup.html");
		final String passwordHost = "rajeeb535";
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		Session sessione = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
			return new PasswordAuthentication(email, passwordHost);
			}
		  });
		try {
			Message message = new MimeMessage(sessione);
			message.setFrom(new InternetAddress("sanjaykumargautam535@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,
			InternetAddress.parse("sanjaykumargautam535@gmail.com"));
			message.setSubject("Acoustic Guitar");
			message.setContent("<html><body><div style=border: 5px solid green; padding:10px;>"+
                                "Dear <h3 style=color:red> <b>"+username+"</b>,</h3>"
				+ "<div class=conatiner>Welcome to acoustic guitar here"
                                +"you can see various instruments of "
                                +"guitar and you can also give feedback so"
                                +"we improved our resources."
				+"For more information <a href=https://www.guitarworld.com>Click here!</a><br><br>"
                                 +"Thank you!</div> </div></body></html>", "text/html");
			Transport.send(message);
                       
			//System.out.println("Done");
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}   
           }
        }
          }
          catch(Exception ex){
              ex.printStackTrace();
              
          }
       
         
        
%>

