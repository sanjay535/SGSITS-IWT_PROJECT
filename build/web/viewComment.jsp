<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
 <html lang="en">

<head>

      <!-- Required meta tags always come first -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/bootstrap-social.css">
	<link rel="stylesheet" href="styles.css">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
        <style>
        .thumbnail {
    padding:0px;
}
.panel {
	position:relative;
}
.panel>.panel-heading:after,.panel>.panel-heading:before{
	position:absolute;
	top:11px;left:-16px;
	right:100%;
	width:0;
	height:0;
	display:block;
	content:" ";
	border-color:transparent;
	border-style:solid solid outset;
	pointer-events:none;
}
.panel>.panel-heading:after{
	border-width:7px;
	border-right-color:#f7f7f7;
	margin-top:1px;
	margin-left:2px;
}
.panel>.panel-heading:before{
	border-right-color:#ddd;
	border-width:8px;
}
        </style>
    <title>Acoustic Guitar</title>
</head>
<body>

    <nav class="navbar navbar-dark bg-dark  navbar-expand-sm fixed-top" style="margin-top: 0px;">
		
		<div class="container">

		 <a class="navbar-brand  mr-auto" href="index.html"><img src="img/guitar-logo.png" height="30" width="41"></a>
		  <span class="navbar-text ml-3">
                          <a  href="guitarTool.jsp" style="cursor: pointer; text-decoration: none;" role="button"><span class="fa fa-backward" ></span> Back</a>
                          </span>
                
		</div>
	
    </nav>

<%
int tid = Integer.parseInt(request.getParameter("name"));
String driverName = "com.mysql.jdbc.Driver";
System.out.println("tid="+tid);
try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
PreparedStatement ps = null;
ResultSet rs = null;
if(tid==0){
     
response.sendRedirect("guitarTool.jsp");}
else{

try{ 
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/iwt_project", "root", "sanjay");
ps=connection.prepareStatement("SELECT * FROM comment where toolID=?");
ps.setInt(1, tid);
rs = ps.executeQuery();
while(rs.next()){
%>
<div class="container">
<div class="row">
<div class="col-sm-12">
</div>
</div>
<div class="row">
<div class="col-sm-1">
<div class="thumbnail">
<img class="img-responsive user-photo" src="img/comment.png">
</div>
</div>

<div class="col-sm">
<div class="panel panel-default">
<div class="panel-heading">
<strong><%=rs.getString("username")%></strong> <span class="text-muted">commented 5 days ago</span>
</div>
<div class="panel-body">
 <p><%=rs.getString("comments") %></p>
</div>
</div>
</div>
</div>

</div>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
}
%>

   <footer class="footer">
        <div class="container">
            
            <div class="row">             
                <div class=" offset-1 col-sm-2">
                    <h5>Links</h5>
                    <ul class="list-unstyled">
                        <li><a href="#">Home</a></li>
                        <li><a href="aboutus.html">About</a></li>
                        <li><a href="#">Guitar Tools</a></li>
                        <li><a href="contact.html">Contact</a></li>
                    </ul>
                </div>
                <div class=" col-sm-5">
                    <h5>Our Address</h5>
                    <address>
		              23, SGSITS College<br>
		              Yasvant Niwas Road,<br>
		              INDORE<br>
		              <i class="fa fa-phone fa-lg"></i>: +852 1234 5678<br>
		              <i class="fa fa-fax fa-lg"></i>: +852 8765 4321<br>
		              <i class="fa fa-envelope fa-lg"></i>: <a href="mailto:confusion@food.net">acousticguitar@instruments.net</a>
		           </address>
                </div>
                <div class=" col-sm-4 align-self-center">
                    <div class="text-center">
                        <a class="btn btn-social-icon btn-google" href="http://google.com/+"><i class="fa fa-google-plus fa-lg"></i></a>
                        <a class="btn btn-social-icon btn-facebook" href="http://www.facebook.com/profile.php?id="><i class="fa fa-facebook fa-lg"></i></a>
                        <a class="btn btn-social-icon btn-linkedin" href="http://www.linkedin.com/in/"><i class="fa fa-linkedin fa-lg"></i></a>
                        <a class="btn btn-social-icon btn-twitter" href="http://twitter.com/"><i class="fa fa-twitter fa-lg"></i></a>
                        <a class="btn btn-social-icon btn-google" href="http://youtube.com/"><i class="fa fa-youtube fa-lg"></i></a>
                        <a class="btn btn-social-icon" href="mailto:"><i class="fa fa-envelope-o fa-lg"></i></a>
                    </div>
                </div>
           </div>
           <div class="row justify-content-center">             
                <div class="col-auto">
                    <p>© Copyright 2019 Acoustic Guitar</p>
                </div>
           </div>
        </div>
    </footer>
	    <!-- jQuery first, then Popper.js, then Bootstrap JS. -->
        <script>
       window.onbeforeunload = function (this) {

         window.location.replace("guitarTool.jsp");
       };
            </script>
    <script src="js/jquery.slim.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
   <script src="js/jquery.min.js"></script>

</body>
</html>