<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.hillert.model.LoginBean"%>
<%@ page import="java.util.List"%>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel='stylesheet'
	href='webjars/bootstrap/3.2.0/css/bootstrap.min.css'>
<%
	LoginBean bean = null;
	String result = "";
%>
<%
	bean = (LoginBean) request.getSession().getAttribute("LoginUser");
	result = (String) request.getAttribute("messes");
%>
</head>
<body style="margin-top: 5%">
	<form name="welcome" action="insert	" method="post">
		<div class="container">
			<div class="alert alert-success" align="right">
				<strong>Welcome </strong>
				<%=bean.getLogUsername()%>
				<a href="javascript: document.logoutForm.submit()"
					class="btn btn-danger">Logout</a>
			</div>
			<%
				if (result.equals("S")) {
			%>
			<div class="alert alert-success">
				<strong>Success!</strong> Insert Success..
			</div>
			<%
				} else if (result.equals("F")) {
			%>
			<div class="alert alert-danger">
				<strong>Danger!</strong> Insert Fail !..
			</div>
			<%
				}
			%>
			<div class="form-group">
				<label for="exampleInputEmail1">ID Card</label> <input type="text"
					class="form-control" name="stIdcard">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Password</label> <input type="text"
					class="form-control" name="password">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">FristName</label> <input type="text"
					class="form-control" name="stFname">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">LastName</label> <input type="text"
					class="form-control" name="stLname">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Phone</label> <input type="text"
					class="form-control" name="stPhone">
			</div>
			<div class="form-group">
				<select name="roleId" class="form-control">
					<option value="1">ADMIN</option>
					<option value="2">USER</option>
				</select>
			</div>
			<button type="submit" class="btn btn-success">Submit</button>
			<button type="reset" class="btn btn-danger">Reset</button>
			<a type="button" class="btn btn-danger"
				href="javascript: document.backForm.submit()"> Back</a>

		</div>
	</form>
	<form name="backForm" action="gotoWelcome" method="post"
		th:hidden="true"></form>
	<form name="logoutForm" action="logout" method="post" th:hidden="true"></form>


	<script type="text/javascript" src="webjars/jquery/2.1.1/jquery.min.js"></script>
	<script type="text/javascript"
		src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</body>
<script>
	// Script to open and close sidebar
	function w3_open() {
		document.getElementById("mySidebar").style.display = "block";
		document.getElementById("myOverlay").style.display = "block";
	}

	function w3_close() {
		document.getElementById("mySidebar").style.display = "none";
		document.getElementById("myOverlay").style.display = "none";
	}
	function fncSubmit() {
		if (document.gotohome.email.value == "") {
			alert('Please input Email');
			document.gotohome.username.focus();
			return false;
		}
		if (document.gotohome.password.value == "") {
			alert('Please input password');
			document.gotohome.password.focus();
			return false;
		}
	}
</script>
</html>