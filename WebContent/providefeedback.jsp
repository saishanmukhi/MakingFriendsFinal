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
<title>Feedback</title>
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <link rel="stylesheet" href="jquery.rating.css">
        <script src="jquery.js"></script>
        <script src="jquery.rating.js"></script>
      <style>
table.ex1 {
    border-collapse: separate;
    border-spacing: 10px;
  
}

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
  input[type="radio"]{
  margin: 0 20px 0 20px;
  
}
h3{
    color: #3399ff;
    }
</style>
 
</head>
<body>
<script>
function myfunction(){
	document.getElementById("submit").disabled = false;
}

</script>
<div class="container">
<div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" align="left" href="#">MakingFriends.com</a>
    </div>  
    <div class = "page-header">
    <div class="btn-toolbar pull-right">
    	<table align ="right" style="margin-top:10px" class = "ex1">
    	<tr>
        <form action="home" method="post">
		<td><input type ="submit" name="HOME" button class ="btn btn-info" value ="HOME"/></td>
		</form>
         </tr>
        </table>
    </div>
 </div>  	
<div class="container-fluid bg-1 text-center"> 
<h3>FEEDBACK</h3> 
<form action="providefeedback" method="post">
<table class = "ex1" align="Center">
<tr>
<th>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</th>
<td><label for="1">1</label> </td>
<td><label for="2">2</label> </td>
<td><label for="3">3</label> </td>
<td><label for="4">4</label> </td>
<td><label for="5">5</label> </td>
</tr>
<tr>
<th>RATINGS</th>
	
	<td><input type = "radio" name ="rating" id ="1" value ="1"   onclick="myfunction()"/></td>
	<td><input type = "radio" name ="rating" id ="2" value ="2"  onclick="myfunction()"/></td>
	<td><input type = "radio" name ="rating" id ="3" value ="3"   onclick="myfunction()"/></td>
	<td><input type = "radio" name ="rating" id ="4" value ="4"  onclick="myfunction()"/></td>
	<td><input type = "radio" name ="rating" id ="5" value ="5"   onclick="myfunction()"/></td>
</tr>
</table>
<table class="ex1" align="Center">
<tr>
<th>COMMENT</th>
	<td><input type = "text" name = "comment"/></td>
</tr>
</table>
<table class="ex1" align="Center">
<tr>
<td align="center"><input type ="submit" button class ="btn btn-info" value ="SUBMIT" disabled="disabled" id ="submit"/></td>
</tr>
<tr>
<td><input type="hidden" name="uname" value='${uname}'/></td>
</tr>
</table>
</form>
</div>
</div>
</body>
</html>