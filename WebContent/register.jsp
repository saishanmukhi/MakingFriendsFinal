<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="utf-8">
<meta name="viewport" content="width = device-width, initial-scale = 1">
<title>SIGN UP</title>
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.page-header{
	text-align: center;
}
</style>
<style>
  body {
      font: 20px Montserrat, sans-serif;
      line-height: 1.8;
    
  }
  p {font-size: 16px;}
  .margin {margin-bottom: 45px;}
  
 
  
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
      background-color: #87CEEB;
  }
 
  .navbar-nav  li a:hover {
      color: #1abc9c !important; 
  }
  h3{
    margin-left: 500px;
  }
  #myNavbar
  {
    backgroung-color : #87CEEB;
  }
  
  </style>
</head>


<body>
<script>
function myfunction(){
	document.getElementById("signup").disabled = false;
	document.getElementById("check").disabled = true;
}

</script>
<c:if test="${not empty Errormessage}">
    <script>
   
    alert(<c:out value="${Errormessage}" />);
</script>
</c:if>
<div class="container">
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
      <h3  style="color:#FA8072" >SIGN UP</h3>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="index1.jsp"><input type ="submit" value ="BACK"/></a></li>
      </ul>
    </div>
  </div>
</nav>

<form action="reg" method="post">
<table align="Center" style="margin-top:20px">
<tr>
<th>NAME</th>
	<td><input type = "text" name = "name"/></td>
</tr>
<tr>
<th>EMAIL</th>
	<td><input type ="text" name ="email" placeholder="abc@uncc.edu"/></td>
</tr>
<tr>
<th>DATE_OF_BIRTH</th>
	<td><input type ="text" name = "dob" placeholder="mm/dd/yyyy"/></td>
</tr>
<tr>
<th>INTERESTS</th>
</tr>
<tr>
<td><input type = "checkbox" name ="sports" value ="Sports"/>Sports</td>
<td><input type = "checkbox" name ="animation" value ="Animation"/>Animation</td>
<td><input type = "checkbox" name ="music" value ="Music"/>Music</td>
</tr>
<tr>
<td><input type = "checkbox" name ="books" value ="Books"/>Books</td>
<td><input type = "checkbox" name ="videogames" value ="Video Games"/>Video Games</td>
<td><input type = "checkbox" name ="travel" value = "Travel"/>Travel</td>
</tr>
<tr>
<td><input type = "checkbox" name ="fitness" value ="Fitness"/>Fitness</td>
<td><input type = "checkbox" name ="boardgames" value ="Board Games" />Board Games</td>
<td><input type = "checkbox" name ="food" value ="Food"/>Food</td>
</tr>
<tr>
<td><input type = "checkbox" name ="tvmovies" value ="TV/Movies"/>TV/Movies</td>
<td><input type = "checkbox" name ="youtubemedia" value ="Youtube/Media" />Youtube/Media</td>
<td><input type = "checkbox" name ="arts" value ="Arts"/>Arts</td>
</tr>
<tr>
<th>ADDRESS</th>
	<td><input type = "text" name = "address"/></td>
</tr>
<tr>
<th>USERNAME</th>
	<td><input type = "text" name = "username"/></td>
</tr>
<tr>
<th>PASSWORD</th>
	<td><input type = "password" name = "password"/></td>
</tr>
<tr>
<th>CONFIRM PASSWORD</th>
	<td><input type = "password" name = "confirmpassword"/></td>
</tr>
<tr>
<td align="left"><input type = "checkbox" onclick="myfunction()" name ="agree" id="check"/> I agree to the <a href = "terms.jsp"/>Terms&Conditions</td>
</tr>
</table>
<table align ="Center">
<tr>
<td align="center"><input type ="submit" disabled="disabled" value ="SUBMIT" id ="signup"/></td>
</tr>
</table>
</form>
</div>
</body>
</html>