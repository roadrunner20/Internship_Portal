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
		
		String category = request.getParameter("category");
		
		String company= request.getParameter("company");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String desc= request.getParameter("desc");
		String resp = request.getParameter("resp");
		String req = request.getParameter("req");
		String salary = request.getParameter("salary");
		String code= request.getParameter("code");
		String country = request.getParameter("country");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String position = request.getParameter("position");
		String number = request.getParameter("number");
		String email = request.getParameter("email");
		String web= request.getParameter("web");
		
		String internPostID=request.getParameter("internPostID");	
		

		String str = "UPDATE job_group jg join internship_posting i on jg.job_group_id=i.job_group_id join jobs j on i.job_position_id=j.job_position_id  SET jg.job_category_title =?, i.company_name=?, i.company_address=?, i.city=?, j.job_description=?, j.job_responsibilities=?," +
				"j.job_req=? , i.salary=?, i.postal_code=?, i.country=?, i.contact_firstName=? , i.contact_lastName =?, i.contact_person_position =? ," +
						"i.contact_telNo =?, i.contact_email=? , i.company_website =?  where i.intern_post_id= ?";
	    PreparedStatement ps = con.prepareStatement(str);
		
		//ps.setString(1, student_id);
	    ps.setString(1, category);
	    ps.setString(2, company);
		ps.setString(3,  address);
		ps.setString(4, city);
		ps.setString(5,  desc);
		ps.setString(6, resp);
		ps.setString(7, req );
		ps.setString(8,salary );
		ps.setString(9, code);
		ps.setString(10, country);
		ps.setString(11, fname);
		ps.setString(12, lname);
		ps.setString(13, position);
		ps.setString(14,  number);
		ps.setString(15, email);
		ps.setString(16, web );
		ps.setString(17, internPostID );
		//out.print("Records ");
		//ResultSet rs = ps.executeQuery();
		int i = ps.executeUpdate();
		/*out.print("Value if i" + i);
		out.print("Vlaue of first name id" + first_name);
		out.print("Vlaue of first name id" + middle_name);
		out.print("Vlaue of first name id" + last_name);
		out.print("Vlaue of first name id" + email);
		out.print("Vlaue of first name id" + tel_no);
		out.print("Vlaue of first name id" + semester);
		out.print("Vlaue of first name id" + year);
		out.print("Vlaue of first name id" + gender);
		out.print("Vlaue of first name id" + status); */
	   if(i != 0)
		{

			//out.print("Records Saved Successfully!");
			//session.setAttribute("getAlert", "success");
			
			 
 
			response.sendRedirect("viewAllJobs.jsp"); 

    


			
		}
		
		
		//ResultSet rs = ps.executeQuery();
		
		ps.clearParameters();
 
	 
	   ps.close();
 

	
%>
<a href= "viewAllJobs.jsp" class="btn btn-info" >Go Back</a>
	
</body>
</html>	
		