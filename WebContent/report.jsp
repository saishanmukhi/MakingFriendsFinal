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
function myfunction(){
	var rea = document.getElementById("reason");
	rea.onchange = function(){
	
		var un = document.getElementById("usernames");
	if(un.value.length > 0) {
	
	document.getElementById("submit").disabled = false;
	}
	}
	
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
    <table align="center">
<tr>
<form action="home" method="post">
<td><input type ="submit" name="HOME" button class ="btn btn-info" value ="HOME"/></td>
</form>
</tr>
</table>   	
<form action="report1" method="post">
<table class = "ex1">
<tr>
<th>Username</th>
	<td><select name ="usernames" id ="usernames">
	 <c:forEach var="map" items="${map}" >
	<option>${map.key}</option>
	</c:forEach>
	</select>
	</td>
</tr>
<tr>
<th>Reason</th>
	<td><input type ="text" name ="reason" onclick="myfunction()" id ="reason"/></td>
</tr>
<tr>
<div class="col-md-4 text-center">
<td><input type ="submit" name="REPORT" button class ="btn btn-info" value ="REPORT" disabled="disabled" id ="submit"/></td>
</tr>
</div>
<tr>
<td><input type="hidden" name="uname" value='${uname}'/></td>
</tr>
</table>
</form>

</div>
</body>
</html>