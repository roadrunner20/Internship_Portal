<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="utf-8"/>
		<title>Home page</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles.css" />
		
		<style>
		
	body{
	font-family: sans-serif;
	margin: 0;
	padding: 0;
	
}

table {
	margin: 0;
	padding: 0;
	border-collapse: collapse;
	text-align: left;
}

tr, td {
	margin: 0;
	padding: 0;
	vertical-align: top;
}


#outerTable {
	margin: 0 auto;
	width: 850px;
	background: #a3a3a3 url(../images/banner1.png) no-repeat;
}

td#contactButton{
	height: 150px; 
}

#contactButton div{
	
	margin: 150px 0 0 764px;
}

#contantButton img{
	margin: 0;
	border: none;
}

#chooseUser {
	text-align: center;
}

#loginIn input {

	outline: 0px;
	border: 1px solid #999999;
	background-color: #bfbfbf;
	width:250px;
	border-radius: 3px;
	padding: 10px 15px;
	margin:10px auto 20px auto;
	display: block;
	text-align: center;
	font-size: 18px;
	color: #efefef;
	-wekit-transition-duration: 0.25s;
	transition-duration: 0.25s;
	font-weight: 300;
}

#loginIn input:hover {
	background-color:#8c8c8c;
}

#loginIn input:focus {
	background-color:white;
	width: 300px;
	color: #a3a3a3;
}


#loginIn button{
		background-color: #999999;
		outline: 0px;
		border: 0px;
		padding: 10px 15px;
		color: #373737;
		border-radius: 3px;
		width: 120px;
		cursor: pointer;
		font-size: 18px;
}

#loginIn button:hover{
	background-color: #66a3ff;
}

#chooseUser {
	margin: 10px 0;	
}
	
	
		
		
		fieldset.fieldLogin {
	width: 420px;
	border: 1px solid #999999;
	border-radius: 10px;
	padding: 5px;
	text-align: center;
	float: center;
	margin-top: 50px;
	}
	
	legend.login {
	background-color: white;
	border: 1px solid #999999;
	border-radius: 10px;
	padding: 5px;
	text-align:center;
	width: 150px;
	font-size: 15px;
	
	}
	.userLogin{
		margin-top:150px;
	}
	
	/*.colorMe{
		margin-top:-18px;
		background-color:#efefef;
	}*/
	
		</style>
		
	</head>

	<body>
		
<div class="colorMe">
	<div class="head" align="center">
			<div id="header">
				<h1 class="ex2">INTERNSHIP PORTAL</h1>
			</div>
			
			<h4><font face="Georgia" size="4">Welcome</font></h4>
	</div>	
</div>

<div class="userLogin" align="center">		
	<fieldset class="fieldLogin">
	<legend class="login">User Login</legend>
		<div id = "chooseUser">
				
				<form class="chooseForm" action= "NewFile validate.jsp" method="post">
				
					<p>
						<input type="radio" name="login" value="Admin"><strong>Admin</strong>
						<input type="radio" name="login" value="Student"><strong>Student</strong>
					</p>
					
					<div id="loginIn">
						<input type="text" name="username" placeholder="username" required="required" />
						<input type="password" name="password" placeholder="password" required="required" />
						<button type="submit" id="loginButton" value="login">Login</button>
					</div>
				
				</form> 
		</div>
	</fieldset>
</div>
	
	</body>
	
</html>