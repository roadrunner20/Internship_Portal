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
		
		String internPost_id = request.getParameter("internPostID");
		String intern_type = request.getParameter("internType");
		String remun_type = request.getParameter("remunType");
		
		String job_groupID = request.getParameter("jobGroupID");
		String job_positionID = request.getParameter("jobPositionID");
		String salary = request.getParameter("salary");
		String company_name = request.getParameter("companyName");
		String co_address = request.getParameter("companyAddress");
		String city = request.getParameter("city");
		String postal_code = request.getParameter("postalCode");
		String country = request.getParameter("country");
		String c_first_name = request.getParameter("CfirstName");
		String c_last_name = request.getParameter("ClastName");
		String c_work_pos = request.getParameter("CworkPosition");
		String contact_number = request.getParameter("contactNumber");
		String email = request.getParameter("emailID");
		String website = request.getParameter("website");
		String company_notes = request.getParameter("companyNotes");
		
		
	
		//Class.forName("com.mysql.jdbc.Driver");
		//Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8080/test_one",  "root", "changemaker");
		//Statement st = con.createStatement();
		//out.println("Connection with database made successfully");
		//ResultSet rs;
		//rs = st.executeQuery("Select username, password from user where username='" + username + "' and password='" + password + "'");
		String str = 
				"INSERT INTO internship_posting (intern_post_id, intern_type, remuneration_type, job_group_id,  job_position_id, salary, company_name, company_address, city," +
						"postal_code, country, contact_firstName, contact_lastName, contact_person_position, contact_telNo, contact_email," +
						"company_website, notes) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";


		PreparedStatement ps = con.prepareStatement(str);
		ps.setString(1, internPost_id);
		ps.setString(2, intern_type );
		ps.setString(3, remun_type );
		ps.setString(4, job_groupID);
		ps.setString(5, job_positionID );
		ps.setString(6, salary );
		ps.setString(7, company_name );
		ps.setString(8, co_address);
		ps.setString(9, city);
		ps.setString(10, postal_code);
		ps.setString(11, country);
		ps.setString(12, c_first_name );
		ps.setString(13, c_last_name);
		ps.setString(14,  c_work_pos  );
		ps.setString(15, contact_number);
		ps.setString(16, email);
		ps.setString(17, website);
		ps.setString(18, company_notes);
		
		
		//ps.executeUpdate();
		int i = ps.executeUpdate();
		if(i!=0)
		{
			out.print("Records Saved Successfully!");

%>
			
<br>		
<a href= "internPosting.jsp" class="btn btn-info" >Post Another Internship</a>

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
		