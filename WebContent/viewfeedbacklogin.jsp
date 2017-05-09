<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="jquery.rating.css">
        <script src="jquery.js"></script>
        <script src="jquery.rating.js"></script>
<title>viewfeedback</title>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>
	<script type="text/javascript">
   		$(function() {    		
			
				$('p').html('<span class="stars">'+3+'</span>');
				$('span.stars').stars();
			   		
			
		});

		$.fn.stars = function() {
			return $(this).each(function() {
				$(this).html($('<span />').width(Math.max(0, (Math.min(5, parseFloat($(this).html())))) * 16));
			});
		}
	</script>
	<style type="text/css">
		span.stars, span.stars span {
			display: block;
			background: url('https://www.everythingfrontend.com/samples/star-rating/star.png') 0 -16px repeat-x;
			width: 80px;
			height: 16px;
		}
	
		span.stars span {
			background-position: 0 0;
		}
	</style>
</head>
 <style>
  body {
      font: 20px Montserrat, sans-serif;
      line-height: 1.8;
     background-color: #1abc9c;
  }
  p {font-size: 16px;}
  .margin {margin-bottom: 45px;}
  
  .container-fluid {
      padding-top: 70px;
      padding-bottom: 70px;
      background-color: #1abc9c; /* Green */
   color: #ffffff;
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
  table.ex1 {
    border-collapse: separate;
    border-spacing: 10px;
}
td
{
    padding:0 15px 0 15px;
}
 table.t {
    color: #191970;
}
  </style>
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
      <a class="navbar-brand" href="#">MakingFriends.com</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="home4.jsp"><input type ="submit" value ="HOME"/></a></li>
      </ul>
    </div>
  </div>
</nav>
<!-- First Container -->
<div class="container-fluid bg-1 text-center">
<table class="t" align="center" >
<tr>
<td>
<u>Average Rating</u> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</td>
<td>
<span class="stars">${avg}</span>
</td>
</tr>
</table>
 <table class="ex1" align="center" >
   <c:forEach var="viewfeedback" items="${feedback}" >
   <tr>
    <td>${viewfeedback.name}</td> 
    <td><span class="stars">${viewfeedback.userRating}</span></td>
    <td>${viewfeedback.userComment}</td>
    </tr>
</c:forEach>
</table>
</div>

</body>
</html>