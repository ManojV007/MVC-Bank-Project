<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
<link rel="stylesheet" href="/BankProject/style.css"/>
</head>
<body>
<%
session = request.getSession();
int accno = (int)session.getAttribute("accno");
String pass = (String)session.getAttribute("pass");
String name = (String)session.getAttribute("name");
String email = (String)session.getAttribute("email");
int balance = (int)session.getAttribute("balance");
out.println("<h2>Welcome to MVC Bank "+name + " !</h2>");
out.println("<p id ='b' >Your account number is shown below:</p>");
out.println("<h3 style='font-family: cursive'>Account Number: "+accno + "</h3>");
out.println("<p id ='a' >Please choose one of the below banking operations:</p>");
%>
<body style="background-image: url('https://img.freepik.com/free-vector/hand-painted-watercolor-pastel-sky-background_23-2148902771.jpg'); background-repeat: no-repeat; background-size: cover;">
</body>
<br><br>
<div class="dv">
<div class="indv">
<a href ="/BankProject/Balance" style ="background-color: white;
background-image: url('https://img.freepik.com/free-vector/blue-curve-background_53876-113112.jpg?size=626&ext=jpg&ga=GA1.1.1393895903.1686562259&semt=ais');
  color: black;
  border: 1px solid green;
  padding: 40px 40px;
  text-align: center;
  border-radius: 10px;
  text-decoration: none;
  display: inline-block;" id ="a">Check Balance</a>
</div>
<div class="indv">
<a href ="/BankProject/transfer.html" style ="background-color: white;
background-image: url('https://img.freepik.com/free-vector/blue-curve-background_53876-113112.jpg?size=626&ext=jpg&ga=GA1.1.1393895903.1686562259&semt=ais');
  color: black;
  border: 1px solid green;
  padding: 40px 40px;
  border-radius: 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;" id ="a">Transfer Money</a>
  </div>
  <div class="indv">
<a href ="/BankProject/loan.jsp" style ="background-color: white;
background-image: url('https://img.freepik.com/free-vector/blue-curve-background_53876-113112.jpg?size=626&ext=jpg&ga=GA1.1.1393895903.1686562259&semt=ais');
  color: black;
  border: 1px solid green;
  padding: 40px 40px;
  border-radius: 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;" id ="a">Apply Loan</a>
  </div>
  </div>
<br><br>
<a href ="/BankProject/changename.html" class="d">Change Name</a>
<br>
<a href ="/BankProject/changepassword.html" class="d">Change Password</a>
<br>
<div>
<a href ="/BankProject/logout.jsp" class="d">LogOut</a>
</div>
<br><br>
</body>
</html>