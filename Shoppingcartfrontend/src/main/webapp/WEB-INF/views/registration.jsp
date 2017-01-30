<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/views/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Registration</title>
<style>
button{
color:#27A4F7;}
</style>

<script>
	<script>
	function formRegister() {
		// Make quick references to our fields
		var username = document.getElementById('username');
		var emailid = document.getElementById('email');
		var password = document.getElementById('password');
		var mobilenumber = document.getElementById('mobilenumber');

		// Check each input in the order that it appears in the form!
		if (notEmpty(username, "username Should not be empty")) {
			if (isAlphabet(username, "Please enter only letters for Username")) {
				if (notEmpty(emailid, "EmailId Should not be empty")) {
					if (notEmpty(password, "password Should not be empty")) {
						if (isAlphanumeric(password,
								"Numbers and Letters Only for Passwords")) {
							if (notEmpty(mobilenumber,
									"PhoneNumber Should not be empty")) {
								if (isNumeric(mobilenumber,
										"Please enter only number for PhoneNumber")) {

									return true;
								}
							}
						}
					}
				}
			}
		}
	}
	return false;

	function notEmpty(elem, helperMsg) {
		if (elem.value.length == 0) {
			alert(helperMsg);
			elem.focus(); // set the focus to this input
			return false;
		}
		return true;
	}
	function isNumeric(elem, helperMsg) {
		var numericExpression = /^[0-9]+$/;
		if (elem.value.match(numericExpression)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function isAlphabet(elem, helperMsg) {
		var alphaExp = /^[a-z A-Z]+$/;
		if (elem.value.match(alphaExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function isAlphanumeric(elem, helperMsg) {
		var alphaExp = /^[0-9a-zA-Z]+$/;
		if (elem.value.match(alphaExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function emailValidator(elem, helperMsg) {
		var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
		if (elem.value.match(emailExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}

	}
</script>



</head>
<body>




	<div class="container" style="color: #1F618D">
		<div class="jumbotron"style="background-color:#EAECEE">

			<h3 align="center">Create your account</h3>

			<form class="form-horizontal" method="post" action="newUser"
				onsubmit="return formRegister()" role="form">
				<div style="color: #27A4F7" class="form-group">
					<label for="email">Username:</label> <input onsubmit="return formRegister()" name="username"
						class="form-control" placeholder="Enter your User name"
						type="text" id="username" name=" username">
				</div>



				<div style="color: #27A4F7" class="form-group">
					<label for="email">Email id:</label> <input type="text"
						name="emailid" class="form-control" id="email"
						placeholder="Enter your email id"  required />
				</div>

				<div style="color: #27A4F7" class="form-group">
					<label for="psw">Password:</label> <input type="password"
						name="password" class="form-control" id="password"
						placeholder="Enter your password" required  ng-minlength="8"/>
				</div>

				<div style="color: #27A4F7" class="form-group">
					<label for="cmpsw">Confirm Password:</label> <input type="password"
						class="form-control" id="password" placeholder="confirm password">
				</div>

				<div style="color: #27A4F7" class="form-group">
					<label for="cmpsw">Mobile Number:</label> <input type="number"
						name="mobilenumber" class="form-control" id="mobilenumber"
						placeholder="Enter your Mobile number">
				</div>

				<div style="color: #27A4F7" class="form-group">
					<label for="cmpsw">Address:</label>

					<textarea rows="4" cols="50" type="text" name="address"
						class="form-control" id="address" placeholder="Enter your address">
						</textarea>

				</div>


				<button style="background-color: #27A4F7; color: white"
					type="submit" value="submit" class="btn btn-default">Register</button>
			</form>
			<br> <a href="login">I Already have an account </a>
		</div>
	</div>
</body>
</html>


