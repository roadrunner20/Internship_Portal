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
		
		String degreeType = "";
		String Major= "";
		String GPA = "";
		String universityName= "";
		String locationUniversity = "";
		/*
		String student_id = request.getParameter("studentID");
		String degree_type[] = request.getParameterValues("degreeType");
		String major[] = request.getParameterValues("major");
		
		String gpa[] = request.getParameterValues("GPA");
		String university_name[] = request.getParameterValues("universityName");
		String location_university[] = request.getParameterValues("locationUniversity");
	    String row_count = request.getParameter("rowCount");
	*/
	    
	     
		//Class.forName("com.mysql.jdbc.Driver");
		//Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8080/test_one",  "root", "changemaker");
		//Statement st = con.createStatement();
		//out.println("Connection with database made successfully");
		//ResultSet rs;
		//rs = st.executeQuery("Select username, password from user where username='" + username + "' and password='" + password + "'");
		
		/* degreeType = degree_type[j]+""+ 1;
		Major = major[j]+""+ 1;
		GPA = gpa[j]+""+ 1;
		universityName = university_name[j]+""+ 1;
		locationUniversity = location_university[j]+""+1; */
		
		String student_id = request.getParameter("studentID");
		
		String degree_id = request.getParameter("degreeID");
		
		String start_date= request.getParameter("startDate");
		String end_date= request.getParameter("endDate");
		
		//String degree_type = request.getParameter("degreeType");
		String major = request.getParameter("major");
		
		String gpa = request.getParameter("GPA");
		String university_name = request.getParameter("universityName");
		String location_university = request.getParameter("locationUniversity");
		
		String str = "INSERT INTO degree_details(student_id, degree_id, start_date,  end_date, major, GPA, uni_name, uni_location) VALUES (?,?,?,?,?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(str);
		out.print("Established");
		 ps.setString(1, student_id);
		    ps.setString(2, degree_id );
		    ps.setString(3, start_date );
		    ps.setString(4, end_date );
		    ps.setString(5, major );
		    ps.setString(6, gpa );
		    ps.setString(7, university_name);
		   ps.setString(8, location_university);
		 /*for (int j=0; j<=4; j++)
	     {
			degreeType = degree_type[j]+""+1;
			Major = major[j]+""+ 1;
			GPA = gpa[j]+""+ 1;
			universityName = university_name[j]+""+ 1;
			locationUniversity = location_university[j]+""+1;
			
		    ps.setString(1, student_id);
		    ps.setString(2, degreeType );
		    ps.setString(3, Major );
		    ps.setString(4, GPA );
		    ps.setString(5, universityName);
		   ps.setString(6, locationUniversity);
		
		   ps.addBatch();
	      } */
		
		
		//ps.executeBatch();
		int i = ps.executeUpdate();
	   
		if(i!=0)
		{
			out.print("Records Saved Successfully! Click Back to add another 	Degree");
			session.setAttribute("getAlert", "success");
			//response.sendRedirect("sucessStudentDB.jsp?studentID="+ student_id); 
			//response.sendRedirect("studentEducationSuccess.jsp");
			
		}
		
		
		//ResultSet rs = ps.executeQuery();
		
		ps.clearParameters();
 
	 
	   ps.close();
 

	     
%>
	
</body>
</html>	
		