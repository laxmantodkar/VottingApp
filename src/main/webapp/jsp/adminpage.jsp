<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta charset="ISO-8859-1">
<title>Admin Home page</title>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	height: 100vh;
	width: 100vw;
}

.container {
	height: auto;
    max-width: 800px;
   min-height:400px;
	border: 1px solid black;
	border-radius: 10px;
	margin: 0 auto;
}


.formbox{

    max-width: 600px;
    display: flex;
    flex-direction: column;
    margin: 10px auto;
}


table {
	font-family: arial, sans-serif;
	border-collapse: collapse;

}

td, th {
	border: 1px solid #dddddd;
	text-align: center;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>
</head>
<body>
	<div class="container">
		<div class="formbox">
			<h1 style="text-align: center;">Admin Home Page</h1>
			<table>
				<thead>
					<tr>
						<th>Candidate Name</th>
						<th>Votting count</th>
					<tr>
				</thead>
				<tbody>

					<c:forEach var="i" items="${candidate}">
						<tr>
							<td>${i.candidateName }</td>
							<td>${i.vottingCount }</td>
						</tr>
					</c:forEach>


				</tbody>


			</table>


		</div>
	</div>

</body>
</html>