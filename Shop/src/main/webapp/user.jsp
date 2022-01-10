<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<html>
<body>
	<h2>Products List</h2>

	<table border="1">
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>PRICE</th>
			<th>STATUS</th>
			<th>IMAGE</th>
			<th> BUY </th>
		</tr>
		<c:forEach var="product" items="${products}">
			<tr>
				<td>${product.ID}</td>
				<td>${product.name}</td>
				<td>${product.price}</td>
				<td>${product.status}</td>
				<td><img src="https://p3-tt.byteimg.com/origin/pgc-image/61f37e51192d4cf28dccb968c8ea1445"  width="300" height="200"></td>
				<td>
				    <button onclick="window.open('https://buy.stripe.com/test_bIYbLc9kP0VG1Ko6oo')">Buy Now</button>
				
				<td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>