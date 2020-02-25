<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>

<html>
<head>
<title>Customer Registration Form</title>
<style>
.error {
	color: red
}
</style>
</head>
<body>

	<form:form modelAttribute="customer" action="processForm">

First Name: <form:input path="firstName" />

		<br>
		<br>
Last Name (*): <form:input path="lastName" />

		<form:errors path="lastName" cssClass="error" />
		<br>
		<br>

		<input type="submit">


	</form:form>

</body>
</html>