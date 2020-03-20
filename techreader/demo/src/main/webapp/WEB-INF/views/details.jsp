<!DOCTYPE html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>
<body>
	<h1>Details Page</h1>

	<br>

	<p>
		Title:
		<c:out value="${book.title}" escapeXml="false" />
	</p>

	<br>



	<p>
		Author:
		<c:out value="${book.authorName}" escapeXml="false" />
	</p>

	<br>

	<p>
		Summary:
		<c:out value="${book.description}" escapeXml="false" />
	</p>

	<br>

	<p>
		Rating:
		<c:out value="${book.rating}" escapeXml="false" />
	</p>

	<br>

	<p>
		Have You Read?
		<c:out value="${book.availability}" escapeXml="false" />
	</p>

	<br>

	<p>
		<c:out value="${book.date}" escapeXml="false" />
	</p>

</body>
</html>
