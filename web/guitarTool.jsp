<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*" %>
  <!--<h3 style="color:DodgerBlue"><%=session.getAttribute("userId").toString() %></h3>-->
    <!DOCTYPE html>
<html lang="en">

<head>

    <title>Guitar Tools</title>
    <!-- Required meta tags always come first -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 500px;
  margin: auto;
  text-align: center;
  font-family: arial;
}
.card a:hover{
   color:white;
   opacity: 0.7;
}
.button {
  background-color:black; /* Green */
  border: none;
  color: white;
  padding: 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 3px;
}
.card button:hover {
  opacity: 0.7;

}
    </style>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/bootstrap-social.css">
    <link rel="stylesheet" href="styles.css">
</head>

<body>
    <nav class="navbar navbar-dark bg-dark navbar-expand-sm fixed-top">
        <div class="container">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#Navbar">
                <span class="navbar-toggler-icon"></span>
            </button> 
            <a class="navbar-brand" href="#"><img src="img/guitar-logo.png" height="30" width="41"></a>
            <div class="collapse navbar-collapse" id="Navbar">
                <ul class="navbar-nav mr-auto">
                        <li class="nav-item"><a class="nav-link" href="./index.html"><span class="fa fa-home fa-lg"></span> Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="aboutus.html"><span class="fa fa-info fa-lg"></span> About</a></li>
                        <li class="nav-item active"><a class="nav-link " href="./guitarTool.jsp"><span class="fa fa-list fa-lg"></span> Guitar Tools</a></li>
                        <li class="nav-item "><a class="nav-link" href="./contact.html"><span class="fa fa-address-card fa-lg"></span> Contact</a></li>
                </ul>
                <span class="navbar-text ml-3">
                          <a><h3 style="color:white"><strong><%=session.getAttribute("userId").toString() %></strong></h3></a>
                </span>
     
                <span class="navbar-text ml-3">
                        <form name="frm" method="post" action="killSession.jsp">
                          <!--<a id="logoutButton" type="submit" style="text-decoration: none" role="button" ><span class="fa fa-sign-out" ></span> Logout</a>-->
                       
                          <!--<button id="logoutButton" type="submit" style="color:white">Logout</button>-->
                          <button id="logoutButton" type="submit" class="btn btn-primary btn-sm ml-1">Logout</button> 
                        </form>
                </span>
            </div>
        </div>
    </nav>

                
      <div id="comment" class="modal fade" role="dialog">
        <div class="modal-dialog modal-lg" role="content">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" >Comment Section </h4>
                    <button type="button" class="close" style="color:white" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <form name="comt" method="post" action="commentCode.jsp" onsubmit="return checkComment(this)" role="form" >
                        
                                 <div class="form-group row">
					<div class="col-md-10">
                                            <textarea class="form-control" placeholder="please enter comments here...." id="text" name ="cmnt" rows="8"> </textarea>
					<input type="hidden" name="user">
                                        <input type="hidden" name="tool" >
                                        </div>
				  </div>
                         <div class="form-group row ml-1">
                          <button id="send" type="submit" class="btn btn-dark btn-sm">Send Comment</button> 
                          </div>
                        <br>
                        <div class="alert alert-warning alert-dimissible" role="alert">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                <strong>Warning:</strong> Please provide positive comments! to user
                                 
                        </div>
                     </form>
                           
                   </div>
                </div>
            </div>
      
    </div>
                
                
                
    <header class="jumbotron">
        <div class="container">
            <div class="row row-header">
                <div class="col-12 col-sm-6">
                    <h1>Acoustic Instruments</h1>
                    <p>An acoustic guitar is a guitar that produces sound acoustically by transmitting the vibration of the strings to the air?as opposed to relying on electronic amplification (see electric guitar). The sound waves from the strings of an acoustic guitar resonate through the guitar's body, creating sound. This typically involves the use of a sound board and a sound box to strengthen the vibrations of the strings. In standard tuning the guitar's six strings are tuned (low to high) E2 A2 D3 G3 B3 E4. </p>
                </div>
                 <div class="col-12 col-sm align-self-center">
                    <img src="img/guitar-logo.png" class="img-fluid">
                </div>
            </div>
        </div>
    </header>
   
    <div class="conatiner">
              <div class="row row-content align-items-center">
                  <div class="col-12 col-sm-6 col-md-4">
                 
			<div id="p1" class="card">
                         <img src="tools/tool1.jpg" alt="capo" style="width:100%">
                          <h3><b>Capo for 6-string acoustic guitars - Black</b></h3>
                             <div class="container"style="border:1px solid black; text-align: left;">
                                <h4>Description</h4>
                                <p> capo is expertly engineered and built to last. It is reliable and does just what it is designed to do - clearly raise the pitch of the 6-string acoustic guitar so you can play in a different key without retuning or changing fingering.</p>
                              </div><br>
                             <p style="background-color: black">
                                
                                 <a class="button " role="button" style="text-decoration:none;"  href="https://www.amazon.com/Kyser-Quick-Change-6-string-acoustic-guitars/dp/B0002CZVWI?imprToken=wi35IYLm93fBUnw4xaE81w&slotNum=15&psc=1&SubscriptionId=AKIAJCMD3KEMXV2GY62A&tag=gnmaster-20&linkCode=xm2&camp=2025&creative=165953&creativeASIN=B0002CZVWI">BUY</a>
                                  <button id="comnt1" class="button" type="submit">COMMENT</button>
                                   <button id="vcomnt1" class="button" type="submit">VIEW COMMENTS</button>
                              </p>
                         </div>
                   </div>
                  <div id="p2" class="col-12 col-sm-6 col-md-4">
                 
			<div class="card">
                         <img src="tools/tool2.jpg" alt=" Peg Winder" style="width:100%">
                          <h3><b>Battery Powered Peg Winder</b></h3>
                             <div class="container"style="border:1px solid black; text-align: left;">
                                <h4>Description</h4>
                                <p> The Power Peg pro is the latest edition to the motorized pegwinder family. Featuring a newly engineered wider head that fits all electric, bass and acoustic guitar tuning machines. Restring your instrument up to 80% faster than manual pegwinders.</p>
                              </div><br>
                             <p style="background-color: black">
                                
                                 <a class="button " role="button" style="text-decoration:none;"  href="https://aax-us-east.amazon-adsystem.com/x/c/QvpAQuPEcazuO9b3Bh-_DfAAAAFpoCTVrgEAAAFKASRQua8/https://assoc-redirect.amazon.com/g/r/https://www.amazon.com/Ernie-Ball-Battery-Powered-Winder/dp/B00FC2KREK?imprToken=wi35IYLm93fBUnw4xaE81w&slotNum=25&psc=1&SubscriptionId=AKIAJCMD3KEMXV2GY62A&tag=gnmaster-20&linkCode=xm2&camp=2025&creative=165953&creativeASIN=B00FC2KREK">BUY</a>
                                  <button id="comnt2" class="button" type="submit">COMMENT</button>
                                   <button id="vcomnt2" class="button" type="submit">VIEW COMMENTS</button>
                              </p>
                         </div>
                   </div>
                  <div id="p3" class="col-12 col-sm-6 col-md-4">
                 
			<div class="card">
                         <img src="tools/tool3.jpg" alt="capo" style="width:100%">
                          <h3><b>Pro-Winder Guitar String Winder and Cutter</b></h3>
                             <div class="container"style="border:1px solid black; text-align: left;">
                                <h4>Description</h4>
                                <p> The Bass Pro-Winder takes the user friendly and ergonomic elements of the original Pro-Winder and makes them applicable for both vintage and modern bass guitar tuning pegs. </p>
                              </div><br>
                             <p style="background-color: black">
                                
                                 <a class="button " role="button" style="text-decoration:none;"  href="https://aax-us-east.amazon-adsystem.com/x/c/QvpAQuPEcazuO9b3Bh-_DfAAAAFpoCTVrgEAAAFKASRQua8/https://assoc-redirect.amazon.com/g/r/https://www.amazon.com/DAddario-Accessories-Pro-Winder-Guitar-String/dp/B0002E1G5C?imprToken=wi35IYLm93fBUnw4xaE81w&slotNum=29&psc=1&SubscriptionId=AKIAJCMD3KEMXV2GY62A&tag=gnmaster-20&linkCode=xm2&camp=2025&creative=165953&creativeASIN=B0002E1G5C">BUY</a>
                                  <button id="comnt3" class="button" type="submit">COMMENT</button>
                                   <button id="vcomnt3" class="button" type="submit">VIEW COMMENTS</button>
                              </p>
                         </div>
                   </div>
               </div>
    </div>  
                
        <div class="conatiner">
              <div class="row row-content align-items-center">
                  <div class="col-12 col-sm-6 col-md-4">
                 
			<div id="p4" class="card">
                         <img src="tools/tool4.jpg" alt="capo" style="width:100%">
                          <h3><b>Tuner Choice of Luthiers</b></h3>
                             <div class="container"style="border:1px solid black; text-align: left;">
                                <h4>Description</h4>
                                <p> Optional Body Beat metronome features: Audio, Visual or Tactile tempo delivery modes Feel the beat from the optional vibration clip 4 different audio choices, Rims hot, Clave, Wood Block and Beep Feel or hear a variety of subdivisions and accent patterns 10 to 280 BPM tempo range.</p>
                              </div><br>
                             <p style="background-color: black">
                                
                                 <a class="button " role="button" style="text-decoration:none;"  href="https://aax-us-east.amazon-adsystem.com/x/c/QvpAQuPEcazuO9b3Bh-_DfAAAAFpoCTVrgEAAAFKASRQua8/https://assoc-redirect.amazon.com/g/r/https://www.amazon.com/Peterson-StroboPlus-Orchestral-Technicians-Manufacturers/dp/B00BJ6MWBO?imprToken=wi35IYLm93fBUnw4xaE81w&slotNum=5&psc=1&SubscriptionId=AKIAJCMD3KEMXV2GY62A&tag=gnmaster-20&linkCode=xm2&camp=2025&creative=165953&creativeASIN=B00BJ6MWBO">BUY</a>
                                  <button id="comnt4" class="button" type="submit">COMMENT</button>
                                   <button id="vcomnt4" class="button" type="submit">VIEW COMMENTS</button>
                              </p>
                         </div>
                   </div>
                  
                  <div class="col-12 col-sm-6 col-md-4">
                 
			<div id="p5" class="card">
                         <img src="tools/tool5.jpg" alt="capo" style="width:100%">
                         <h3><b> Clip-On Tuner for All Instruments</b></h3>
                             <div class="container"style="border:1px solid black; text-align: left;">
                                <h4>Description</h4>
                                <p> I?ve owned a ton of clip-on tuners and the UberTuner ranks up there in the top of the class in terms of speed, accuracy, and convenience." -PREMIER GUITAR MAGAZINE .</p>
                              </div><br>
                             <p style="background-color: black">
                                
                                 <a class="button " role="button" style="text-decoration:none;"  href="https://aax-us-east.amazon-adsystem.com/x/c/QvpAQuPEcazuO9b3Bh-_DfAAAAFpoCTVrgEAAAFKASRQua8/https://assoc-redirect.amazon.com/g/r/https://www.amazon.com/KLIQ-UberTuner-Clip-Instruments-Chromatic/dp/B00O4L3F9E?imprToken=wi35IYLm93fBUnw4xaE81w&slotNum=9&SubscriptionId=AKIAJCMD3KEMXV2GY62A&tag=gnmaster-20&linkCode=xm2&camp=2025&creative=165953&creativeASIN=B00O4L3F9E">BUY</a>
                                  <button id="comnt5" class="button" type="submit">COMMENT</button>
                                   <button id="vcomnt5" class="button" type="submit">VIEW COMMENTS</button>
                              </p>
                         </div>
                   </div>
                  <div id="p6" class="col-12 col-sm-6 col-md-4">
                 
			<div class="card">
                         <img src="tools/tool6.jpg" alt="capo" style="width:100%">
                          <h3><b>String Action Ruler Gauge</b></h3>
                             <div class="container"style="border:1px solid black; text-align: left;">
                                <h4>Description</h4>
                                <p> Fit for electric guitar, Bass , acoustic guitar,mandolin,banjo,etc. 2.With conversion chart of string action at 12th fret printed on one side. 3.With scale for string height, for ridge saddle slot depth and for nuts saddles and pole pieces.</p>
                             <p style="background-color: black">
                                
                                 <a class="button " role="button" style="text-decoration:none;"  href="https://www.amazon.com/String-Action-Forever-direct-Electric-Acoustic/dp/B00ZI3OQC2/ref=sr_1_8?keywords=guitar+tools&qid=1553197218&s=gateway&sr=8-8">BUY</a>
                                  <button id="comnt6" class="button" type="submit">COMMENT</button>
                                   <button id="vcomnt6" class="button" type="submit">VIEW COMMENTS</button>
                              </p>
                         </div>
                   </div>
               </div>
    </div>          
    
    <footer class="footer">
        <div class="container">
            <div class="row">             
                <div class="col-4 offset-1 col-sm-2">
                    <h5>Links</h5>
                    <ul class="list-unstyled">
                        <li><a href="index.html">Home</a></li>
                        <li><a href="aboutus">About</a></li>
                        <li><a href="guitarTool.jsp">Guitar Tools</a></li>
                        <li><a href="contact.html">Contact</a></li>
                    </ul>
                </div>
                <div class="col-7 col-sm-5">
                    <h5>Our Address</h5>
                    <address>
                        23, SGSITS College<br>
                        Yasvant Niwas Road,<br>
                        INDORE<br>
                      <i class="fa fa-phone fa-lg"></i>: +852 1234 5678<br>
                      <i class="fa fa-fax fa-lg"></i>: +852 8765 4321<br>
                      <i class="fa fa-envelope fa-lg"></i>: 
                      <a href="mailto:confusion@food.net">acousticinstruments@instrument.net</a>
		           </address>
                </div>
                <div class="col-12 col-sm-4 align-self-center">
                    <div class="text-center">
                        <a class="btn btn-social-icon btn-google" href="http://google.com/+"><i class="fa fa-google-plus"></i></a>
                        <a class="btn btn-social-icon btn-facebook" href="http://www.facebook.com/profile.php?id="><i class="fa fa-facebook"></i></a>
                        <a class="btn btn-social-icon btn-linkedin" href="http://www.linkedin.com/in/"><i class="fa fa-linkedin"></i></a>
                        <a class="btn btn-social-icon btn-twitter" href="http://twitter.com/"><i class="fa fa-twitter"></i></a>
                        <a class="btn btn-social-icon btn-google" href="http://youtube.com/"><i class="fa fa-youtube"></i></a>
                        <a class="btn btn-social-icon" href="mailto:"><i class="fa fa-envelope-o"></i></a>
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
   <script src="js/jquery.slim.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  <script>
    $(document).ready(function(){
                var user=document.forms["comt"]["user"];
                var tool=document.forms["comt"]["tool"];
                $('#comnt1').click(function() {
                      $('#comment').modal('toggle');
                      
                    // user.value= <%=session.getAttribute("userId").toString()%>;
                     tool.value=1;
                    
               });
               $('#comnt2').click(function() {
                      $('#comment').modal('toggle');
                   // user.value= <%=session.getAttribute("userId").toString() %>;
                     tool.value=2;
                 
               });
               $('#comnt3').click(function() {
                      $('#comment').modal('toggle');
             // user.value= <%=session.getAttribute("userId").toString() %>;
                     tool.value=3;
               });
               $('#comnt4').click(function() {
                      $('#comment').modal('toggle');
             //  user.value= <%=session.getAttribute("userId").toString() %>;
                     tool.value=4;
               });
               $('#comnt5').click(function() {
                      $('#comment').modal('toggle');
            //   user.value= <%=session.getAttribute("userId").toString() %>;
                     tool.value=5;
               });
               $('#comnt6').click(function() {
                      $('#comment').modal('toggle');
              // user.value= <%=session.getAttribute("userId").toString() %>;
                     tool.value=6;
               });
           
            });
        </script>
    
        <script>
          document.getElementById("vcomnt1").onclick=function(){
            var tid = 1;
            window.location.replace("viewComment.jsp?name="+tid);
          };
          document.getElementById("vcomnt2").onclick=function(){
               var tid = 2;
            window.location.replace("viewComment.jsp?name="+tid);
          };
          document.getElementById("vcomnt3").onclick=function(){
             var tid = 3;
            window.location.replace("viewComment.jsp?name="+tid);
          };
          document.getElementById("vcomnt4").onclick=function(){
              var tid = 4;
            window.location.replace("viewComment.jsp?name="+tid);
          };
          document.getElementById("vcomnt5").onclick=function(){
               var tid = 5;
            window.location.replace("viewComment.jsp?name="+tid);
          };
          document.getElementById("vcomnt6").onclick=function(){
          var tid = 6;
            window.location.replace("viewComment.jsp?name="+tid);
          };
          
          function checkComment()
          {
              var b=document.forms["comt"]["cmnt"];
           
               console.log(b);
                if(b.value === "")
               {
                   window.alert("please enter comment");
                    b.focus();
                    return false;
               }
               
               return true;
          }
          window.onsubmit=function(){
            if(success.value>0)
            {
                window.alert("Your Comment submitted!!");
            }
          };
          window.onbeforeunload=function(){
              window.location.replace("index.html");
          };
        </script>
    </body>

</html>
