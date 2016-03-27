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
		String first_name = request.getParameter("firstName");
		String middle_name = request.getParameter("middleName");
		String last_name = request.getParameter("lastName");
		String email = request.getParameter("emailID");
		String tel_no = request.getParameter("contactNumber");
		String semester = request.getParameter("semester");
		String year = request.getParameter("year");
		String gender = request.getParameter("Gender");
		String status = request.getParameter("status");
	
		//Class.forName("com.mysql.jdbc.Driver");
		//Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8080/test_one",  "root", "changemaker");
		//Statement st = con.createStatement();
		//out.println("Connection with database made successfully");
		//ResultSet rs;
		//rs = st.executeQuery("Select username, password from user where username='" + username + "' and password='" + password + "'");
		String str = "INSERT INTO student(student_id, first_name, middle_name, last_name, email, tel_no, semester, year, gender, status) VALUES (?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(str);
		ps.setString(1, student_id);
		ps.setString(2, first_name );
		ps.setString(3, middle_name );
		ps.setString(4, last_name );
		ps.setString(5, email );
		ps.setString(6, tel_no );
		ps.setString(7, semester );
		ps.setString(8, year);
		ps.setString(9, gender);
		ps.setString(10, status);
		
		//ps.executeUpdate();
		int i = ps.executeUpdate();
		if(i!=0)
		{
			//out.print("Records Saved Successfully!");
			session.setAttribute("getAlert", "success");
			response.sendRedirect("sucessStudentDB.jsp"); 
			
		}
		
		
		//ResultSet rs = ps.executeQuery();
		
		ps.clearParameters();
 
	 
	   ps.close();
 

	
%>
	
</body>
</html>	
		
