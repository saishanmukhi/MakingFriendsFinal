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
<title>REPORT</title>
</head>
<style>
.btn {
    margin: 10px auto;
}
table.ex1 {
    border-collapse: separate;
    border-spacing: 10px;
}
</style>
<body>
<script>

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
    <table align="center">
<tr>
<form action="admin" method="post">
<td><input type ="submit" name="HOME" button class ="btn btn-info" value ="HOME"/></td>
</form>
</tr>
</table>   	

<table class = "ex1">
<form action="TakeAction" method="post">
<tr>
<th>Username</th>
	<td><select name ="user1">
	<option>select</option>
	 <c:forEach var="li" items="${users}" >
	<option>${li}</option>
	</c:forEach>
	</select>
	</td>
</tr>
<tr>

<td><input type ="submit"  value ="SUBMIT"/></td>

</tr>
</form>
</table>
</form>

</div>
</body>
</html>