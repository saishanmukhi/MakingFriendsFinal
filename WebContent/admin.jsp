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
<title>ADMIN</title>
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
 <div class = "page-header">
    <div class="btn-toolbar pull-right">
    	<table align ="right" style="margin-top:10px" class = "ex1">
    	<tr>
		<form action="logout" method="post">
		<td><input type ="submit" name="LOGOUT" button class ="btn btn-info" value ="LOGOUT"/></td>
		</form>
         </tr>
        </table>
    </div>
<div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" align="left" href="#">MakingFriends.com</a>
    </div>
     </div>
<div class="container-fluid bg-1 text-center">
<input type="hidden" name="uname" value='${uname}'/>

<h3 align="center">Users Reported</h3> 
 
 <table border ="5">

   <tr>
   <th>User Name</th>
   <th>Crook</th>
   <th>Reason</th>
   <th>Count</th>
   </tr>
   <c:forEach var="reports" items="${reports}" >
   <tr>
    <td>${reports.userName}</td>
    <td>${reports.reportedUserName}</td>
    <td>${reports.reason}</td>
    <td>${reports.count}</td>
    </tr>
	</c:forEach>
<tr>
</table>
<table>
<form action="ReportedUser" method="post">
<td><input type ="submit" name="TAction" button class ="btn btn-info" value ="Take Action"/></td>
</form>
</table>
</div>
</body>
</html>