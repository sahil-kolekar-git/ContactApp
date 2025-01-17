<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Contact Form</title>
<style>
body {
	font-family: 'Arial', sans-serif;
	background-color: #e9ecef;
	margin: 0;
	padding: 0;
}

.container {
	max-width: 600px;
	margin: 50px auto;
	background-color: #ffffff;
	padding: 30px;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

h2 {
	text-align: center;
	color: #333;
	margin-bottom: 20px;
}

label {
	display: block;
	margin-bottom: 8px;
	font-weight: bold;
	color: #333;
}

input {
	width: 100%;
	padding: 12px;
	margin-bottom: 20px;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 16px;
}

button {
	width: 100%;
	padding: 12px;
	border: none;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

.add-contact {
	background-color: #4CAF50;
	color: white;
}

.add-contact:hover {
	background-color: #45a049;
}

.logout {
	background-color: #f44336;
	color: white;
	margin-top: 10px;
}

.logout:hover {
	background-color: #d32f2f;
}

.form-footer {
	display: flex;
	justify-content: space-between;
}

.form-footer a {
	text-decoration: none;
	color: #4CAF50;
}

.form-footer a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>

	<div class="container">
		<h2>Contact Form</h2>
		<h5>${msg}</h5>
		<form action="delete" method="POST">


			<!-- Phone field -->
			<label for="id">Contact id :</label> <input type="number" id="phone"
				name="id" required placeholder="Enter your id number">

			<!-- Add Contact Button -->
			<button type="submit" class="add-contact">Delete Contact</button>

			<!-- Logout Button -->
			<div>
				<a href="logout">Logout</a>
			</div>

		</form>


	</div>



</body>
</html>
