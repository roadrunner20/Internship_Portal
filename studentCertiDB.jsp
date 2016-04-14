<html>
<head>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>
<body>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import ="java.sql.*" %>
 <%@ page import ="javax.sql.*" %>
 <%! String userdbName;

		String userdbPsw;
		String userdbStatus;
		String message = "";
		String name = "";
		int count = 0;
		
%>
<%


		//String username= request.getParameter("username");
		//String password= request.getParameter("password");
		String userName = "root";
		String pass= "changemaker0123";
		String driver="com.mysql.jdbc.Driver"; 
		String DbUrl="jdbc:mysql://localhost:3306/test_one";
		Class.forName(driver).newInstance();
		Connection con=DriverManager.getConnection(DbUrl, userName, pass);
		
	
		
		String student_id = request.getParameter("studentID");
		
		String certi_title = request.getParameter("certiTitle");
		String certi_body = request.getParameter("certiBody");
		
		String date_awarded = request.getParameter("dateAwarded");
		
		
		String str = "INSERT INTO certi_details(student_id, certi_title, certi_body, date_awarded) VALUES (?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(str);
		//out.print("Established");
		 ps.setString(1, student_id);
		    ps.setString(2, certi_title );
		    ps.setString(3, certi_body );
		    ps.setString(4, date_awarded );
		  
		
		int i = ps.executeUpdate();
	   
		if(i!=0)
		{
			out.print("Records Saved Successfully! ");
	%>
			<br>		
			<a href= "studentCertificationDetails.jsp" class="btn btn-info" >Add Another Certificate</a>
	<% 
			//session.setAttribute("getAlert", "success");
			//response.sendRedirect("sucessStudentDB.jsp?studentID="+ student_id); 
			//response.sendRedirect("studentEducationSuccess.jsp");
			
		}
		
		
		//ResultSet rs = ps.executeQuery();
		
		ps.clearParameters();
 
	 
	   ps.close();
 

	     
%>
	
</body>
</html>	
		