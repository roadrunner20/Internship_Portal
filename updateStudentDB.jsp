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

onclick="myFunction()"> Status</p>
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
		
		String first_name = request.getParameter("firstName");
		String middle_name = request.getParameter("middleName");
		String last_name = request.getParameter("lastName");
		String email = request.getParameter("emailID");
		String tel_no = request.getParameter("contactNumber");
		String semester = request.getParameter("semester");
		String year = request.getParameter("year");
		String gender = request.getParameter("Gender");
		String status = request.getParameter("status");
		out.print("Vlaue of student id" + student_id);
		out.print("Vlaue of first name id" + first_name);
		//Class.forName("com.mysql.jdbc.Driver");
		//Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8080/test_one",  "root", "changemaker");
		//Statement st = con.createStatement();
		//out.println("Connection with database made successfully");
		//ResultSet rs;
		//rs = st.executeQuery("Select username, password from user where username='" + username + "' and password='" + password + "'");
		//String str = "UPDATE student SET first_name= ?, middle_name=?, last_name=?, email=?, tel_no=?, semester=?, year=?, gender=?, status=? WHERE student_id =?";
		//String str = "UPDATE student SET first_name=?, middle_name = ?, last_name = ?, email=?, tel_no=?, semester=?, year=? WHERE student_id = ?";
		String str = "UPDATE student SET first_name = ?,middle_name =?, last_name=?, email=?, tel_no =?, semester=?, year=?, gender=?, status=? WHERE student_id = ?";
	    PreparedStatement ps = con.prepareStatement(str);
		
		//ps.setString(1, student_id);
	    ps.setString(1, first_name );
		ps.setString(2, middle_name );
		ps.setString(3, last_name );
		ps.setString(4, email );
		ps.setString(5, tel_no );
		ps.setString(6, semester );
		ps.setString(7, year);
		ps.setString(8, gender);
		ps.setString(9, status);
		ps.setString(10, student_id);
		out.print("Records ");
		//ResultSet rs = ps.executeQuery();
		int i = ps.executeUpdate();
		out.print("Value if i" + i);
		out.print("Vlaue of first name id" + first_name);
		out.print("Vlaue of first name id" + middle_name);
		out.print("Vlaue of first name id" + last_name);
		out.print("Vlaue of first name id" + email);
		out.print("Vlaue of first name id" + tel_no);
		out.print("Vlaue of first name id" + semester);
		out.print("Vlaue of first name id" + year);
		out.print("Vlaue of first name id" + gender);
		out.print("Vlaue of first name id" + status);
	   if(i == 1)
		{

			//out.print("Records Saved Successfully!");
			//session.setAttribute("getAlert", "success");
			
			 
 
			response.sendRedirect("updateStudentSuccess.jsp"); 

    


			
		}
		
		
		//ResultSet rs = ps.executeQuery();
		
		ps.clearParameters();
 
	 
	   ps.close();
 

	
%>
	
</body>
</html>	
		