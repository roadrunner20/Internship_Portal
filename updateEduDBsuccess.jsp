<html>
<head>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>
<script>
function myFunction() {
    document.getElementById("demo").innerHTML = "Updated!";
}
</script>
<body>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import ="java.sql.*" %>
 <%@ page import ="javax.sql.*" %>
 
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
	//	out.print(student_id);
		String degree_id = request.getParameter("degreeID");
		//out.print(degree_id);
		String start_date = request.getParameter("startDate");
		String end_date = request.getParameter("endDate");
		String major = request.getParameter("major");
		String gpa = request.getParameter("GPA");
		String uni_name = request.getParameter("universityName");
		String uni_loc = request.getParameter("locationUniversity");
		
	
		//Class.forName("com.mysql.jdbc.Driver");
		//Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8080/test_one",  "root", "changemaker");
		//Statement st = con.createStatement();
		//out.println("Connection with database made successfully");
		//ResultSet rs;
		//rs = st.executeQuery("Select username, password from user where username='" + username + "' and password='" + password + "'");
		//String str = "UPDATE student SET first_name= ?, middle_name=?, last_name=?, email=?, tel_no=?, semester=?, year=?, gender=?, status=? WHERE student_id =?";
		//String str = "UPDATE student SET first_name=?, middle_name = ?, last_name = ?, email=?, tel_no=?, semester=?, year=? WHERE student_id = ?";
		String str = "UPDATE degree_details SET degree_id = ?, start_date =?, end_date=?, major=?, GPA =?, uni_name=?, uni_location=? WHERE student_id = ?";
	    PreparedStatement ps = con.prepareStatement(str);
		
		//ps.setString(1, student_id);
	    ps.setString(1, degree_id );
		ps.setString(2, start_date);
		ps.setString(3, end_date );
		ps.setString(4, major );
		ps.setString(5, gpa );
		ps.setString(6, uni_name );
		ps.setString(7, uni_loc);
		ps.setString(8, student_id);
		
	//	out.print("Records ");
		//ResultSet rs = ps.executeQuery();
		int i = ps.executeUpdate();
		//out.print("Value if i" + i);
		
		
		
		 
	   if(i != 0)
		{

			out.print("Records Saved Successfully!");
			//session.setAttribute("getAlert", "success");
			
			 
 
			//response.sendRedirect("updateEdu.jsp"); 

    


			
		}
		
		
		//ResultSet rs = ps.executeQuery();
		
		ps.clearParameters();
 
	 
	   ps.close();
 

	
%>

<a href="updateEduDB.jsp"><input type="submit" class="btn btn-info" value="Go Back"></a>
</body>
</html>	
		