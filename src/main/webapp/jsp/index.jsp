<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
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
}

.registerbutton {
	padding: 8px 15px;
	position: relative;
	left: 170px;
	top: -25px;
	border: 1px solid black;
	text-decoration: none;
}
</style>
</head>
<body>
	<div class="container">
		<div class="formbox">
			<h1 style="text-align: center;">Login page</h1>
			<form action="login" method="post">
				<div class="loginform">

					<div class="field">
						<input type="text" name="userName" placeholder="ENTER USERNAME"
							required="required">
					</div>
					<div class="field">
						<input type="password" name="passWord" placeholder="ENTER PASSWORD"
							required="required">
					</div>
					<div class="button">
						<button class="loginButton" type="submit">LOGIN</button>
					</div>
				</div>
			</form>
			<div class="button">
				<a class="registerbutton" href="registerpage"> REGISTER</a>
			</div>
		</div>

	</div>

	<script>
    let msg = "${msg}"
    window.onload = () => {
        if (msg !== "") {
            alert(msg);
            msg="";
        }
    };
</script>

</body>
</html>