<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>REGISTER PAGE</title>
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

.loginform {
	display: flex;
	flex-direction: column;
	gap: 20px;
}

.field input {
	width: 100%;
	height: 30px;
}

.loginButton {
	padding: 8px 15px;
	margin-left: 40px;
	text-decoration: none;
}

.registerbutton {
	padding: 8px 15px;
	position: relative;
	left: 170px;
	top: -34px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="formbox">
			<h1 style="text-align: center;">REGISTER PAGE</h1>
			<form action="registeruser" method="post">
				<div class="loginform">

					<div class="field">
						<input type="text" name="userName" placeholder="ENTER USERNAME"
							required="required">
					</div>
					<div class="field">
						<input type="password" name="passWord"
							placeholder="ENTER PASSWORD" required="required">
					</div>
					<div class="field">
						<input type="email" name="emailId" placeholder="ENTER EMAIL ID"
							required="required">
					</div>
					<div class="field">
						<input type="number" maxlength="10" name="phoneNumber"
							placeholder="MOBILE NUMBER" required="required" min="10">
					</div>
					<div class="button">
						<button class="loginButton" type="submit">REGISTER</button>
					</div>
				</div>
			</form>
			<form action="home" method="GET">
				<div class="button">
					<button class="registerbutton">LOGIN</button>
				</div>
			</form>
		</div>

	</div>
</body>
</html>