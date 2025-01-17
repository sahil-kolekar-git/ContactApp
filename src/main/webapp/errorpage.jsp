<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Session Expired</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: Arial, sans-serif;
	background-color: #f3f4f6;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.container {
	text-align: center;
	background-color: #fff;
	border-radius: 8px;
	padding: 40px;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
	width: 400px;
}

.error-message h1 {
	font-size: 2.5rem;
	color: #e74c3c;
	margin-bottom: 20px;
}

.error-message p {
	font-size: 1.2rem;
	color: #333;
	margin-bottom: 20px;
}

.login-button {
	display: inline-block;
	padding: 12px 30px;
	font-size: 1rem;
	color: #fff;
	background-color: #3498db;
	text-decoration: none;
	border-radius: 5px;
	transition: background-color 0.3s ease;
}

.login-button:hover {
	background-color: #2980b9;
}
</style>
</head>
<body>
	<div class="container">
		<div class="error-message">
			<h1>Session Expired</h1>
			<p>Your session has expired. Please log in again to continue.</p>
			<a href="login" class="login-button">Log In Again</a>
		</div>
	</div>
</body>
</html>
