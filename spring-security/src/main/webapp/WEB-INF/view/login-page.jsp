<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<title>Customer Login Page</title>
	</head>
	
	<body>
		<h3>My Custom Login Page</h3>
		<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">
		
		<c:if test="${param.error != null}">
			<i>Sorry ! you entered invalid username/password</i>
		</c:if>	
		<p> 
		User name: <input type="text" name="username" />
		</p>
		<p> 
		Password: <input type="text" name="password" />
		</p>
		<input type="submit" value="Login" />
		</form:form>
	</body>
</html>