<%@ page import = "java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%! 
	int id;
	String firstName="";
	String middleName="";
	String lastName="";
	String email="";
	String tel_no="";
	String semester="";
	String year="";
	String gender="";
	String status="";

%>

 <%
 
 	String uid = (String)session.getAttribute("userid");
 	//String uid="123";
 
  		try{
		 Class.forName("com.mysql.jdbc.Driver");
  		}
  		catch(Exception ex){
  			System.out.println("Unable to load driver");
  		}
  		
  	  Statement stmt;
  	  Connection conn=null;
  	  
      conn = DriverManager.getConnection(
          "jdbc:mysql://localhost:3306/test_one", "root", "changemaker0123"); // <== Check!
    
          System.out.println("Connected...");
          System.out.println("Session for "+uid);
      
      String query = "SELECT * FROM student WHERE student_id= "+uid;		  
      stmt = conn.createStatement();
      ResultSet rs = stmt.executeQuery(query);
      System.out.println(query);
      
      while(rs.next()){
    	 id= rs.getInt("student_id");       
    	 firstName =rs.getString("first_name");
    	 middleName =rs.getString("middle_name");
    	 System.out.println(rs.getString("middle_name"));
    	 lastName =rs.getString("last_name");
    	 email =rs.getString("email");
    	 System.out.println(rs.getString("email"));
    	 tel_no =rs.getString("tel_no");
    	 semester =rs.getString("semester");
    	 year =rs.getString("year");
    	 gender =rs.getString("gender");
    	 status =rs.getString("status");
    	 
      }
 
      rs.close();
      stmt.close();
      conn.close();
      
%>

