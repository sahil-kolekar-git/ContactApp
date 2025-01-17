<!DOCTYPE html>
<%@page import="com.ty.contactapp.entity.Contact"%>
<%@page import="java.util.List"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home Page</title>
<style>
/* Global Styles */
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f4f4f4;
	color: #333;
}

h1 {
	color: #333;
}

/* Navbar Styles */
nav {
	background-color: #333;
	overflow: hidden;
	position: sticky;
	top: 0;
	z-index: 1000;
}

nav a {
	float: left;
	display: block;
	color: white;
	padding: 14px 20px;
	text-align: center;
	text-decoration: none;
	font-size: 16px;
}

nav a:hover {
	background-color: #ddd;
	color: black;
}

nav a.active {
	background-color: #4CAF50;
	color: white;
}

/* Content Styling */
.container {
	padding: 20px;
	max-width: 1200px;
	margin: auto;
}

.content {
	margin-top: 20px;
	padding: 20px;
	background-color: white;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

/* Footer Styles */
footer {
	background-color: #333;
	color: white;
	text-align: center;
	padding: 10px 0;
	position: fixed;
	bottom: 0;
	width: 100%;
}

table {
	width: 80%;
	margin: 30px auto;
	border-collapse: collapse;
	background-color: white;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

th, td {
	padding: 12px;
	text-align: left;
	border: 1px solid #ddd;
}

th {
	background-color: #333;
	color: white;
	font-size: 18px;
}

td {
	background-color: #f9f9f9;
	font-size: 16px;
}

tr:hover {
	background-color: #f1f1f1;
}
</style>
</head>
<body>

	<!-- Navbar -->
	<nav>
		<a href="#add" class="active">Dashboard</a> <a href="addcontact">Add
			Contacts</a> <a href="logout">Logout</a>
		<!--<a href="delete">Delete
			Contact</a><a href="update">Update Contact</a> -->
	</nav>

	<!-- Main Content -->
	<div class="container">
		<h1>Welcome</h1>
		<div class="content">

			<%
			List<Contact> contacts = (List<Contact>) request.getAttribute("contacts");
			%>

			<table>
				<thead>
					<tr>
						<th>Id</th>
						<th>Name</th>
						<th>Phone</th>
						<th>Delete</th>
						<th>Update</th>
					</tr>
				</thead>
				<%
				for (Contact contact : contacts) {
				%>
				<tbody>
					<tr>
						<td><%=contact.getId()%></td>
						<td><%=contact.getName()%></td>
						<td><%=contact.getPhone()%></td>
						<td><a href="update?id=<%=contact.getId()%>">Update</a></td>
						<td><a href="delete?id=<%=contact.getId()%>">Delete</a></td>
					</tr>

				</tbody>
				<%
				}
				%>
			</table>

		</div>
	</div>

</body>
</html>
