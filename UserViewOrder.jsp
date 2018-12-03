<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    
    <link rel="icon" href="../../../../favicon.ico">

    <title>Welcome to 2N</title>

    <!-- Bootstrap core CSS -->
	<link href="main.css" rel="stylesheet">  

    <!-- Custom styles for this template -->
    <link href="Product.css" rel="stylesheet">
  </head>

  <body>

	<nav class="site-header sticky-top py-1">
		<div class="container d-flex flex-column flex-md-row justify-content-between">
				<a class="py-2 d-none d-md-inline-block" href="AskLogout.jsp">LOG OUT</a>
        		<a class="py-2 d-none d-md-inline-block" href="CreateAccount.jsp">SIGN UP</a>
        		<a class="py-2 d-none d-md-inline-block" href="Cart.jsp">CART</a>
        </div>
    </nav>
    
    
    
    <nav class="site-header sticky-top py-1">
      <div class="container d-flex flex-column flex-md-row justify-content-between">
        <a class="py-2" href="MainPage.jsp">
          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="d-block mx-auto"><circle cx="12" cy="12" r="10"></circle><line x1="14.31" y1="8" x2="20.05" y2="17.94"></line><line x1="9.69" y1="8" x2="21.17" y2="8"></line><line x1="7.38" y1="12" x2="13.12" y2="2.06"></line><line x1="9.69" y1="16" x2="3.95" y2="6.06"></line><line x1="14.31" y1="16" x2="2.83" y2="16"></line><line x1="16.62" y1="12" x2="10.88" y2="21.94"></line></svg>
        </a>
        <a class="py-2 d-none d-md-inline-block" href="Women.jsp">Women's</a>
        <a class="py-2 d-none d-md-inline-block" href="Men.jsp">Men's</a>
        <a class="py-2 d-none d-md-inline-block" href="Kid.jsp">Kids'</a>
      </div>
    </nav>

    <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light">
      	<div class="col-md-5 p-lg-5 mx-auto my-5">
        	<p class="display-4 font-weight-normal"></p>
		<p class="lead font-weight-normal">Orders for ${sessionScope.userName}</p>
		</div>
	</div>
	
	
			<div class="d-md-flex flex-md-equal w-100 my-md-3 pl-md-3">
    	  		<div class="bg-dark mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
        			<div class="my-3 py-3" >
				<c:if test="${!(empty requestScope.message)}">
				<h4>${requestScope.message}</h4>
				<p><a href="Women.jsp">Shop More</a></p>
				</c:if>
				<br>
				<c:if test="${(empty requestScope.customerBean)}">
				<% RequestDispatcher rd=request.getRequestDispatcher("UserViewOrdersController");
			rd.forward(request, response); %>
				</c:if>
				<c:if test="${!(empty requestScope.customerBean)}">
						<div class="my-3 p-3">
						<table align="center" width="70%" >
							
							<tr><th colspan="8">Customer Information</th></tr>
									  <tr>
							                <th height="80">ID</th>
							                <th>Username</th>
							                <th>Password</th>
							                <th>First name</th>
							                <th>Last name</th>
							                <th>Address</th>
							                <th>City</th>
							                <th>Postal Code</th>
							            </tr>
							           
							                <tr>
							                    <td height="50"><c:out value="${customerBean.customerId}" /></td>
							                    <td><c:out value="${customerBean.userName}" /></td>
							                    <td><c:out value="${customerBean.password}" /></td>
							                    <td><c:out value="${customerBean.firstname}" /></td>
							                    <td><c:out value="${customerBean.lastname}" /></td>
							                    <td><c:out value="${customerBean.address}" /></td>
							                    <td><c:out value="${customerBean.city}" /></td>
							                    <td><c:out value="${customerBean.postalCode}" /></td>
							                </tr>
							        </table>
							</div>
							</c:if>
										
					</div>
				</div>
			</div>


	<div class="d-md-flex flex-md-equal w-100 my-md-3 pl-md-3">
    	  <div class="bg-dark mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
        		<div class="my-3 py-3" > 
		
		<c:if test="${!(empty requestScope.ordersList)}">

		<h3 style="text-align:center">Order was successfully placed!</h3>
		<table align="center" width="30%" >
		
		<tr><th colspan="7">Orders(s)</th></tr>
				  <tr>
		                <th height="80">Order ID</th>
		                <th>Customer ID</th>
		                <th>Item ID</th>
		                <th>Order Date</th>
		                <th>Quantity</th>
		                <th>Status</th>
		            </tr>
		            <c:forEach var="order" items="${requestScope.ordersList}">
		                <tr>
		                    <td height="50"><c:out value="${order.orderId}" /></td>
		                    <td><c:out value="${order.customerId}" /></td>
		                    <td><c:out value="${order.itemId}" /></td>
		                    <td><c:out value="${order.orderDate}" /></td>
		                    <td><c:out value="${order.quantity}" /></td>
		                    <td><c:out value="${order.status}" /></td>
		                    
		                </tr>
		            </c:forEach>
		        </table>
		</c:if>
							
					</div>
				</div>
			</div>
</body>
</html>