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


	   String student_id= request.getParameter("studentID");
		String intern_post_id= request.getParameter("internPostID");
		String hiring_status= request.getParameter("hiringStatus");
		String notes = request.getParameter("jobNotes");
		String userName = "root";
		String pass= "changemaker0123";
		String driver="com.mysql.jdbc.Driver"; 
		String DbUrl="jdbc:mysql://localhost:3306/test_one";
		Class.forName(driver).newInstance();
		Connection con=DriverManager.getConnection(DbUrl, userName, pass);
		
		
		String str = "UPDATE interest SET hiring_status=?, notes=? WHERE student_id = ? AND intern_post_id = ?";
		
	//String str = "SELECT student.first_name, student.last_name, internship_posting.intern_post_id, jobs.job_position_title, internship_posting.company_name,"+ 
	//		"internship_posting.contact_firstName, internship_posting.contact_lastName, " +
		//	"internship_posting.contact_email, internship_posting.contact_telNo FROM jobs INNER JOIN internship_posting ON jobs.job_position_id = internship_posting.job_position_id INNER JOIN interest " +
	  /*  "ON internship_posting.intern_post_id=interest.intern_post_id INNER JOIN student ON interest.student_id=student.student_id WHERE interest.interest_status =?"; */
	


	PreparedStatement ps = con.prepareStatement(str);
	ps.setString(1, hiring_status );
	ps.setString(2, notes );
	ps.setString(3, student_id  );
	ps.setString(4, intern_post_id );
	
	
		//out.print("Established");
		
		 
	//	int i = ps.executeUpdate();
	int i =ps.executeUpdate();
	
	
           
  
		
	if(i!=0)
		{
			out.print("Jobs Approved Successfully!");
			%>
			<br>		
			<a href= "approveJobs.jsp" class="btn btn-info" >Add More Approvals</a>
	<% 
			
		}
		
		
		//ResultSet rs = ps.executeQuery();
		
		ps.clearParameters();
 
	 
	   ps.close();
 

	     
%>
	
</body>
</html>	
		