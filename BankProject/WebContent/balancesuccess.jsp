<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Account Balance</title>
<link rel="stylesheet" href="/BankProject/style.css"/>
<body style="background-image: url('https://img.freepik.com/free-vector/hand-painted-watercolor-pastel-sky-background_23-2148902771.jpg'); background-repeat: no-repeat; background-size: cover;">
<% 
session = request.getSession();
int bal = (int)session.getAttribute("new_bal");
int accn = (int)session.getAttribute("accn");
String name = (String)session.getAttribute("name");
out.println("<h2>Your balance is shown below: </h2>");
out.println("<br>");
out.println("<h1 align='center' style='font-family: Lucida Console, Courier New, monospace; font-size: 30px;'>Name: " + name + "</h1>");
out.println("<br>");
out.println("<h1 align='center' style='font-family: Lucida Console, Courier New, monospace; font-size: 30px;'>Account Number: " + accn + "</h1>");
out.println("<br><br>");
out.println("<h1 align='center' style='font-family: Lucida Console, Courier New, monospace; font-size: 30px;'>Amount: " + bal +"</h1>");
%> 
<br><br>
<a href = "/BankProject/welcome.jsp" class="d">Return to Homescreen</a>
</body>
</html>