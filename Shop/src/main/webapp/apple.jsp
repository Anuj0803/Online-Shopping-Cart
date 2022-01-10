<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
<form action ="showAll">
     Product Name = ${Name} , <br> 
    Product Price = Rs.${Price}/-, <br>
    Product Pic = <br>
    <img src="/imagedata/${ID}.jpg"  width="300" height="200"><br>
				
				    <button onclick="window.open('https://buy.stripe.com/test_5kAaH82Wr33O3SweUW')">Buy Now</button>
				    <button >back</button>
				</form>
		</div>		
</body>
</html>