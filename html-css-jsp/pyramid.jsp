<html>
<head>
<title>Number Pyramid</title>
</head>
<body>
    <form action="">
        <label for="rows">Enter number of rows:</label>
        <input type="number" id="rows" name="rows">
        <input type="submit" value="Generate Pyramid">
    </form>
    
    <% 
        int rows = Integer.parseInt(request.getParameter("rows"));
        int count = 1;
        for(int i = 1; i <= rows; i++){
            for(int j = 1; j <= i; j++){
                out.print(count + " ");
                count++;
            }
            out.print("<br>");
        }
    %>
</body>
</html>