<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
	<title>Company Home Page</title>
</head>
<body>
	<p>Welcome to the minhhuynh.ca homepage</p>
	<p>User: <security:authentication property="principal.username" /></p>
	<p>Role: <security:authentication property="principal.authorities" /></p>
	<security:authorize access="hasRole('MANAGER')">
	<p>
		<a href="${pageContext.request.contextPath}/leaders">LeaderShip Meeting</a>
		(Only for Manager peeps)
	</p>
	</security:authorize>
	<form:form action="${pageContext.request.contextPath}/logout" method="POST">
	<input type="submit" value="Logout"/>
	</form:form>
</body>
</html>