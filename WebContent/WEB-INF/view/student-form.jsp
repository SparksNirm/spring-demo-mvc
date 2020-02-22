<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>

<html>
<head>
<title>Student Registration Form</title>
</head>
<body>

	<form:form action="processForm" modelAttribute="student">

FirstName: 
<form:input path="firstName" />

		<br>
		<br>

Last Name: 
<form:input path="lastName" />

		<br>
		<br>
		Country:
		<form:select path="country">
		<%-- 	<form:option value="Brazil" label="Brazil"></form:option>
			<form:option value="India" label="India"></form:option>
			<form:option value="America" label="America"></form:option>
			<form:option value="Germany" label="Germany"></form:option> --%>
			
			<form:options items="${student.countryOptions}"/>
		</form:select>
		<br>
		<br>
		Java <form:radiobutton path="favouriteLanguage" value="Java"/>
		PHP <form:radiobutton path="favouriteLanguage" value="PHP"/>
		C# <form:radiobutton path="favouriteLanguage" value="C#"/>
		<br><br>
		Operating Systems:
		Mac Os <form:checkbox path="operatingSystem" value="Mac Os"/>
		Linux <form:checkbox path="operatingSystem" value="Linux"/>
		Ms Windows <form:checkbox path="operatingSystem" value="Ms Windows"/>
		<br><br>
		<input type="submit" />


	</form:form>
</body>
</html>