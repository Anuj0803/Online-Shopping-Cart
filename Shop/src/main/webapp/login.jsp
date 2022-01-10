<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
	<meta name="viewport"
		content="width=device-width, initial-scale=1">
	<style>
		body {
			height: 100%;
			font-family: Arial, sans-serif;
		}
		
		* {
			box-sizing: border-box;
		}
		
		h1 {
			text-align:center;
			color:white;
			-webkit-text-stroke: 1px black;
		}
		
		/* styling background image */
		.bg-img {
			background-image: url(
"Shop_F.jpg");
			min-height: 1000px;
			background-size: cover;
		}
	
		/* Styling the form container */
		.container {
			position: absolute;
			left: 800px;
			top: 50px;
			margin: 20px;
			max-width: 300px;
			padding: 16px;
		}
		.container1 {
			position: absolute;
			left: 1200px;
			top: 50px;
			margin: 20px;
			max-width: 300px;
			padding: 16px;
		}

		b {
			color: white;
			font-size:26px;
			-webkit-text-stroke: 1px black;
		}
	
		/* Full-width input */
		input[type=text],
		input[type=password] {
			width: 100%;
			padding: 15px;
			margin: 15px 0px;
			border: 2px solid green;
		}
		

	
		/* Styling the submit button */
		.button {
			background-color: green;
			color: white;
			padding: 16px 16px;
			border: none;
			cursor: pointer;
			width: 100%;
		}
		
		.button:hover {
			transform: scale(1.1);
			transition: transform 0.3s;
		}
	</style>
</head>

<body>
<%
   response.setHeader("Cache-Control", "no-cache,no-store, must-revalidate");
%>
<script>
function myFunction() {
  alert("SignUp Successful Please Login Now");
}
</script>
	<div class="bg-img">
		
		<form class="container" action="Products">
		    <h1>Login</h1><br>
			<b>Username</b>
			<input type="text" placeholder="Username Please"
					name="username" required>

			<b>Password</b>
			<input type="password" placeholder="Enter Password"
					name="password" required>

			<button type="submit" class="button">Login</button>
		</form>
	</div>
	<div >
		
		<form class="container1" action="signUp" method="post" enctype="multipart/form-data">
		    <h1>Sign Up</h1><br>
			<b>Set Username</b>
			<input type="text" placeholder="Username Please"
					name="username" required>

			<b>Set Password</b>
			<input type="password" placeholder="Enter Password"
					name="password" required>
					
		    <b>Phone Number</b>
			<input type="text" placeholder="Username Please"
					name="Phone" required>

			<button onclick="myFunction()" type="submit" class="button">Submit</button>
		</form>
	</div>
</body>

</html>
