<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
	<title>List customers</title>
	<link type="text/css"
		rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/style_v02.css"/>
	<link type="text/css"
		rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/save-customer-style_v03.css"/>	
</head>

<body>
	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>

	<div id="container">
		
		<h3>Add or update customer</h3>
		<form:form action="saveCustomer" modelAttribute="customer" method="post">
			<form:hidden path="id" />
			<table>
				<tbody>
					<tr>
						<td><label>first name: </label></td>
						<td><form:input path="firstName"/></td>
					</tr>
					<tr>
						<td><label>last name: </label></td>
						<td><form:input path="lastName"/></td>
					</tr>
					<tr>
						<td><label>email: </label></td>
						<td><form:input path="email"/></td>
					</tr>
					<tr>
						<td><input type="submit" value="save" class="save"/></td>
					</tr>
		 	   </tbody>
			</table>
		</form:form>

		<p><a href="${pageContext.request.contextPath}">back to list customers</a></p>

		
	</div>
</body>

</html>