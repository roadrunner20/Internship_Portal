<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
 <%@ page import ="javax.sql.*" %>
<%

       java.sql.Connection con = null;
	   String DbUrl="jdbc:mysql://localhost:3306/test_one";
	   String driver="com.mysql.jdbc.Driver"; 
	   String userName = "root";
	   String pass= "changemaker0123";

try{
		Class.forName(driver).newInstance();
		con=DriverManager.getConnection(DbUrl, userName, pass);
		if(con!=null)
		{
			//out.println("Connected");
		} else{
		//	out.println("Cannot connect to the DB");
		}
   } catch(Exception e) {
	   e.printStackTrace();
   }


%>
</body>
</html>