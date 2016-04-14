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
		String id = request.getParameter("ID");
	//	out.print(student_id);
		String certi_title = request.getParameter("certiTitle");
		//out.print(certi_title);
		String certi_body = request.getParameter("certiBody");
		//out.print(certi_body);
		String date_awarded = request.getParameter("dateAwarded");
		
		
	
		//Class.forName("com.mysql.jdbc.Driver");
		//Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8080/test_one",  "root", "changemaker");
		//Statement st = con.createStatement();
		//out.println("Connection with database made successfully");
		//ResultSet rs;
		//rs = st.executeQuery("Select username, password from user where username='" + username + "' and password='" + password + "'");
		//String str = "UPDATE student SET first_name= ?, middle_name=?, last_name=?, email=?, tel_no=?, semester=?, year=?, gender=?, status=? WHERE student_id =?";
		//String str = "UPDATE student SET first_name=?, middle_name = ?, last_name = ?, email=?, tel_no=?, semester=?, year=? WHERE student_id = ?";
		String str = "UPDATE certi_details SET certi_title = ?, certi_body =?, date_awarded=? WHERE (student_id = ?) AND (id =?)";
	    PreparedStatement ps = con.prepareStatement(str);
		
		//ps.setString(1, student_id);
	    ps.setString(1, certi_title );
		ps.setString(2, certi_body);
		ps.setString(3, date_awarded );
		
		ps.setString(4, student_id);
		ps.setString(5, id);
		
	//	out.print(id);
		//ResultSet rs = ps.executeQuery();
		int i = ps.executeUpdate();
	//	out.print("Value if i" + i);
		
		
		
		 
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

<a href="updateCerti.jsp"><input type="submit" class="btn btn-info" value="Go Back"></a>
</body>
</html>	
		