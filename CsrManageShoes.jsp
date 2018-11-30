<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
table,th,td,tr{
padding:5px;
}
th{
border:thin solid black;
border-collapse:collapse;
}
.formDiv{
float:left; width: 350px; padding: 0% 1% 1% 1%; margin-right:3%; border: 1px solid #73AD21;
}
.tableDiv{
float:left; 
}
form{
text-align:center;
margin:0 auto;
width:95%;
}
h3{text-align:center; text-decoration: underline;}
</style>
</head>
<body>

<h2>Home Page for Customer Service Representative (Employee) </h2>
<c:if test="${!(empty requestScope.message)}">
<h1>${requestScope.message}</h1>
</c:if>
<div class="formDiv" title="Shoes Products Management">
<h3>Add/Edit Shoes Products</h3>
<form name="editShoes" method="post" action="ShoesController">
Item ID:<input type="text" name="itemId" placeholder="Item ID"/><br/><br/>
Item Name:<input type="text" name="itemName" placeholder="Item Name"/><br/><br/>
Category: <select name="category">
  <option value="women" selected>womens</option>
  <option value="mens">mens</option>
  <option value="children">children</option>
</select><br><br>
Shoe Size: <input type="text" name="shoeSize" placeholder="8.5"/><br/><br/>
Price:<input type="text" name="price" placeholder="price"/><br/><br/>
<input type="submit" name="submit" value="Add"/>
<input type="submit" name="submit" value="Edit"/>
<input type="submit" name="submit" value="List"/> <br><br>
</form>
</div>


<c:if test="${!(empty requestScope.shoesList)}">
<div class="tableDiv">

<table>

<tr><th colspan="5">List of Shoes</th></tr>
		  <tr>
                <th>ID</th>
                <th>Item Name</th>
                <th>Category</th>
                <th>Shoe Size</th>
                <th>Price</th>
            </tr>
            <c:forEach var="shoes" items="${requestScope.shoesList}">
                <tr>
                    <td><c:out value="${shoes.itemId}" /></td>
                    <td><c:out value="${shoes.itemName}" /></td>
                    <td><c:out value="${shoes.category}" /></td>
                    <td><c:out value="${shoes.shoeSize}" /></td>
                    <td><c:out value="${shoes.price}" /></td>
                </tr>
            </c:forEach>
        </table>
</div>
</c:if>
</body>
</html>