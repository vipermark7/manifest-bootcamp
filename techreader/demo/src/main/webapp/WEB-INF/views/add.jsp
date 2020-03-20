<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<body>

	<form method="post" action="${pageContext.request.contextPath }/books">
		Title of Book:<br> <input type="text" name="title"><br>

		Author's Name:<br> <input type="text" name="authorName"><br>

		Book Summary:<br> <input type="text" name="description"><br>

		Rating:<br> <input type="number" name="rating" max="5" min="0">

		Picture:<br> <input type="text" name="pictureUrl"> <br>
		
		Date Added:<br> <input type="date" name="date"><br>

		Read Yet?:<br> <input type="radio" name="availability"
			value="Yes">Yes<br> <input type="radio"
			name="availability" value="No">No<br> <input
			type="submit" value="Submit" />
	</form>
</body>
</html>