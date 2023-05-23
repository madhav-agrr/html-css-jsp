<html>
<head>
	<title>Calculator</title>
</head>
<body>
	<h1>Calculator</h1>
	<form>
		<input type="text" name="num1" placeholder="Enter first number">
		<select name="operator">
			<option value="+">+</option>
			<option value="-">-</option>
			<option value="*">*</option>
		</select>
		<input type="text" name="num2" placeholder="Enter second number">
		<input type="submit" value="Calculate">
	</form>

	<%-- Use EL to perform the calculation based on the GET parameters --%>
	<c:if test="${param.num1 ne null && param.num2 ne null}">
		<c:set var="result">
			<c:choose>
				<c:when test="${param.operator eq '+'}">
					${param.num1 + param.num2}
				</c:when>
				<c:when test="${param.operator eq '-' }">
					${param.num1 - param.num2}
				</c:when>
				<c:when test="${param.operator eq '*' }">
					${param.num1 * param.num2}
				</c:when>
			</c:choose>
		</c:set>
		<h2>Result: ${result}</h2>
	</c:if>
</body>
</html>