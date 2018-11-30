<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h2>Customer Service Representative Home Page </h2><h2>Order Management</h2>

<div style="float:left; width: 250px; padding: 0% 1% 1% 1%; margin-right: 1%; border: 1px solid #73AD21;">
<h3 style="text-align:center; text-decoration: underline;">View / Edit Orders</h3>

<form name="editOrder" method="post" action="OrdersController">
Order ID: <input type="text" name="orderId" placeholder="Order ID"/><br/><br/>
Customer ID: <input type="text" name="customerId" placeholder="Customer ID"/><br/><br/>
Item ID:<input type="text" name="itemId" placeholder="Item ID"/><br/><br/>
Order Date:<input type="text" name="orderDate" placeholder="YYYY-MM-DD"/><br/><br/>
Quantity:<input type="number" name="quantity" value="0"/><br/><br/>
Status: <select name="status">
  <option value="order placed" selected>Order placed</option>
  <option value="in-process">In-Process</option>
  <option value="delivered">Delivered</option>
</select><br><br>
<input type="text" name="shoeSize" placeholder="8.5"/><br/><br/>
<input type="submit" name="submit" value="View Order"/>
<input type="submit" name="submit" value="Edit Order"/>
</form>
</div>


</body>
</html>