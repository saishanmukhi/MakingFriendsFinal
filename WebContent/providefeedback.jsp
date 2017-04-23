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
</style>
 
</head>
<body>
<div class="container">
<div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" align="left" href="#">MakingFriends.com</a>
    </div>    	
<div class="container-fluid bg-1 text-center"> 
<h3>FEEDBACK</h3> 
<form action="providefeedback" method="post">
<table class = "ex1">
<tr>
<th>RATINGS</th>
	<td><input type = "radio" name ="rating" value ="1" /></td>
	<td><input type = "radio" name ="rating" value ="2" /></td>
	<td><input type = "radio" name ="rating" value ="3" /></td>
	<td><input type = "radio" name ="rating" value ="4" /></td>
	<td><input type = "radio" name ="rating" value ="5" /></td>
</tr>
</table>
<table class="ex1">
<tr>
<th>COMMENT</th>
	<td><input type = "text" name = "comment"/></td>
</tr>
<tr>
<td align="center"><input type ="submit" value ="SUBMIT"/></td>
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