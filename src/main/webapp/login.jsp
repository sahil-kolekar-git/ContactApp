<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Page</title>
<style>
/* Full-screen background image */
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	height: 100vh;
	background-image: url('https://via.placeholder.com/1500');
	/* Use your own image URL here */
	background-size: cover;
	background-position: center;
	display: flex;
	justify-content: center;
	align-items: center;
}

/* Overlay to darken background and highlight form */
.overlay {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: rgba(0, 0, 0, 0.5); /* Darken the background */
	z-index: 1;
}

/* Login form container */
.login-container {
	position: relative;
	background-color: #fff;
	padding: 30px;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	width: 100%;
	max-width: 400px;
	z-index: 2; /* Ensure form is above overlay */
}

h2 {
	text-align: center;
	margin-bottom: 20px;
	color: #333;
	font-size: 24px;
}

.form-group {
	margin-bottom: 20px;
}

.form-group label {
	display: block;
	font-size: 14px;
	margin-bottom: 5px;
	color: #333;
}

.form-group input {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 6px;
	font-size: 14px;
	color: #333;
	background-color: #f9f9f9;
}

.form-group input:focus {
	outline: none;
	border-color: #007BFF;
	background-color: #fff;
}

.login-btn {
	width: 100%;
	padding: 12px;
	background-color: #007BFF;
	border: none;
	border-radius: 6px;
	color: white;
	font-size: 16px;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

.login-btn:hover {
	background-color: #0056b3;
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

/* Responsive design */
@media ( max-width : 500px) {
	.login-container {
		padding: 20px;
		width: 80%;
	}
	h2 {
		font-size: 20px;
	}
}
</style>
</head>
<body>

	<!-- Overlay for darkening the background -->
	<div class="overlay"></div>

	<!-- Login Form Container -->
	<div class="login-container">
		<h2>Login</h2>
		<h4>${msg}</h4>
		<form action="#" method="POST">
			<div class="form-group">
				<label for="email">Email Address</label> <input type="email"
					id="email" name="email" required placeholder="Enter your email">
			</div>
			<div class="form-group">
				<label for="password">Password</label> <input type="password"
					id="password" name="password" required
					placeholder="Enter your password">
			</div>
			<button type="submit" class="login-btn">Login</button>
		</form>
		<div class="forgot-password">
			<p>
				<a href="#">Forgot your password?</a>
			</p>
		</div>
	</div>

</body>
</html>
