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
<title>MEET</title>
</head>
<style>
table.ex1 {
    border-collapse: separate;
    border-spacing: 60px;
}
body {
      font: 20px Montserrat, sans-serif;
      line-height: 1.8;
      color: #f5f6f7;
  }
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
</style>
<c:if test="${not empty available}">
    <script>
    alert("Availability is set");
</script>
</c:if>
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
 <img src="https://media.tenor.co/images/b3f33ac02643a0a89f55e22a6d03e9b6/tenor.gif" class="img-responsive img-circle margin" style="display:inline" alt="people" width="400" height="300">   
<input type="hidden" name="uname" value='${uname}'/>
<table align ="Center" style="margin-top:0px" class = "ex1">
<tr>
<form action="settime" method="post">
<td><input type ="submit" name="Set Availability" button class ="btn btn-info" value ="Set Availability"/></td>
</form>
<form action="search" method="post">
<td><input type ="submit" name="Search" button class ="btn btn-info" value ="Search"/></td>
</form>
</tr>
<tr>
<form action="home" method="post">
<td align ="center"><input type ="submit" name="HOME" button class ="btn btn-info" value ="HOME"/></td>
</form>
</tr>
</table>
</div>
</div>
</body>
</html>