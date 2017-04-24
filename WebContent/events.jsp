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
<title>EVENTS</title>
</head>

<style type="text/css">
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
    margin: 15px auto;
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
table{
	margin: 0 auto;
}
table.ex1 {
    border-collapse: separate;
    border-spacing: 10px;
}
</style>
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

<h3 align="center">EVENTS</h3> 
<table border ="5" align="Center" >
   <tr>
   <th>Host</th>
   <th>Location</th>
   <th>From</th>
   <th>To</th>
   <th>Description</th>
   </tr>
<c:forEach var="event" items="${events}">
   <tr>
    <td>${event.n}</td>
        <td>${event.l}</td>
        <td>${event.f}</td>
        <td>${event.t}</td>
        <td>${event.d}</td>

   </tr>
</c:forEach>
</table>
<table align="Center" class = "ex1">
<tr>
    <tr>
    <td><form action="createevent.jsp">
    <input type="submit" value="ADD EVENTS" />
    </form></td>
    </tr>
</table>
</div>
</body>
</html>