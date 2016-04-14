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
try
{

		//String username= request.getParameter("username");
		//String password= request.getParameter("password");
		String userName = "root";
		String pass= "changemaker0123";
		String driver="com.mysql.jdbc.Driver"; 
		String DbUrl="jdbc:mysql://localhost:3306/test_one";
		Class.forName(driver).newInstance();
		Connection con=DriverManager.getConnection(DbUrl, userName, pass);
		
	
		
		String student_id = request.getParameter("studentID");
		
		String company_name = request.getParameter("companyName");
		String company_location = request.getParameter("companyLocation");
		
		String start_date = request.getParameter("startDate");
		String end_date = request.getParameter("endDate");
		String position= request.getParameter("position");
		
		
		String str = "INSERT INTO work_exp(student_id, company_name, company_location, start_date, end_date, position) VALUES (?,?,?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(str);
		//out.print("Established");
		 ps.setString(1, student_id);
		    ps.setString(2, company_name);
		    ps.setString(3, company_location );
		    ps.setString(4, start_date );
		    ps.setString(5, end_date );
		    ps.setString(6, position );
		    
		  
		
		int i = ps.executeUpdate();
	   
		if(i!=0)
		{
			out.print("Records Saved Successfully! ");
	%>		
			<br>		
			<a href= "studentCertificationDetails.jsp" class="btn btn-info" >Add More Work Experience</a>

<% 
			//session.setAttribute("getAlert", "success");
			//response.sendRedirect("sucessStudentDB.jsp?studentID="+ student_id); 
			//response.sendRedirect("studentEducationSuccess.jsp");
			
		}
		
		
		//ResultSet rs = ps.executeQuery();
		
		ps.clearParameters();
 
	 
	   ps.close();
 
}
catch(Exception exp)
{
	out.print("Error" + exp);
	//error.setText("Something went wrong");

}
	     
%>
	
</body>
</html>	
		