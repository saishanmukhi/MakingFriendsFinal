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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.timepicker.css"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.timepicker.min.js"></script>
 
<title>CREATE EVENT</title>
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery.timepicker.min.js"></script>
         <script src="https://code.jquery.com/ui/1.12.1/jquery.timepicker.css"></script>
        
        <script>
            $(function () {
            	$("#datepicker").datepicker({
            		  minDate: 0,
            		 
            		format: 'yy-mm-dd'
            		});
            });
        </script>
         <script>
            $(function () {
            	$("#datepicker2").datepicker({
            		  minDate: 0,
            		 
            		format: 'yy-mm-dd'
            		});
            });
        </script>
        
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
<h3 align="center">EVENT</h3> 
<form action="createevent" method="post">
<table align ="Center " class = "ex1">
<tr>
<th>EVENT NAME</th>
	<td><input type ="text" name= "eventname" />${eventname}</td>
</tr>

<tr>
<th>LOCATION</th>
	<td><input type ="text" name= "location"/></td>
</tr>
${dateentry}
<tr>
<th>FROM</th>
	<td><input type ="text" name ="fromdate"  id= "datepicker"/></td>
</tr>

<tr>	
<th>TO</th>
	<td><input type ="text" name = "todate"  id = "datepicker2"/></td>
</tr>

<tr>
<th>TIME START</th>
<td><select name ="timestart" id ="timestart">
<option>select</option>
<option>00:00</option>
<option>01:00</option>
<option>02:00</option>
<option>03:00</option>
<option>04:00</option>
<option>05:00</option>
<option>06:00</option>
<option>07:00</option>
<option>08:00</option>
<option>09:00</option>
<option>10:00</option>
<option>11:00</option>
<option>12:00</option>
<option>13:00</option>
<option>14:00</option>
<option>15:00</option>
<option>16:00</option>
<option>17:00</option>
<option>18:00</option>
<option>19:00</option>
<option>20:00</option>
<option>21:00</option>
<option>22:00</option>
<option>23:00</option>
<option>24:00</option>
</select>
</td>
</tr>
<tr>
<th>TIME END</th>
	<td><select name ="timeend" id ="timeend">
<option>select</option>
<option>00:00</option>
<option>01:00</option>
<option>02:00</option>
<option>03:00</option>
<option>04:00</option>
<option>05:00</option>
<option>06:00</option>
<option>07:00</option>
<option>08:00</option>
<option>09:00</option>
<option>10:00</option>
<option>11:00</option>
<option>12:00</option>
<option>13:00</option>
<option>14:00</option>
<option>15:00</option>
<option>16:00</option>
<option>17:00</option>
<option>18:00</option>
<option>19:00</option>
<option>20:00</option>
<option>21:00</option>
<option>22:00</option>
<option>23:00</option>
<option>24:00</option>
</select>
</td>
</tr>
<tr>
<th>DESCRIPTION</th>
	<td><input type ="text" name= "description" /></td>
</tr>
</table>
<table align ="Center" class = "ex1">
<tr>
<td align="center"><input type ="submit" name="SUBMIT" button class ="btn btn-info" value ="SUBMIT"/></td>
</tr>
</table>
</form>
</div>
</div>
</body>
</html>