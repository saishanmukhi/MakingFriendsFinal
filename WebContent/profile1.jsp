<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="utf-8">
<meta name="viewport" content="width = device-width, initial-scale = 1">
<title>PROFILE</title>
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
  
  }
 
  .navbar-nav  li a:hover {
      color: #1abc9c !important; 
  }
  h3{
    margin-left: 500px;
  }
  #myNavbar
  {
    
  }
  table.ex1 {
    border-collapse: separate;
    border-spacing: 10px;
    margin: 0 auto;
}
  </style>
</head>

<c:if test="${not empty loginError}">
    <script>alert("Enter valid Details.Try Again!");
</script>
</c:if>
<body>
<form action="profile" method="post">
<div class="page-header">
<input type ="button" class ="btn btn-info" value ="EDIT" disabled="disabled" id ="EDIT"/>
</div>
<table align ="Center" class="ex1">
<tr>
<th>NAME</th>
	<td><input type = "text" name = "name"  value='${pname}' id="name" /></td>
</tr>
<tr>
<th>EMAIL</th>
	<td><input type ="text" name ="email"   value='${pemail}' id="email"  placeholder="abc@uncc.edu"/></td>
</tr>
<tr>
<th>DATE_OF_BIRTH</th>
	<td><input type ="text" name = "dob"   value='${pdob}' disabled="disabled" id="dob" placeholder="mm/dd/yyyy"/></td>
</tr>
<tr>
<th>INTERESTS</th>
</tr>

<tr>
<td align="left"><input type = "checkbox" name ="sports" value ="Sports"/>Sports</td>
<td align="center"><input type = "checkbox" name ="animation" value ="Animation"/>Animation</td>
<td align="right"><input type = "checkbox" name ="music" value ="Music"/>Music</td>
</tr>
<tr>
<td align="left"><input type = "checkbox" name ="books" value ="Books"/>Books</td>
<td align="center"><input type = "checkbox" name ="videogames" value ="Video Games"/>Video Games</td>
<td align="right"><input type = "checkbox" name ="travel" value = "Travel"/>Travel</td>
</tr>
<tr>
<td align="left"><input type = "checkbox" name ="fitness" value ="Fitness"/>Fitness</td>
<td align="center"><input type = "checkbox" name ="boardgames" value ="Board Games" />Board Games</td>
<td align="right"><input type = "checkbox" name ="food" value ="Food"/>Food</td>
</tr>
<tr>
<td align="left" ><input type = "checkbox" name ="tvmovies" value ="TV/Movies"/>TV/Movies</td>
<td align="center"><input type = "checkbox" name ="youtubemedia" value ="Youtube/Media" />Youtube/Media</td>
<td align="right"><input type = "checkbox" name ="arts" value ="Arts"/>Arts</td>
</tr>
<tr>
<th>ADDRESS</th>
	<td><input type = "text" name = "address"  value='${paddress}' id="address" ></td>
</tr>
<tr>
<th>USERNAME</th>
	<td><input type = "text" name = "username" disabled="disabled" value ='${uname}'></td>
</tr>
<tr>
<th>PASSWORD</th>
	<td><input type = "password" name = "password" placeholder="******"  value='${ppassword}' id="password"/></td>
</tr>
<tr>
<th>CONFIRM PASSWORD</th>
	<td><input type = "password" name = "confirmpassword" placeholder="******" value='${ppassword}' id="cpassword" /></td>
</tr>
<tr>
<td align="center"><input type ="submit" class ="btn btn-info" value ="SUBMIT"  id ="submit"/></td>
</tr>
</table>
</form>
</body>
</html>