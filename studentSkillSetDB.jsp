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
		
		String student_id = request.getParameter("studentID");
	    
        String ASPNETstatus = request.getParameter("ASPNET");
		String Aspnet = request.getParameter("ASP.NET");
		
		String Cstatus = request.getParameter("C");
		String c = request.getParameter("Clang");
		
		String cplusplusstatus= request.getParameter("Cplusplus");
		String cpp= request.getParameter("C++");
		
		String cSharp = request.getParameter("Csharp");
		String csharpvalue=request.getParameter("C#");
		
		String flexvalue = request.getParameter("flex");
		String flex = request.getParameter("Flex");
		
		String javavalue = request.getParameter("java");
		String java = request.getParameter("Java");
		
		String javascriptvalue = request.getParameter("javascript");
		String javaScript = request.getParameter("Javascript");
		
		
		String lispvalue = request.getParameter("lisp");
		String lisp = request.getParameter("Lisp");
		
		String matlabvalue = request.getParameter("matlab");
		String matlab = request.getParameter("Matlab");
		
		String mysqlvalue = request.getParameter("Mysql");
		String mySql = request.getParameter("mysql");
		
		String objectiveCvalue = request.getParameter("ObjectiveC");
		String objectiveC= request.getParameter("objectiveC");
		
		String pascalvalue = request.getParameter("Pascal");
		String pascal = request.getParameter("pascal");
		
		
		String perlvalue= request.getParameter("Perl");
		String perl = request.getParameter("perl");
		
		
		String phpvalue = request.getParameter("PHP");
		String php = request.getParameter("php");
		
		String prologvalue= request.getParameter("Prolog");
		String prolog= request.getParameter("prolog");
		
        String pythonvalue = request.getParameter("Python");
		String python= request.getParameter("python");
		
		String Rvalue = request.getParameter("Rprog");
		String R = request.getParameter("R");
		
		String rubyvalue = request.getParameter("Ruby");
		String ruby= request.getParameter("ruby");
		
		String sql_oraclevalue = request.getParameter("SQl_Oracle");
		String sql_oracle= request.getParameter("sql_oracle");
		
		String Tclvalue = request.getParameter("tcl");
		String Tcl= request.getParameter("Tcl");
		
		String VBNETvalue = request.getParameter("vbnet");
		String VBNET = request.getParameter("VBNET");
		
		String concrete5value = request.getParameter("concrete5");
		String concrete5= request.getParameter("Concrete5");
		
		String dotNetNukevalue = request.getParameter("dotnetnuke");
		String dotNetNuke= request.getParameter("DotNetNuke");
		
		String drupalvalue = request.getParameter("Drupal");
		String drupal= request.getParameter("drupal");
		
		String joomlavalue = request.getParameter("Joomla");
		String joomla= request.getParameter("joomla");
		
		String wordpressvalue = request.getParameter("Wordpress");
		String wordpress= request.getParameter("wordpress");
		
		String androidvalue= request.getParameter("Android");
		String android= request.getParameter("android");
		
		String chromeOSvalue = request.getParameter("ChromeOS");
		String chromeOS= request.getParameter("chromeOS");
		
		String iOSvalue = request.getParameter("ios");
		String iOS= request.getParameter("iOS");
		
		String linuxvalue = request.getParameter("Linux");
		String linux= request.getParameter("linux");
		
		String macOSvalue = request.getParameter("MacOS");
		String macOS= request.getParameter("macOS");
		
		String unixvalue = request.getParameter("Unix");
		String unix= request.getParameter("unix");
		
		String windowsvalues = request.getParameter("Windows");
		String windows= request.getParameter("windows");
		
		
	
		
		
		//Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8080/test_one",  "root", "changemaker");
		//Statement st = con.createStatement();
		//out.println("Connection with database made successfully");
		//ResultSet rs;
		//rs = st.executeQuery("Select username, password from user where username='" + username + "' and password='" + password + "'");
		//String str = "INSERT INTO skill_set(student_id, skill_status) VALUES (?,?)";
		
		String str = "INSERT INTO skill_set (student_id, skill, skill_status) VALUES(?,?,?)";
		PreparedStatement ps = con.prepareStatement(str);
		ps.setString(1, student_id);
		ps.setString(2, Aspnet);
		ps.setString(3,ASPNETstatus);
		
		String str2 = "INSERT INTO skill_set (student_id, skill, skill_status) VALUES(?,?,?)";
		PreparedStatement ps1 = con.prepareStatement(str2);
		ps1.setString(1, student_id);
		ps1.setString(2, c);
		ps1.setString(3, Cstatus);
		
	 String str3 = "INSERT INTO skill_set (student_id, skill, skill_status) VALUES(?,?,?)";
		PreparedStatement ps2 = con.prepareStatement(str3);
		ps2.setString(1, student_id);
		ps2.setString(2, cpp);
		ps2.setString(3, cplusplusstatus);
		
     String str4 = "INSERT INTO skill_set (student_id, skill, skill_status) VALUES(?,?,?)";
	   PreparedStatement ps3 = con.prepareStatement(str4);
	   ps3.setString(1, student_id);
	   ps3.setString(2, csharpvalue);
	   ps3.setString(3, cSharp);
		
    String str5 = "INSERT INTO skill_set (student_id, skill, skill_status) VALUES(?,?,?)";
	  PreparedStatement ps4 = con.prepareStatement(str5);
	   ps4.setString(1, student_id);
	   ps4.setString(2, flexvalue);
	   ps4.setString(3, flex);
	   
		
	  String str6 = "INSERT INTO skill_set (student_id, skill, skill_status) VALUES(?,?,?)";
		  PreparedStatement ps5 = con.prepareStatement(str6);
		   ps5.setString(1, student_id);
		   ps5.setString(2, javavalue);
		   ps5.setString(3, java);
 
     String str7 = "INSERT INTO skill_set (student_id, skill, skill_status) VALUES(?,?,?)";
			  PreparedStatement ps6 = con.prepareStatement(str7);
			   ps6.setString(1, student_id);
			   ps6.setString(2, javascriptvalue);
			   ps6.setString(3, javaScript);
	
    String str8 = "INSERT INTO skill_set (student_id, skill, skill_status) VALUES(?,?,?)";
	  PreparedStatement ps7 = con.prepareStatement(str8);
		    ps7.setString(1, student_id);
			 ps7.setString(2, lispvalue);
		    ps7.setString(3, lisp);
		    
   String str9 = "INSERT INTO skill_set (student_id, skill, skill_status) VALUES(?,?,?)";
  PreparedStatement ps8 = con.prepareStatement(str9);
	    ps8.setString(1, student_id);
		 ps8.setString(2, matlabvalue);
	    ps8.setString(3, matlab);
				   
  String str10 = "INSERT INTO skill_set (student_id, skill, skill_status) VALUES(?,?,?)";
	  PreparedStatement ps9 = con.prepareStatement(str10);
		    ps9.setString(1, student_id);
			 ps9.setString(2, mysqlvalue);
		    ps9.setString(3, mySql);
							
			   
String str11 = "INSERT INTO skill_set (student_id, skill, skill_status) VALUES(?,?,?)";
PreparedStatement ps10 = con.prepareStatement(str11);
	    ps10.setString(1, student_id);
		 ps10.setString(2, objectiveCvalue);
	    ps10.setString(3, objectiveC);
	  
	    
		   
String str12 = "INSERT INTO skill_set (student_id, skill, skill_status) VALUES(?,?,?)";
	PreparedStatement ps11 = con.prepareStatement(str12);
		 ps11.setString(1, student_id);
		 ps11.setString(2, pascalvalue);
		 ps11.setString(3, pascal);
		 
 String str13 = "INSERT INTO skill_set (student_id, skill, skill_status) VALUES(?,?,?)";
	PreparedStatement ps12 = con.prepareStatement(str13);
		 ps12.setString(1, student_id);
		 ps12.setString(2, perlvalue);
		 ps12.setString(3, perl);
		 
		 
		 
 String str14 = "INSERT INTO skill_set (student_id, skill, skill_status) VALUES(?,?,?)";
	PreparedStatement ps13 = con.prepareStatement(str14);
		 ps13.setString(1, student_id);
		 ps13.setString(2, phpvalue);
		 ps13.setString(3, php);
		 

String str15 = "INSERT INTO skill_set (student_id, skill, skill_status) VALUES(?,?,?)";
PreparedStatement ps14 = con.prepareStatement(str15);
	 ps14.setString(1, student_id);
	 ps14.setString(2, prologvalue);
	 ps14.setString(3, prolog);


String str16 = "INSERT INTO skill_set (student_id, skill, skill_status) VALUES(?,?,?)";
PreparedStatement ps15 = con.prepareStatement(str16);
	 ps15.setString(1, student_id);
	 ps15.setString(2, pythonvalue);
	 ps15.setString(3, python);
	 
	 
String str17 = "INSERT INTO skill_set (student_id, skill, skill_status) VALUES(?,?,?)";
PreparedStatement ps16 = con.prepareStatement(str17);
	 ps16.setString(1, student_id);
	 ps16.setString(2, Rvalue);
	 ps16.setString(3, R);

	 
String str18 = "INSERT INTO skill_set (student_id, skill, skill_status) VALUES(?,?,?)";
PreparedStatement ps17 = con.prepareStatement(str18);
	 ps17.setString(1, student_id);
	 ps17.setString(2, rubyvalue);
	 ps17.setString(3, ruby);
	 
	 
String str19 = "INSERT INTO skill_set (student_id, skill, skill_status) VALUES(?,?,?)";
PreparedStatement ps18 = con.prepareStatement(str19);
	 ps18.setString(1, student_id);
	 ps18.setString(2, sql_oraclevalue);
	 ps18.setString(3, sql_oracle);
	 
	 
	 
String str20 = "INSERT INTO skill_set (student_id, skill, skill_status) VALUES(?,?,?)";
PreparedStatement ps19 = con.prepareStatement(str20);
	 ps19.setString(1, student_id);
	 ps19.setString(2, Tclvalue);
	 ps19.setString(3, Tcl);

	 
String str21 = "INSERT INTO skill_set (student_id, skill, skill_status) VALUES(?,?,?)";
PreparedStatement ps20 = con.prepareStatement(str21);
	 ps20.setString(1, student_id);
	 ps20.setString(2, VBNETvalue);
	 ps20.setString(3, VBNET);
	 

String str22 = "INSERT INTO skill_set (student_id, skill, skill_status) VALUES(?,?,?)";
PreparedStatement ps21 = con.prepareStatement(str22);
	 ps21.setString(1, student_id);
	 ps21.setString(2, concrete5value);
	 ps21.setString(3, concrete5);

	 
String str23 = "INSERT INTO skill_set (student_id, skill, skill_status) VALUES(?,?,?)";
PreparedStatement ps22 = con.prepareStatement(str23);
	 ps22.setString(1, student_id);
	 ps22.setString(2, dotNetNukevalue);
	 ps22.setString(3, dotNetNuke);

	 
String str24 = "INSERT INTO skill_set (student_id, skill, skill_status) VALUES(?,?,?)";
PreparedStatement ps23 = con.prepareStatement(str24);
	 ps23.setString(1, student_id);
	 ps23.setString(2, drupalvalue);
	 ps23.setString(3, drupal);

	 
	 
String str25 = "INSERT INTO skill_set (student_id, skill, skill_status) VALUES(?,?,?)";
PreparedStatement ps24 = con.prepareStatement(str25);
	 ps24.setString(1, student_id);
	 ps24.setString(2, joomlavalue);
	 ps24.setString(3, joomla);

	 
	 
	 
String str26 = "INSERT INTO skill_set (student_id, skill, skill_status) VALUES(?,?,?)";
PreparedStatement ps25 = con.prepareStatement(str26);
	 ps25.setString(1, student_id);
	 ps25.setString(2, wordpressvalue);
	 ps25.setString(3, wordpress);
	 

	 
	 
String str27 = "INSERT INTO skill_set (student_id, skill, skill_status) VALUES(?,?,?)";
PreparedStatement ps26 = con.prepareStatement(str27);
	 ps26.setString(1, student_id);
	 ps26.setString(2, androidvalue);
	 ps26.setString(3, android);

String str28 = "INSERT INTO skill_set (student_id, skill, skill_status) VALUES(?,?,?)";
PreparedStatement ps27 = con.prepareStatement(str28);
	 ps27.setString(1, student_id);
	 ps27.setString(2, androidvalue);
	 ps27.setString(3, android);


	 	  

	 	  
	 	  

	  
 
 
		 
							
				
						
					
			
		
		
		
		
		
		
	    int i = ps.executeUpdate();	
		
    //	ps.executeUpdate();
	ps1.executeUpdate();
		ps2.executeUpdate();
		ps3.executeUpdate();
		ps4.executeUpdate();
		ps5.executeUpdate();
		ps6.executeUpdate();
		ps7.executeUpdate();
		ps8.executeUpdate();
		ps9.executeUpdate();
		ps10.executeUpdate();
		ps11.executeUpdate();
		ps12.executeUpdate();
		ps13.executeUpdate();
		ps14.executeUpdate();
		ps15.executeUpdate();
		ps16.executeUpdate();
		ps17.executeUpdate();
		ps18.executeUpdate();
		ps19.executeUpdate();
		ps20.executeUpdate();
		ps21.executeUpdate();
		ps22.executeUpdate();
		ps23.executeUpdate();
		ps24.executeUpdate();
		ps25.executeUpdate();
		ps26.executeUpdate();
		
		
		
		if(i != 0)
		{
			out.print("Skills Saved Successfully! Go back to add Skills of next Student");
			//session.setAttribute("getAlert", "success");
			//response.sendRedirect("sucessStudentDB.jsp?studentID="+ student_id); 
			//response.sendRedirect("sucessStudentDB.jsp");
			
		}
		
		
		//ResultSet rs = ps.executeQuery();
		
		ps.clearParameters();
 
	 
	   ps.close();
 

	
%>
	
</body>
</html>	
		