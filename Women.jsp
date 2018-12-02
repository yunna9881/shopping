<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <title>Women</title>
    
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
				<a class="py-2 d-none d-md-inline-block" href="LoginFirst.jsp">LOG IN</a>
        		<a class="py-2 d-none d-md-inline-block" href="CreateAccount.jsp">SIGN UP</a>
        		<a class="py-2 d-none d-md-inline-block" href="Cart.jsp">CART</a>
        	</a>
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
        <h1 class="display-4 font-weight-normal">Women's Shoes</h1>
      </div>

    </div>

	<form target="pay" method="get" action="Cart.jsp">
    <div class="d-md-flex flex-md-equal w-100 my-md-3 pl-md-3">
      <div class="bg-dark mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
        <div class="my-3 py-3" > 
        	<select name="size1" class="btn btn-outline-secondary">
        		<option selected="size">size</option>
        		<option value="5.5">5.5</option>
        		<option value="6">6</option>
        		<option value="6.5">6.5</option>
        		<option value="7">7</option>
        		<option value="7.5">7.5</option>
        		<option value="8">8</option>
        	</select>
        	
        	<input type="hidden" value="women1" name="women1">
        	<input type="hidden" value="cad" name="cad">
        	
        	<input class="btn btn-outline-secondary" type="submit" value="CART" name="cart"> 
        	
        </div>
        <div  class="bg-light shadow-sm mx-auto" style=" width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
        	<img src="D:\3Semester\Java\Assignment\ass3\Assignment3\images\women\women1.jpg" style="width: 100%; height: 300px; border-radius: 21px 21px 0 0;">
        </div>
      </div>
      
      <div class="bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
        <div class="my-3 p-3">
                	<select name="size1" class="btn btn-outline-secondary">
        		<option selected="size">size</option>
        		<option value="5.5">5.5</option>
        		<option value="6">6</option>
        		<option value="6.5">6.5</option>
        		<option value="7">7</option>
        		<option value="7.5">7.5</option>
        		<option value="8">8</option>
        	</select>
        	
        	<input type="hidden" value="women2" name="women2">
        	<input type="hidden" value="cad" name="cad">
        	
        	<input class="btn btn-outline-secondary" type="submit" value="CART" name="cart"> 
        	
        </div>
        <div class="bg-dark shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
        	<img src="D:\3Semester\Java\Assignment\ass3\Assignment3\images\women\women2.jpg" style="width: 100%; height: 300px; border-radius: 21px 21px 0 0;">
        </div>
      </div>
    </div>

    <div class="d-md-flex flex-md-equal w-100 my-md-3 pl-md-3">
      <div class="bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
        <div class="my-3 p-3">
                	<select name="size1" class="btn btn-outline-secondary">
        		<option selected="size">size</option>
        		<option value="5.5">5.5</option>
        		<option value="6">6</option>
        		<option value="6.5">6.5</option>
        		<option value="7">7</option>
        		<option value="7.5">7.5</option>
        		<option value="8">8</option>
        	</select>
        	
        	<input type="hidden" value="women3" name="women3">
        	<input type="hidden" value="cad" name="cad">
        	
        	<input class="btn btn-outline-secondary" type="submit" value="CART" name="cart"> 
        	
        </div>
        <div class="bg-dark shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
        	<img src="D:\3Semester\Java\Assignment\ass3\Assignment3\images\women\women3.jpg" style="width: 100%; height: 300px; border-radius: 21px 21px 0 0;">
        </div>
      </div>
      
      <div class="bg-dark mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
        <div class="my-3 py-3">
                	<select name="size1" class="btn btn-outline-secondary">
        		<option selected="size">size</option>
        		<option value="5.5">5.5</option>
        		<option value="6">6</option>
        		<option value="6.5">6.5</option>
        		<option value="7">7</option>
        		<option value="7.5">7.5</option>
        		<option value="8">8</option>
        	</select>
        	
        	<input type="hidden" value="women4" name="women4">
        	<input type="hidden" value="cad" name="cad">
        	
        	<input class="btn btn-outline-secondary" type="submit" value="CART" name="cart"> 
        	
        </div>
        <div class="bg-light shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
        	<img src="D:\3Semester\Java\Assignment\ass3\Assignment3\images\women\women4.jpg" style="width: 100%; height: 300px; border-radius: 21px 21px 0 0;">
        </div>
      </div>
    </div>
 
 
 
     <div class="d-md-flex flex-md-equal w-100 my-md-3 pl-md-3">
      <div class="bg-dark mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
        <div class="my-3 py-3">
                	<select name="size1" class="btn btn-outline-secondary">
        		<option selected="size">size</option>
        		<option value="5.5">5.5</option>
        		<option value="6">6</option>
        		<option value="6.5">6.5</option>
        		<option value="7">7</option>
        		<option value="7.5">7.5</option>
        		<option value="8">8</option>
        	</select>
        	
        	<input type="hidden" value="women5" name="women5">
        	<input type="hidden" value="cad" name="cad">
        	
        	<input class="btn btn-outline-secondary" type="submit" value="CART" name="cart"> 
        	
        </div>
        <div  class="bg-light shadow-sm mx-auto" style=" width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
        	<img src="D:\3Semester\Java\Assignment\ass3\Assignment3\images\women\women5.jpg" style="width: 100%; height: 300px; border-radius: 21px 21px 0 0;">
        </div>
      </div>
      
      <div class="bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
        <div class="my-3 p-3">
                	<select name="size1" class="btn btn-outline-secondary">
        		<option selected="size">size</option>
        		<option value="5.5">5.5</option>
        		<option value="6">6</option>
        		<option value="6.5">6.5</option>
        		<option value="7">7</option>
        		<option value="7.5">7.5</option>
        		<option value="8">8</option>
        	</select>
        	
        	<input type="hidden" value="women6" name="women6">
        	<input type="hidden" value="cad" name="cad">
        	
        	<input class="btn btn-outline-secondary" type="submit" value="CART" name="cart"> 
        	
        </div>
        <div class="bg-dark shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
        	<img src="D:\3Semester\Java\Assignment\ass3\Assignment3\images\women\women6.jpg" style="width: 100%; height: 300px; border-radius: 21px 21px 0 0;">
        </div>
      </div>
    </div>   
    </form>






    <footer class="container py-5">
      <div class="row">
        <div class="col-12 col-md">
          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="d-block mb-2"><circle cx="12" cy="12" r="10"></circle><line x1="14.31" y1="8" x2="20.05" y2="17.94"></line><line x1="9.69" y1="8" x2="21.17" y2="8"></line><line x1="7.38" y1="12" x2="13.12" y2="2.06"></line><line x1="9.69" y1="16" x2="3.95" y2="6.06"></line><line x1="14.31" y1="16" x2="2.83" y2="16"></line><line x1="16.62" y1="12" x2="10.88" y2="21.94"></line></svg>
          <small class="d-block mb-3 text-muted">&copy; 2017-2018</small>
        </div>
        <div class="col-6 col-md">
          <h5>Features</h5>
          <ul class="list-unstyled text-small">
            <li><a class="text-muted" href="#">Cool stuff</a></li>
            <li><a class="text-muted" href="#">Random feature</a></li>
            <li><a class="text-muted" href="#">Team feature</a></li>
            <li><a class="text-muted" href="#">Stuff for developers</a></li>
            <li><a class="text-muted" href="#">Another one</a></li>
            <li><a class="text-muted" href="#">Last time</a></li>
          </ul>
        </div>
        <div class="col-6 col-md">
          <h5>Resources</h5>
          <ul class="list-unstyled text-small">
            <li><a class="text-muted" href="#">Resource</a></li>
            <li><a class="text-muted" href="#">Resource name</a></li>
            <li><a class="text-muted" href="#">Another resource</a></li>
            <li><a class="text-muted" href="#">Final resource</a></li>
          </ul>
        </div>
        <div class="col-6 col-md">
          <h5>Resources</h5>
          <ul class="list-unstyled text-small">
            <li><a class="text-muted" href="#">Business</a></li>
            <li><a class="text-muted" href="#">Education</a></li>
            <li><a class="text-muted" href="#">Government</a></li>
            <li><a class="text-muted" href="#">Gaming</a></li>
          </ul>
        </div>
        <div class="col-6 col-md">
          <h5>About</h5>
          <ul class="list-unstyled text-small">
            <li><a class="text-muted" href="#">Team</a></li>
            <li><a class="text-muted" href="#">Locations</a></li>
            <li><a class="text-muted" href="#">Privacy</a></li>
            <li><a class="text-muted" href="#">Terms</a></li>
          </ul>
        </div>
      </div>
    </footer>




    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="../../assets/js/vendor/popper.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <script src="../../assets/js/vendor/holder.min.js"></script>
    <script>
      Holder.addTheme('thumb', {
        bg: '#55595c',
        fg: '#eceeef',
        text: 'Thumbnail'
      });
    </script>
  </body>
</html>
