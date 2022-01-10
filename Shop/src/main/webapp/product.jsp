<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

    Product ID=  ${ID} , <br>
    Product Name = ${Name} , <br> 
    Product Price = ${Price}, <br>
    Product Status =${Status}<br>
    Product Pic = <br>
   <td><img src="imagedata/${ID}.jpg" width="200" height="200"></td>
						
</body>
</html>