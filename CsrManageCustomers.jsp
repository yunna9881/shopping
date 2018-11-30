<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h2>Customer Service Representative Home Page </h2><h2>Customer Management</h2>

<div style="float:left; width: 250px; padding: 0% 1% 1% 1%; margin-right: 1%; border: 1px solid #73AD21;">
<h3 style="text-align:center; text-decoration: underline;">Modify Customers</h3>

<form name="editCustomers" method="post" action="CustomersController">
Customer ID: <input type="text" name="customerId" placeholder="Customer ID"/><br/><br/>
Username:<input type="text" name="username" placeholder="Username"/><br/><br/>
Password:<input type="text" name="password" placeholder="Password"/><br/><br/>
First Name:<input type="text" name="firstname" placeholder="First name"/><br/><br/>
Last Name: <input type="text" name="lastname" placeholder="Last name"/><br/><br/>
Address: <input type="text" name="address" placeholder="123 Abc Street"/><br/><br/>
City: <input type="text" name="city" placeholder="123 Abc Street"/><br/><br/>
Postal Code: <input type="text" name="postalcode" placeholder="A1A 1A1"/><br/><br/>
<input type="submit" name="submit" value="View by Customer ID"/> 
<input type="submit" name="submit" value="Edit"/> <br><br>
<input type="submit" name="submit" value="Delete by Customer ID"/><br><br>

</form>
</div>



</body>
</html>