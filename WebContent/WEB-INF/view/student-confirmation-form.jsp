<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
<head>
<title>Student Confirmation Form</title>
</head>
<body>

	The Confirmed Student: ${ student.firstName } ${ student.lastName }
	<br>
	<br> Country:${student.country }
	<br>
	<br> FavouriteLanguage: ${student.favouriteLanguage}
	<br>
	<br>
	<ul>
		<c:forEach var="temp" items="${student.operatingSystem}">
		<li>${temp}</li>
		</c:forEach>
	</ul>
</body>
</html>