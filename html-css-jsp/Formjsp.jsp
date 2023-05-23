<html>
<head>
	<meta charset="UTF-8">
	<title>Registration Form</title>
</head>
<body>
	<h1>Registration Form</h1>
	<form action="register.jsp" method="post">
		<label for="name">Name:</label>
		<input type="text" name="name" id="name" required>
		<br>
		<label for="email">Email:</label>
		<input type="email" name="email" id="email" required>
		<br>
		<label for="password">Password:</label>
		<input type="password" name="password" id="password" minlength="6" required>
		<br>
		<input type="submit" value="Register">
	</form>
	
	<%-- Use JSP Scriptlet to validate the user input --%>
	<% 
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		if(name != null && email != null && password != null) {
			if(name.length() < 3) {
				out.println("<p style=\"color: red;\">Name should be at least 3 characters long.</p>");
			}
			if(!email.matches("[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}")) {
				out.println("<p style=\"color: red;\">Invalid email address.</p>");
			}
			if(password.length() < 6) {
				out.println("<p style=\"color: red;\">Password should be at least 6 characters long.</p>");
			}
		}
	%>
</body>
</html>