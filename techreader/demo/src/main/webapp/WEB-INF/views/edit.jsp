<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<body>

	<h1>Book Edit</h1>

	<form:form method="post" modelAttribute="book"
		action="${pageContext.request.contextPath}/books">
		<form:input path="id" type="hidden" readonly="readonly" />

		<p>Title</p>
		<form:input path="title" value="${book.title}" />

		<p>Author</p>
		<form:input path="authorName" value="${book.authorName}" />


		<p>Description</p>
		<form:input path="description" value="${book.description}" />


		<p>Rating</p>
		<form:input type="number" path="rating" value="${book.rating}" />

		<p>Date</p>
		<form:input type="date" path="date" value="${book.date}" />
		
		  Picture:<br>
		<input type="text" name="pictureUrl">

		<br>
		<p>Read Yet?</p>
		<input type="radio" name="availability" value="Yes">Yes<br>
		<input type="radio" name="availability" value="No">No<br>


		<button type="submit">Submit</button>




	</form:form>
</body>
</html>