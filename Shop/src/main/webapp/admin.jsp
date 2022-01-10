<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<script>
function myFunction() {
  alert("Product added");
}
</script>
<script>
function myFunction1() {
  alert("Product deleted");
}
</script>
   <form  action="add" method="post" enctype="multipart/form-data">
		    <h1>Add Product</h1><br>
			<b>ID</b>
			<input type="text" placeholder="Product ID"
					name="ID" required><br>

			<b>Name</b>
			<input type="text" placeholder="Product Name"
					name="Name" required> <br>

            <b>Price</b>
			<input type="text" placeholder="Product Price"
					name="Price" required><br>
					
		    <b>Product Status</b>
            <select id="Status" name = "Status">
            <option value selected disabled>Select</option>
            <option>Stock</option>
            <option>Out Of Stock</option> 
            </select>
             <b>Photo</b> <input type="file" class="form-control"
					id="img" name="img" accept="*" >
			<button onclick="myFunction()" type="submit" class="button">Add Product</button>
		</form>
		<form  action="delete">
		    <h1>Delete Product</h1><br>
			<b>ID</b>
			<input type="text" placeholder="Product ID"
					name="ID" required><br>

			<button onclick="myFunction()1" type="submit" class="button">Delete Product</button>
		</form>
		<form  action="showAll">
		    <h1>Show All Products</h1><br>
			<button onclick="myFunction()1" type="submit" class="button">show</button>
		</form>
		<form  action="find">
		    <h1>Find product details</h1><br>
			<b>ID</b>
			<input type="text" placeholder="Product ID"
					name="ID" required><br>
			<button onclick="myFunction()1" type="submit" class="button">Find</button>
		</form>
</body>
</html>