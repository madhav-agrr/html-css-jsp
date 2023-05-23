<html>
<head>
	<meta charset="UTF-8">
	<title>Time of Day Message</title>
</head>
<body>
	<h1>Time of Day Message</h1>
	
	<%-- Use JSP Scriptlet to get the current time and display a message --%>
	<% 
		java.util.Calendar cal = java.util.Calendar.getInstance();
		int hour = cal.get(java.util.Calendar.HOUR_OF_DAY);
		
		String message = "";
		
		if(hour < 12) {
			message = "Good morning!";
		} else if(hour < 18) {
			message = "Good afternoon!";
		} else {
			message = "Good evening!";
		}
		
	%>
	
	<p><%= message %></p>
</body>
</html>