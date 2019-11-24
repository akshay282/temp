<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Start</title>
<style>
table, th, td {
  border: 1px solid black;
}
</style>
</head>
<body>
<h2>Questions</h2>

<table>
	<tr>
    	<th>ID</th>
    	<th>Topic</th>
    </tr>
	<c:forEach items="${questions}" var="question">
			<tr>
				<td><a href="/question?Q_id=${question.get('Q_id')}"> ${question.get("Q_id")} </a></td>
				<td>${question.get("Q_title")}</td>
				
			</tr>
	</c:forEach>
</table> 


</body>
</html>