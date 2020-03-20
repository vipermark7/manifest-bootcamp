<!DOCTYPE>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<body>
	<h1>Books</h1>
	<a href="<c:url value="/books/add" />">Add Books</a>
	<c:if test="${not empty books }">
		<ul>
			<c:forEach var="book" items="${books}">
				<br>
				<li>Book Title: <c:out value="${book.title}" /></li>
				<li>Author: <c:out value="${book.authorName}" /></li>
				<li>Rating: <c:out value="${book.rating}" /></li>
				<a href="/books/details/${book.id}">Details |</a>
				<a href="<c:url value = "/books/edit/${book.id} "/>">Edit |</a>
				<a href="/books/delete/${book.id}">Delete |</a>
				<br>


			</c:forEach>
		</ul>
	</c:if>

</body>
</html>