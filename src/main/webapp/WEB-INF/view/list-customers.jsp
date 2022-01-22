<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
	<title>List customers</title>
	<link type="text/css"
		rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/style_v02.css"/>
</head>

<body>
	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>

	<div id="container">
		<div id="content">
		
			<input type="button" value="add customer"
			 	   onclick="window.location.href='showFormForAdd'; return false;"
			 	   class="add-button">
		
			<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
				<c:forEach var="tempCustomer" items="${customers}"> 
				
					<c:url var="updateLink" value="/customer/showFormForUpdate">
						<c:param name="customerId" value="${tempCustomer.id}"></c:param>
					</c:url>
					
					<c:url var="deleteLink" value="/customer/delete">
						<c:param name="customerId" value="${tempCustomer.id}"></c:param>
					</c:url>
				
					<tr>
						<td>${tempCustomer.firstName}</td>
						<td>${tempCustomer.lastName}</td>
						<td>${tempCustomer.email}</td>
						<td>
						<input type="button" value="update"
			 	   		onclick="window.location.href='${updateLink}'; return false;" 
			 	   		class="edit-button">
			 	   		<input type="button" value="delete"
			 	   		onclick="window.location.href='${deleteLink}'; return false;" 
			 	   		class="edit-button">
			 	   		</td>
					</tr>
				</c:forEach>		
			</table>
		</div>	
	</div>
</body>

</html>