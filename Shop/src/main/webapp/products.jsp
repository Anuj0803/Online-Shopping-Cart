<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<html>
<body>
<style>
   .bg-img {
			background-image: url(
"");
			min-height: 1000px;
			background-size: cover;
		}
</style>
<div class="bg-img">
<form action="login" method="get" align="right">
<%
   response.setHeader("Cache-Control", "no-cache,no-store, must-revalidate");
%>
                ${username}
            <button  type="submit" class="button">logout</button>
        </form>
<form action="search" method="get" align="center">
            <input type="text" name="ID" placeholder="Search" required/>
            <button  type="submit" class="button">Enter ID and Buy</button>
        </form>
	<h2>Products List</h2>

	<table border="1">
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>PRICE</th>
			<th>STATUS</th>
			<th>PHOTO</th>
		</tr>
		<c:forEach var="product" items="${products}">
			<tr>
				<td>${product.ID}</td>
				<td>${product.name}</td>
				<td>${product.price}/-</td>
				<td>${product.status}</td>
				<td><img src="imagedata/${product.ID}.jpg" width="200" height="200"></td>
			</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>