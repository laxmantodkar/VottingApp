<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Votting Page</title>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	height: 100vh;
	width: 100vw;
}

.container {
	width: 50%;
	height: 50%;
	border: 1px solid black;
	border-radius: 10px;
	margin: 0 auto;
}

.formbox {
	width: 50%;
	height: 50%;
	margin: 0 auto;
}

.formbox form {
	display: flex;
	flex-direction: column;
	gap: 7px;
	width: 100%
}

.field {
	border: 1px solid black;
	height: 25px;
}

.votebutton {
	padding: 8px 15px;
	display: flex;
	flex-direction: row;
	align-items: center;
	position: relative;
	left: 120px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="formbox">
			<h1 style="text-align: center;">Votting Page</h1>
			<form action="votetocadidate" method="post">
				<div class="field">
					<input class="input" type="radio" name="candidate"
						value="1"> CANDIDATE-1
				</div>
				<br>
				<div class="field">
					<input type="radio" name="candidate" value="2">
					CANDIDATE-2
				</div>
				<br>
				<div class="field">
					<input type="radio" name="candidate" value="3">
					CANDIDATE-3
				</div>
				<br>
				<div class="field">
					<input type="radio" name="candidate" value="4">
					CANDIDATE-3
				</div>
				<div>
					<button class="votebutton" type="submit">VOTE</button>
				</div>
			</form>
		</div>
	</div>

</body>
</html>