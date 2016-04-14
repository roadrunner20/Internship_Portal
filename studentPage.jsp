<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
 
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
<title>Student Page</title>
<link rel="stylesheet" href="styles.css" type="text/css">

	<style>
	
	fieldset {
	width: 500px;
	border: 1px solid #efefef;
	border-radius: 10px;
	padding: 5px;
	text-align: left;
	margin-top: 50px;
	}
	
	legend {
	background-color: #efefef;
	border: 1px solid #00000;
	border-radius: 10px;
	padding: 5px;
	text-align:center;
	width: 150px;
	font-size: 15px;
	
	}
	
	div.field {
	border-bottom: 1px solid #efefef;
	margin: 5px;
	padding-bottom: 10px;
	width: 450px;
	}
	
	.title {
	float: left;
	width: 120px;
	text-align: right;
	padding-right: 10px;
	}
	
	.submit {
	float: right;
	}
	
	div.logout{
		margin-right:90px;
		font-size: 1.25em;
		float:right;
  
	}
	div.head{
		margin-bottom: 20px;
	}
	
	
	.fieldBaba{
		margin-bottom: 30px;
	}
	
	.colorMe{
		margin-top:-18px;
		background-color:#efefef;
	}
	
	</style>

</head>

<body>

<%@ include file="studentPageInclude.jsp"%>

<%	
		 Class.forName("com.mysql.jdbc.Driver");
			 
	      	conn = DriverManager.getConnection(
	          "jdbc:mysql://localhost:3306/test_one", "root", "changemaker0123"); // <== Check!
	    
	          System.out.println("Connected...");
	String holdEmail = email;
	String holdContact = tel_no;
	          
		email = request.getParameter("email");
		 System.out.println(request.getParameter("email"));
		tel_no = request.getParameter("contact");
		  System.out.println(request.getParameter("contact"));
		  
		  if(email==null){
			  email=holdEmail;
			  tel_no=holdContact;
		  }
		  else{
			  email = request.getParameter("email");
			  tel_no = request.getParameter("contact");
		  }
		  
		  String sqlQ = "UPDATE student SET email=? , tel_no=? WHERE student_id="+uid;
			PreparedStatement ps = conn.prepareStatement(sqlQ);
			ps.setString(1, email);
			ps.setString(2, tel_no);

			ps.executeUpdate();
		
			
		    ps.close();
		    conn.close();
		
	//}
	%>


<div class="colorMe">

<div class="head" align="center">
		<div id="header">
			<h1 class="ex2">INTERNSHIP PORTAL</h1>
		</div>
		
		<font face="Georgia" size="4">Student Profile</font>
</div>	
	
		<div align="right" class="logout">
	        <a href="studentPageLogOut.jsp" >
	          <span class="glyphicon glyphicon-log-out"></span><b>Log out</b>
	        </a>
       </div> 
        
	<div align="center">
	
	<ul class="nav nav-tabs">
	
		  <li class="active"><a data-toggle="tab" href=""><b>Basic Info.</b></a></li>  
		  <li><a href="studentPageCertplusDeg.jsp"><b>Certification || Degree Details</b></a></li>
		  <li><a href="studentPageCompInsert.jsp"><b>Skill Competency</b></a></li>
		  <li><a href="studentPageWorkExp.jsp"><b>Work Xperience</b></a></li>
		  <li><a href="studentPageJob.jsp"><b>Available Jobs</b></a></li>
		  <li><a href="studentPageViewNotif.jsp"><b>Notifications</b></a></li>
	</ul>
	
	</div>

</div>	
	
	
	<div class="fieldBaba" align="center">
		
		<fieldset>
		<legend>Student Info</legend>
		
		<form action="studentPage.jsp" method="post" >
			 
				<input type="hidden" name="id" size="8" disabled value=<%=id%>>
			
			<div class="field">
				<label class="title">Firstname:</label> 
				<input type="text" name="firstname" size="28" disabled value=<%=firstName%> >
			</div>
			<div class="field">
				<label class="title">Lastname:</label>
				<input type="text" name="lastname"  size="28"  disabled  value=<%=lastName%> >
			</div>
			<div class="field">
				<label class="title">Middlename:</label>
				<input type="text" name="middlename" size="28" disabled value=<%=middleName%> >
			</div>
			<div class="field">
				<label class="title">Email:</label>
				<input type="text" name="email" size="28" value=<%=email%> >
			</div>
			<div class="field">
				<label class="title">Contact No.:</label>
				<input type="text" name="contact" size="20" value=<%=tel_no%> >
			</div>
			<div class="field">
				<label class="title">Semester:</label>
				<input type="text" name="semester" size="11" disabled  value=<%=semester%> >
			</div>
			<div class="field">
				<label class="title">Year:</label>
				<input type="text" name="year" size="8" disabled  value=<%=year%> >
			</div>
			<div class="field">
				<label class="title">Gender:</label>
				<input type="text" name="gender" size="10"  disabled value=<%=gender%> >
			</div>
			<div class="field">
				<label class="title">Status:</label>
				<input type="text" name="contact" size="28" disabled value=<%=status%> >
			</div>
			<div class="submit">
				<button type="submit" class="btn btn-info" name="submit">Update</button>
			</div>
		
		</form>
		
	</fieldset>
	
	</div>
	



	


</body>
</html>