<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Home</title>
<style type="text/css"> <!---------------FEEDBACK TABLE FORMATTING------------->
th
{
    padding:0 15px 0 15px;
}
td
{
    padding:0 15px 0 15px;
}
form{
     margin:auto;
     display:block;
}
</style>
  
<style>
.btn {
    margin-right: 5px;
}
</style><!--------------------------FEEDBACK TABLE FORMATTING----------------->

<style>
  body {
      font: 20px Montserrat, sans-serif;
      line-height: 1.8;
      color: #f5f6f7;
  }
 #one{
 	margin-left: 100px;
}
#two{
	margin-left: 100px;
}
#three{
	margin-left: 100px;
}
  p {font-size: 16px;}
  .margin {margin-bottom: 45px;}
  .bg-1 { 
      background-color: orange; /* Green */
      color: #ffffff;
  }
  .bg-2 { 
      background-color: #474e5d; /* Dark Blue */
      color: #ffffff;
  }
  .bg-3 { 
      background-color: #ffffff; /* White */
      color: #555555;
  }
  .bg-4{
      background-color: #C0C0C0; /* Silver */
      color: #fff;
}
  .bg-5 { 
      background-color: #2f2f2f; /* Black grey*/
      color: #fff;
  }
  .container-fluid {
      padding-top: 70px;
      padding-bottom: 70px;
  }
  .navbar {
      padding-top: 15px;
      padding-bottom: 15px;
      border: 0;
      border-radius: 0;
      margin-bottom: 0;
      font-size: 12px;
      letter-spacing: 5px;
  }
  .navbar-nav  li a:hover {
      color: #1abc9c !important;
  }

* {box-sizing:border-box}
body {font-family: Verdana,sans-serif;}
.mySlides {display:none}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 13px;
  width: 13px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 5s;
  animation-name: fade;
  animation-duration: 5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
  </style>
</head>

<c:if test="${not empty updatedmessage}">
    <script>
    alert("Profile saved");
</script>
</c:if>

<body>

<!-- Navbar -->
<nav class="navbar navbar-default">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Welcome Home!</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><form action="profile" method="get"><input type ="submit" name="PROFILE" button class ="btn btn-info" value ="PROFILE"/></form></li>
        <li>&nbsp</li>
        <li><form action="logout" method="post"><input type ="submit" name="LOGOUT" button class ="btn btn-info" value ="LOGOUT"/></form></li>
      </ul>
    </div>
  </div>
</nav>

<!-- First Container -->
<div class="container-fluid bg-1">
  <h3 align ="left">Hello, </h3>
 <h3>${uname}</h3>

<div class="slideshow-container">

<div class="mySlides fade">
  <img src="http://static.life.dailymirror.lk/media/images/image_b60709c5a2.jpg" style="width:100%">
  <div class="text">Play!</div>
</div>

<div class="mySlides fade">
  <img src="http://spicelounge.com/wp-content/uploads/2013/04/friends1.jpg" style="width:100%">
  <div class="text">Party!</div>
</div>

<div class="mySlides fade">
  <img src="https://coverstoriesband.files.wordpress.com/2013/04/cropped-trio1.jpg" style="width:100%">
  <div class="text">Participate!</div>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex> slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 5000); // Change image every 5 seconds
}
</script>


 <table align ="Center" style="margin-top:50px" class = "ex1">
 <tr>
<td align="left"><form action="matchuser" method="post"><input type ="submit" name="MATCH" button class ="btn btn-info" value ="MATCH"/></form></td>
<td>&nbsp</td>
<td align="center"><form action="meet" method="post"><input type ="submit" name="MEET" button class ="btn btn-info" value ="MEET"/></form></td>
<td>&nbsp</td>
<td align="right"><form action="notification" method="post"><input type ="submit" name="NOTIFICATIONS" button class ="btn btn-info" value ="NOTIFICATIONS"/></form></td>
<td>&nbsp</td>
<td align="right"><form action="report" method="post"><input type ="submit" name="REPORT" button class ="btn btn-info" value ="REPORT"/></form></td>
<td>&nbsp</td>
<td align="right"><form action="FeedbackControl" method="post"><input type ="submit" name="FEEDBACK" button class ="btn btn-info" value ="FEEDBACK"/></form></td>
<td>&nbsp</td>
<td align="right"><form action="events" method="post"><input type ="submit" name="EVENTS" button class ="btn btn-info" value ="EVENTS"/></form></td>
</tr>
</table>
</div>

<!-- Third Container (Grid) -->
<div class="container-fluid bg-3 text-center">    
  <h3 class="margin"><u>Some Cool Special Features!</u></h3><br>
  <div class="row">
    <div class="col-sm-4">
      <p>You have the chance to match up to lots of potential friends!</p>
      <!--<a href="match.jsp"><img src="http://media.namx.org/images/webstatic/network/nam_network_285x195.jpg" class="img-responsive margin" style="width:200px" style="height:200px" id="one"></a>-->
 <form action="matchuser" method="post"><input type="image" src="http://media.namx.org/images/webstatic/network/nam_network_285x195.jpg" class="img-responsive margin" style="width:200px" style="height:200px" id="one" alt="Submit"></form>
   </div>
    <div class="col-sm-4"> 
      <p>Check your inbox for the latest notifications!</p>
      <!--<a href="notifications.jsp"><img src="http://megaicons.net/static/img/icons_sizes/8/178/256/buzz-message-outline-icon.png" class="img-responsive margin" style="width:200px" style="height: 200px" id="two"></a>-->
<form action="notification" method="post"><input type="image" src="http://megaicons.net/static/img/icons_sizes/8/178/256/buzz-message-outline-icon.png" class="img-responsive margin" style="width:200px" style="height:200px" id="two" alt="Submit"></form>    
</div>
    <div class="col-sm-4"> 
      <p>Don't be afraid to report malicious content!</p>
      <!--<a href="report.jsp"><img src="https://www.becker.edu/wp-content/uploads/2011/11/Campus-Police_Alerts-Notifications.jpg" class="img-responsive margin" style="width:200px" style="height: 200px" id="three"></a>-->
  <form action="report" method="post"><input type="image" src="https://www.becker.edu/wp-content/uploads/2011/11/Campus-Police_Alerts-Notifications.jpg" class="img-responsive margin" style="width:200px" style="height:200px" id="three" alt="Submit"></form>  
</div>
  </div>
</div>

<!------FOURTH CONTAINER-----------------------------------FOURTH CONTIANER--------------------------->
<div class="container-fluid bg-4 text-center">    
  <h3 class="margin"><u>Feedback</u></h3><br>
  <h4 class="margin">Check out the cool things our awesome users said about us!</h4>
<table border ="5" align="Center" >
   <tr>
   <th>USER</th>
   <th>FEEDBACK</th>
   </tr>
<c:forEach var="feedback" items="${feedback}">
   <tr>
    <td>${feedback.u}</td>
    <td>${feedback.f}</td>
   </tr>
</c:forEach>
</table>
</div>
<!------FOURTH CONTAINER-----------------------------------FOURTH CONTAINER--------------------------->


<!-- Footer -->
<footer class="container-fluid bg-5 text-center">
  <p>makingfriends @2017</p> 
</footer>

</body>
</html>