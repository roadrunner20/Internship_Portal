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

try{
		//String username= request.getParameter("username");
		//String password= request.getParameter("password");
		String userName = "root";
		String pass= "changemaker0123";
		String driver="com.mysql.jdbc.Driver"; 
		String DbUrl="jdbc:mysql://localhost:3306/test_one";
		Class.forName(driver).newInstance();
		Connection con=DriverManager.getConnection(DbUrl, userName, pass);
		
		String job_group_id = request.getParameter("jobGroupID");
		String category_title = request.getParameter("categoryTitle");
		String pos_id = request.getParameter("jobPositionID");
		
		
		
	
		//Class.forName("com.mysql.jdbc.Driver");
		//Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8080/test_one",  "root", "changemaker");
		//Statement st = con.createStatement();
		//out.println("Connection with database made successfully");
		//ResultSet rs;
		//rs = st.executeQuery("Select username, password from user where username='" + username + "' and password='" + password + "'");
		String str = 
				"INSERT INTO job_group (job_group_id, job_category_title, job_position_id) VALUES (?,?,?)";


		PreparedStatement ps = con.prepareStatement(str);
		ps.setString(1, job_group_id);
		ps.setString(2, category_title );
		ps.setString(3, pos_id);
	
		
		//ps.executeUpdate();
		int i = ps.executeUpdate();
		if(i!=0)
		{
			out.print("Records Saved Successfully!");
			response.sendRedirect("AddJobGroups.jsp");

%>
			
<br>		
<a href= "addJobGroup.jsp" class="btn btn-info" >Add More Job Groups</a>

<% 	
			//session.setAttribute("getAlert", "success");
			//response.sendRedirect("sucessStudentDB.jsp?studentID="+ student_id); 
			//request.setAttribute("loginresult", true);
			//response.sendRedirect("sucessStudentDB.jsp?");
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
		