	<%@ page import = "java.sql.*" %>

  <%!
 
		Statement stmt;
	  	Connection conn;
	  	ResultSet rs;
	%>
	
	<%
	    String uid = (String)session.getAttribute("userid");
		//String uid="123";
		String internPostId = request.getParameter("internPostId");
		String interested = "interested";
		String apply = request.getParameter("apply");
		
		
		if(apply != null){
	
			String qry ="INSERT INTO interest (student_id,intern_post_id,interest_status) "+
							  "VALUES(?,?,?)";
			
	
			conn= DriverManager.getConnection(
			        "jdbc:mysql://localhost:3306/test_one", "root", "changemaker0123"); // <== Check!
			        System.out.println("Connected dbbb");
			        PreparedStatement ps = conn.prepareStatement(qry);    
			    	
			      //  System.out.println(qry);
			      //  stmt.execute(qry);
			    //    stmt = conn.createStatement();
			    	ps.setString(1, uid);
			    	ps.setString(2, internPostId);
			    	ps.setString(3, interested);
			    	ps.executeUpdate();
			
			
			
     } 
		
		response.sendRedirect("studentPageJobMore.jsp?jobID="+internPostId);
   %>