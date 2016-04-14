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
		
		String username= request.getParameter("username");
		String password= request.getParameter("password");
	   // String admin = request.getParameter("Admin");
	   // String student = request.getParameter("Student");
	    String status = request.getParameter("login");
	    
		

		
		//Class.forName("com.mysql.jdbc.Driver");
		//Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8080/test_one",  "root", "changemaker");
		//Statement st = con.createStatement();
		//out.println("Connection with database made successfully");
		//ResultSet rs;
		//rs = st.executeQuery("Select username, password from user where username='" + username + "' and password='" + password + "'");
		String str = "SELECT userid, password, usertype FROM user_account WHERE userid = ? and password = ?" ;
		PreparedStatement ps = con.prepareStatement(str);
		ps.setString(1, username);
		ps.setString(2, password);
		ResultSet rs = ps.executeQuery();
		if(rs.next())
		{	 
			//session.setSttribute("username", username);
		userdbName = rs.getString("userid");
		userdbPsw = rs.getString("password");
		userdbStatus = rs.getString("usertype");
		
		if(status.equals("Admin"))
		{
			if(username.equals(userdbName) && password.equals(userdbPsw) && userdbStatus.equals("A"))
			{
			name = username.toUpperCase();
			response.sendRedirect("admin.jsp?username="+name);
			}
			else
			{
				session.setAttribute("getAlert", "Error");
				
				response.sendRedirect("validation.jsp"); 	
			}
		}
		else if(status.equals("Student") )
		{
			if(username.equals(userdbName) && password.equals(userdbPsw)&& userdbStatus.equals("S"))
			{
			name = username.toUpperCase();
			response.sendRedirect("studentPage.jsp");
			session.setAttribute("userid",userdbName );
			}
			else
			{
				session.setAttribute("getAlert", "Error");
				
				response.sendRedirect("validation.jsp"); 	
			}
		}
		}	
		
		//if(username == null || password == null)
		//if(rs == null)
	    // out.println("Try Again");
		//{
		//	request.setAttribute("errorMessage", "Invalid user or password");
			//request.getRequestDispatcher("NewFile test.jsp").forward(request, res);
			//}
		
		//String message = "";
	else 
	{
			
			//message = "Invalid username or password. Please try again";
					
			session.setAttribute("getAlert", "Error");
					
		response.sendRedirect("validation.jsp"); 
				
       // out.print(message);
		}
        
 
	   rs.close();
	   ps.close();
 

	
%>
	
</body>
</html>	
		