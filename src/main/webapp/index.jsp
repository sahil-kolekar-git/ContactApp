<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Registration Form</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f9;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.form-container {
	background-color: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	width: 100%;
	max-width: 400px;
}

h2 {
	text-align: center;
	margin-bottom: 20px;
	color: #333;
}

.form-group {
	margin-bottom: 15px;
}

.form-group label {
	display: block;
	font-size: 14px;
	margin-bottom: 5px;
	color: #333;
}

.form-group input {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
	font-size: 14px;
	color: #333;
}

.form-group input:focus {
	outline: none;
	border-color: #007BFF;
}

.submit-btn {
	width: 100%;
	padding: 10px;
	background-color: #007BFF;
	border: none;
	border-radius: 4px;
	color: white;
	font-size: 16px;
	cursor: pointer;
}

.submit-btn:hover {
	background-color: #0056b3;
}

.form-group small {
	display: block;
	margin-top: 5px;
	font-size: 12px;
	color: #777;
}

.forgot-password {
	text-align: center;
	margin-top: 15px;
}

.forgot-password a {
	color: #007BFF;
	text-decoration: none;
}

.forgot-password a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>

	<div class="form-container">
		<h2>Register</h2>
		<form action="save" method="POST">
			<div class="form-group">
				<label for="name">Full Name</label> <input type="text" id="name"
					name="name" required placeholder="Enter your name">
			</div>
			<div class="form-group">
				<label for="email">Email Address</label> <input type="email"
					id="email" name="email" required placeholder="Ex : abc@gmail.com">
			</div>
			<div class="form-group">
				<label for="phone">Phone Number</label> <input type="tel" id="phone"
					name="phone" required placeholder="Ex : 98******12">
			</div>
			<div class="form-group">
				<label for="password">Password</label> <input type="password"
					id="password" name="password" required
					placeholder="Enter your password"> <small>Your
					password should be at least 8 characters long.</small>
			</div>
			<button type="submit" class="submit-btn">Submit</button>
		</form>
		<div class="forgot-password">
			<p>
				<a href="login">Login Here</a>
			</p>
		</div>
	</div>

</body>
</html>
