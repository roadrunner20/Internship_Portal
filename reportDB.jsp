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

        String allList = request.getParameter("allList");
		String country= request.getParameter("countryList");
		String degree_type= request.getParameter("degreeID");
		String job_status = request.getParameter("jobStatus");
		String semester = request.getParameter("semester");
		String year = request.getParameter("year");
		String company_name = request.getParameter("companyName");
		//out.print(year);
		String student_choice = request.getParameter("studentList");
		String userName = "root";
		String pass= "changemaker0123";
		String driver="com.mysql.jdbc.Driver"; 
		String DbUrl="jdbc:mysql://localhost:3306/test_one";
		Class.forName(driver).newInstance();
		Connection con=DriverManager.getConnection(DbUrl, userName, pass);
		
		java.sql.Statement s = null;
		java.sql.ResultSet rs = null;
		
		
		
	//	String str = "INSERT INTO degree_details(student_id, degree_id, start_date,  end_date, major, GPA, uni_name, uni_location) VALUES (?,?,?,?,?,?,?,?)";
		String interested = "Interested";
		
	/*	if(student_choice.equalsIgnoreCase("Choose All"))
		{
			String str1 = "SELECT first_name, last_name from student";
			PreparedStatement ps1 = con.prepareStatement(str1);
			ResultSet rs1=ps1.executeQuery();
			
		} */
		String slist = "SELECT student_id, first_name, last_name FROM student";
		String elist = "SELECT company_name FROM internship_posting";
		String str1 = "SELECT first_name, last_name FROM student WHERE country = ?";
		 String str = "SELECT student.first_name, student.last_name FROM student INNER JOIN degree_details ON student.student_id = degree_details.student_id INNER JOIN degree ON degree_details.degree_id = degree.degree_id WHERE (student.country = ? AND degree.degree_type = ?)";
		
		 String str2 = "SELECT student.first_name, student.last_name FROM student INNER JOIN interest ON student.student_id = interest.student_id INNER JOIN internship_posting ON interest.intern_post_id = internship_posting.intern_post_id WHERE (student.country = ?) AND  (interest.hiring_status = ?) AND (internship_posting.remuneration_type = ?)";	
		 
		
		 String str2a =  "SELECT student.first_name, student.last_name FROM student INNER JOIN interest ON student.student_id = interest.student_id INNER JOIN internship_posting ON interest.intern_post_id = internship_posting.intern_post_id WHERE (interest.hiring_status = ?) AND (internship_posting.remuneration_type = ?) AND (student.year = ?)";
		 
		 String str3a = "SELECT student.first_name, student.last_name FROM student INNER JOIN interest ON student.student_id = interest.student_id WHERE (student.country = ?) AND (interest.hiring_status IN (?,?))";
		 String str3aa ="SELECT student.first_name, student.last_name FROM student INNER JOIN interest ON student.student_id = interest.student_id WHERE  interest.hiring_status IN (?,?)";
		String str3b = "SELECT student.first_name, student.last_name FROM student INNER JOIN interest ON student.student_id = interest.student_id WHERE (student.country = ?) AND (interest.hiring_status = ?) AND (student.year = ?)";
		 
		 String str3c = "SELECT student.first_name, student.last_name FROM student INNER JOIN interest ON student.student_id = interest.student_id INNER JOIN internship_posting ON interest.intern_post_id = internship_posting.intern_post_id WHERE (student.country = ?) AND  (interest.hiring_status = ?) AND (student.year = ?) AND (internship_posting.remuneration_type = ?)";
		 
		 
		 String str4="SELECT student.first_name, student.last_name FROM student INNER JOIN interest ON student.student_id = interest.student_id WHERE (student.country = ?) AND (interest.hiring_status = ?) AND (student.semester =?) AND (student.year = ?)";
	 
		  String str4a = "SELECT student.first_name, student.last_name FROM student INNER JOIN interest ON student.student_id = interest.student_id WHERE (interest.hiring_status = ?) AND (student.semester =?) AND (student.year = ?)";
		 
		 String str4b = "SELECT student.first_name, student.last_name FROM student INNER JOIN interest ON student.student_id = interest.student_id INNER JOIN internship_posting ON interest.intern_post_id = internship_posting.intern_post_id WHERE (interest.hiring_status = ?) AND (internship_posting.remuneration_type = ?) AND (student.semester =?) AND (student.year = ?)";
		  
		String str5 = "SELECT student.first_name, student.last_name FROM student INNER JOIN interest ON student.student_id = interest.student_id INNER JOIN internship_posting ON interest.intern_post_id = internship_posting.intern_post_id WHERE (student.country = ?) AND (student.semester =?) AND  (student.year = ?) AND (interest.hiring_status = ?) AND (internship_posting.remuneration_type = ?)";
		
		String str6 = "SELECT student.first_name , student.last_name FROM student INNER JOIN interest ON student.student_id = interest.student_id INNER JOIN internship_posting ON interest.intern_post_id = internship_posting.intern_post_id  WHERE (interest.hiring_status = ? ) AND (internship_posting.company_name = ? ) ";
		
		// s = con.createStatement();
		// PreparedStatement ps = con.prepareStatement();
		 

	   if ((allList.equals("All Employers")) && (country.equals("Choose")) && (job_status.equals("Choose")))
		{
			
			PreparedStatement ps = con.prepareStatement(elist);
			 rs=ps.executeQuery();
			 %>
				<p align="center">
			<% 
			out.print("List of all Students");
		     
 %>
 
 <div align="center">
<div id="header">
<h1 class="ex2"> UNIVERSITY OF WINDSOR</h1>
</div>

<h2 class="ex2"> INTERNSHIP PORTAL</h2>
<font face="Georgia" size="4"> List of All the Employers</font>
	
	<br> <br> <br> 
	<p align="center">
	  <table border="1"  cellspacing="3" cellpadding="3" bordercolor="black" border="1"> 
                <tr>
                   <th width="10%"><font size="2"/>Employer name</th>  
                </tr>
            <%while(rs.next()) { %>
            <tr>
                <td><%out.print(rs.getString("company_name")); %></td>
            </tr>
           
            <% } %>  
             
 
 <%	} %>
		
		 </table>		
<% 		 
		 if(!country.equals("Choose") && (job_status.equals("Choose")))
		{
			 PreparedStatement ps = con.prepareStatement(str1);
			 ps.setString(1, country);
		 rs = ps.executeQuery();
		 
		 
		 %>
			<p align="center">
		<% 
		out.print("List of all Students from    "+ country );
		}
		

		
	/*	else if(!country.equals("Choose") && (!degree_type.equals("Choose"))){
			// rs = s.executeQuery(str);
			 //s.setString(1, country);
			  PreparedStatement ps = con.prepareStatement(str);
			ps.setString(1, country );
			
			ps.setString(2, degree_type );
			rs = ps.executeQuery();
		}*/
		else if (!country.equals("Choose") && (job_status.equals("Paid")) && (year.equals("Choose")) && (semester.equals("Choose")) )
		{
			 PreparedStatement ps = con.prepareStatement(str2);
			 ps.setString(1, country );
				ps.setString(2, "Approved" );
				
				ps.setString(3, "Paid");
				rs = ps.executeQuery();
				%>
				<p align="center">
			<% 
			out.print("List of Students from   "+ country+ "   with Paid Internship");		
				
				
				
		}
		else if (country.equals("Choose") && (job_status.equals("Paid")) && (!year.equals("Choose")) && (semester.equals("Choose")) )
		{
			 PreparedStatement ps = con.prepareStatement(str2a);
			// ps.setString(1, country );
				ps.setString(1, "Approved" );
				
				ps.setString(2, "Paid");
				ps.setString(3, year);
				rs = ps.executeQuery();
			%>
			<p align="center">
		<% 
		out.print("List of Students with Paid Jobs for   " +year);
				
				
				
		}
		else if (!country.equals("Choose") && (job_status.equals("Unpaid")) && (year.equals("Choose")) && (semester.equals("Choose")))
		{
			 PreparedStatement ps = con.prepareStatement(str2);
			    ps.setString(1, country );
				ps.setString(2, "Approved" );
				
				ps.setString(3, "Unpaid");
				rs = ps.executeQuery();
				%>
				<p align="center">
			<% 
			out.print("List of Students from    " + country + "with Unpaid Jobs for   " +year);
		}
		else if (country.equals("Choose") && (job_status.equals("Unpaid")) && (!year.equals("Choose")) && (semester.equals("Choose")) )
		{
			 PreparedStatement ps = con.prepareStatement(str2a);
			// ps.setString(1, country );
				ps.setString(1, "Approved" );
				
				ps.setString(2, "Unpaid");
				ps.setString(3, year);
				rs = ps.executeQuery();
				%>
				<p align="center">
				<% 
				out.print("List of All the Students with Unpaid Jobs for   " +year);
		}



		else if (!country.equals("Choose") && (job_status.equals("Available")) && (year.equals("Choose")) && (semester.equals("Choose")))
		{
			 PreparedStatement ps = con.prepareStatement(str3a);
			 ps.setString(1, country );
			
				ps.setString(2, "Sorry" );
				ps.setString(3, "Available");
				
				//ps.setString(2, "Unpaid");
				rs = ps.executeQuery();
				%>
				<p align="center">
			<% 
			out.print("List of Students from    " + country + "    Available for internship  ");	
				
				
				
		}

		else if (country.equals("Choose") && (job_status.equals("Available")) && (year.equals("Choose")) && (semester.equals("Choose")))
		{
			 PreparedStatement ps = con.prepareStatement(str3aa);
			// ps.setString(1, country );
			
				ps.setString(1, "Sorry" );
				ps.setString(2, "Available");
				
				//ps.setString(2, "Unpaid");
				rs = ps.executeQuery();
				%>
				<p align="center">
			<% 
			out.print("List of Students from    " + country + "    Available for internship  ");	
				
				
				
		}
		else if (!country.equals("Choose") && (job_status.equals("Available")) && (!year.equals("Choose")) && (semester.equals("Choose")))
		{
			 PreparedStatement ps = con.prepareStatement(str3b);
			 ps.setString(1, country );
			
				ps.setString(2, "Sorry" );
				ps.setString(3, year);
				
				//ps.setString(2, "Unpaid");
				rs = ps.executeQuery();
				
				%>
				<p align="center">
			<% 
			out.print("List of Students of    " + year + "  from     " + country + "   Available for internship  ");	
				
		}

		else if (!country.equals("Choose") && (job_status.equals("Paid")) && (!year.equals("Choose")) && (semester.equals("Choose")))
		{
			 PreparedStatement ps = con.prepareStatement(str3c);
			 ps.setString(1, country );
			
				ps.setString(2, "Approved" );
				ps.setString(3, year);
				ps.setString(4, "Paid");
				
				//ps.setString(2, "Unpaid");
				rs = ps.executeQuery();
				%>
				<p align="center">
			<% 
			out.print("List of Students from    " + country + "   with Paid Jobs for the Year  " +year);		
				
				
		}

		else if (!country.equals("Choose") && (job_status.equals("Available")) && (!semester.equals("Choose")) && (!year.equals("Choose")))
		{
			 PreparedStatement ps = con.prepareStatement(str4);
			 
				ps.setString(1, country );
				ps.setString(2, "Sorry");
				ps.setString(3, semester);
				ps.setString(4, year);
				
			
				rs = ps.executeQuery();
				
				%>
				<p align="center">
			<% 
			out.print("List of Students for     " + semester+ "  " + year + "   from   " + country + "   Currently Available for internship "); 
		}

		else if (country.equals("Choose") && (job_status.equals("Available")) && (!semester.equals("Choose")) && (!year.equals("Choose")))
		{
			 PreparedStatement ps = con.prepareStatement(str4a);
			 
				//ps.setString(1, country );
				ps.setString(1, "Sorry");
				ps.setString(2, semester);
				ps.setString(3, year);
				
			
				rs = ps.executeQuery();
				
				%>
				<p align="center">
			<% 
			out.print("List of All Students for     " + semester+ "  " + year +   "   Currently Available for internship "); 
		}

		else if (allList.equal("All Students") && (!country.equals("Choose")) && (job_status.equals("Paid")) && (!semester.equals("Choose")) && (!year.equals("Choose")))
		{
			 PreparedStatement ps = con.prepareStatement(str5);
			 
			
			 ps.setString(1, country );
			 ps.setString(2, semester);
				ps.setString(3, year );
				ps.setString(4, "Approved");
				
				ps.setString(5, "Paid");
				rs = ps.executeQuery();
				
				
				%>
				<p align="center">
			<% 
			out.print("List of Students for     " + semester+ "  " + year + "   from   " + country + "   with Paid Internship"); 
		
		}

		else if (country.equals("Choose") && (job_status.equals("Paid")) && (!semester.equals("Choose")) && (!year.equals("Choose")))
		{
			 PreparedStatement ps = con.prepareStatement(str4b);
			 
				//ps.setString(1, country );
				ps.setString(1, "Approved");
				ps.setString(2, "Paid");
				ps.setString(3, semester);
				ps.setString(4, year);
			
				rs = ps.executeQuery();
				
				%>
				<p align="center">
			<% 
			out.print("List of All Students for     " + semester+ "  " + year +   "   Currently having paid internship "); 
		}

		else if (country.equals("Choose") && (job_status.equals("Unpaid")) && (!semester.equals("Choose")) && (!year.equals("Choose")))
		{
			 PreparedStatement ps = con.prepareStatement(str4b);
			 
				//ps.setString(1, country );
				ps.setString(1, "Approved");
				ps.setString(2, "Unpaid");
				ps.setString(3, semester);
				ps.setString(4, year);
				
			
				rs = ps.executeQuery();
				
				%>
				<p align="center">
			<% 
			out.print("List of All Students for     " + semester+ "  " + year +   "   Currently having Unpaid internship "); 
		}


		else if (country.equals("Choose") && (job_status.equals("Choose")) && (semester.equals("Choose")) && (year.equals("Choose")) && (!company_name.equals("Choose")))
		{
			 PreparedStatement ps = con.prepareStatement(str6);
			 ps.setString(1, "Approved");
			   ps.setString(2, company_name);
				rs = ps.executeQuery();
				
				%>
				<p align="center">
			<% 
			out.print("List of All Students Currently hired by   " + company_name); 
		}

	
		//out.print("Established");
			
		 
	//	int i = ps.executeUpdate();
	
	
		
	%>
	<body>
<div align="center">
<div id="header">
<h1 class="ex2"> UNIVERSITY OF WINDSOR</h1>
</div>

<h2 class="ex2"> INTERNSHIP PORTAL</h2>
<font face="Georgia" size="4"></font>
	
	<br> <br> <br> 
	<p align="center">
	  <table border="1"  cellspacing="5" cellpadding="3" bordercolor="black" border="1"> 
                <tr>
                    <th width="10%"><font size="2"/>First Name</th>
                   <th width="10%"><font size="2"/>Last Name </th>
                    
                </tr>
               
               
            <%while(rs.next()) { %>
            <tr>
                <td><%out.print(rs.getString("first_name")); %></td>
                <td><% out.print(rs.getString("last_name")); %></td>
               
            </tr>
            
           
            
        
            <% } %>  
            
              </table>
              <br>
               <button type="button" class="btn btn-info" onclick="window.print();" target="_blank" style="cursor:pointer;">PRINT THE LIST</button>
             <a href="admin.jsp"> <button type="button" class="btn btn-info">Go Back</button></a> 
 <% 
		 /*//if(i!=0)
			while(rs.next())
		{
			out.print("Records Saved Successfully! Click Back to add another 	Degree");
			
			
		}*/
		
		
		//ResultSet rs = ps.executeQuery();
		
		//ps.clearParameters();
 
	 
	  // ps.close();
 rs.close();
 

	     
%>
	
</body>
</html>	
		