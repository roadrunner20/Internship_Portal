<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
 
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
<title>Student Page</title>
<link rel="stylesheet" href="styles.css" type="text/css">

<style>

table {
    border-collapse: collapse;
}

td {
    padding-top: .5em;
    padding-bottom: .5em;
}

fieldset.addCert {
	width: 420px;
	border: 1px solid #efefef;
	border-radius: 10px;
	padding: 5px;
	text-align: left;
	margin-top: 50px;
	}
	
	legend.lAddCert {
	background-color: #efefef;
	border: 1px solid #00000;
	border-radius: 10px;
	padding: 5px;
	text-align:center;
	width: 150px;
	font-size: 15px;
	
	}
	
	div.field {
	border-bottom: 1px solid #efefef;
	margin: 5px;
	padding-bottom: 10px;
	
	width: 500px;
	}
	
	.title {
	float: left;
	width: 180px;
	text-align: right;
	padding-right: 10px;
	}
	
	.submitCert {
	float: right;
	margin-right: 60px;
	}


#divEdu{
	margin-left: 100px;
	margin-right:10px;
	margin-bottom: 20px;
	}

div.compField{
	margin-top:100px;
}
		div.logout{
	margin-right:90px;
	font-size: 1.25em;
	float:right;
  
}
div.head{
	margin-bottom: 20px;
} 

.colorMe{
		margin-top:-18px;
		background-color:#efefef;
	}
       
</style>


<script type="text/javascript">
	function SubmitValue(){ 
	// This Function provides you to assign the selectedindex to a form variable which 
	//would come as request value at time of reloading
	    document.f1.selectedValue.value=document.f1.skillgroup.selectedIndex;
	    //alert(document.f1.slvalue.options[document.f1.selectedValue.value].value);
	    //alert("rav");
	    document.f1.submit();   
	}
	 
	function retainValues(){
	     
	    var value1 =<%=request.getParameter("selectedValue")%>;
	    if(value1!=null)
	        {document.f1.skillgroup.selectedIndex=value1;
	        //alert(value1);
	        }
	 
	     
	}
</script>

</head>

<body onload="retainValues()">

<div class="colorMe">
			
		<div class="head" align="center">
				<div id="header">
					<h1 class="ex2">INTERNSHIP PORTAL</h1>
				</div>
				
				<font face="Georgia" size="4">Student Profile</font>
		</div>	
			
				<div align="right" class="logout">
			        <a href="studentPageLogOut.jsp" >
			          <span class="glyphicon glyphicon-log-out"></span><b>Log out</b>
			        </a>
		       </div> 
		        
		<div align="center">
			<ul class="nav nav-tabs">
			    
			    	  <li><a href="studentPage.jsp"><b>Basic Info.</b></a></li>  
					  <li><a href="studentPageCertplusDeg.jsp"><b>Certification || Degree Details</b></a></li>
					  <li class="active"><a data-toggle="tab" href=""><b>Skill Competency</b></a>
					  </li>
					  <li><a href="studentPageWorkExp.jsp"><b>Work Xperience</b></a></li>
					  <li><a href="studentPageJob.jsp"><b>Available Jobs</b></a></li>
					  <li><a href="studentPageViewNotif.jsp"><b>Notifications</b></a></li>
			    
			</ul>
		
		</div>
  </div>
  
      		
<%@ page import = "java.sql.*" %>

<% 		 
	String uid = (String)session.getAttribute("userid");     		  
%>

<%!
	Statement stmt;
   Connection conn=null;
   ResultSet rs; 
   //String uid="123"; 
  
%>

<%!
	public Connection getConn(){
	
		try{
			 Class.forName("com.mysql.jdbc.Driver");
			 conn = DriverManager.getConnection(
			          "jdbc:mysql://localhost:3306/test_one", "root", "changemaker0123"); // <== Check!
			          
			 //System.out.println("Connected...");
	         //System.out.println("Session for "+uid);
	 		}
	 		catch(Exception ex){
	 			System.out.println("Not connected to database");
	 		}
	
	return conn;
	}

%>


   	
 	<div class="compField" align ="center" id="divEdu">	
		<fieldset class="addCert">
		<legend class="lAddCert">Skill level</legend>
		
		<form action="studentPageCompInsert.jsp" method="post"  id="f1" name="f1" >
		
			<div class="field">
				<label class="title">Skill Group:</label>
				<select name="skillgroup"  onchange="javascript:SubmitValue()">
					  <option>Select</option>
					  <option value="1">Technical</option>
					  <option value="2">CMS</option>
					  <option value="3">Operating System</option>
				</select>
				<input type="hidden" name="selectedValue" value="0"/>
			</div>
		
		<% 
		String skGrp = (String)request.getParameter("skillgroup");
		//System.out.println("from skGrpTop:"+skGrp); 
		%>
			
		<% 	
		if (skGrp == null || skGrp.equals("Select")){
		%>	
			<div class="field">
				<label class="title">Skill:</label>
						<select name="skill" >
							<option>Select</option>
						</select>
			</div>
			<div class="field">
				<label class="title">Competency Level:</label>
				<select name="level" >
						<option>Select</option>
					  <option value="Not at all competent">Not at all competent</option>
					  <option value="Little competent">Little competent</option>
					  <option value="Moderately competent">Moderately competent</option>
					  <option value="Extremely competent">Extremely competent</option>
				</select>
			</div>
			
			<div class="submitCert">
				
				<button type="submit" class="btn btn-info" name="OK">Submit</button>
			</div>
			
			
		<%	
		}
			
		 else if(skGrp.equals("1")){
			
			getConn();
			stmt = conn.createStatement();
			String sql="SELECT skill_id, skill_name FROM skill WHERE skill_group_id = "+skGrp;
			
			rs = stmt.executeQuery(sql);
		
		%>
			<div class="field">
				<label class="title">Skill:</label>
				<select name="skill" >
					<option>Select</option>
		<% while(rs.next()) {%>		
					  <option value="<%=rs.getString("skill_id") %>"><%=rs.getString("skill_name") %></option>
				
      <% 	 
	   } 
	  %>
		
		</select>
		</div>
		
		<div class="field">
			<label class="title">Competency Level:</label>
			<select name="level" >
				  <option>Select</option>	
				  <option value="Not at all competent">Not at all competent</option>
				  <option value="Little competent">Little competent</option>
				  <option value="Moderately competent">Moderately competent</option>
				  <option value="Extremely competent">Extremely competent</option>
			</select>
		</div>
		
		<div class="submitCert">
			
			<button type="submit" class="btn btn-info" name="OK">Submit</button>
		</div>
		
		<%
			rs.close();
			stmt.close();
		}
		
		 else if(skGrp.equals("2")){
				
				getConn();
				stmt = conn.createStatement();
				String sql="SELECT skill_id, skill_name FROM skill WHERE skill_group_id = "+skGrp;
				
				rs = stmt.executeQuery(sql);
			
			
			
			%>
				<div class="field">
					<label class="title">Skill:</label>
					<select name="skill" >
						<option>Select</option>
			<% while(rs.next()) {%>		
						  <option value="<%=rs.getString("skill_id") %>"><%=rs.getString("skill_name") %></option>
					
	      <% 	 
		   } 
		  %>
			
			</select>
			</div>
			
			<div class="field">
				<label class="title">Competency Level:</label>
				<select name="level" >
						<option>Select</option>
					  <option value="Not at all competent">Not at all competent</option>
					  <option value="Little competent">Little competent</option>
					  <option value="Moderately competent">Moderately competent</option>
					  <option value="Extremely competent">Extremely competent</option>
				</select>
			</div>
			
			<div class="submitCert">
				
				<button type="submit" class="btn btn-info" name="OK">Submit</button>
			</div>
		
			<%
				rs.close();
				stmt.close();
			}
			
		 else if(skGrp.equals("3")){
				
				getConn();
				stmt = conn.createStatement();
				String sql="SELECT skill_id, skill_name FROM skill WHERE skill_group_id = "+skGrp;
				
				rs = stmt.executeQuery(sql);
			
			
			
			%>
				<div class="field">
					<label class="title">Skill:</label>
					<select name="skill" >
						<option>Select</option>
			<% while(rs.next()) {%>		
						  <option value="<%=rs.getString("skill_id") %>"><%=rs.getString("skill_name") %></option>
					
	      <% 	 
		   } 
		  %>
			
			</select>
			</div>
			
			<div class="field">
				<label class="title">Competency Level:</label>
				<select name="level" >
						<option>Select</option>
					  <option value="Not at all competent">Not at all competent</option>
					  <option value="Little competent">Little competent</option>
					  <option value="Moderately competent">Moderately competent</option>
					  <option value="Extremely competent">Extremely competent</option>
				</select>
			</div>
			
			<div class="submitCert">
				
				<button type="submit" class="btn btn-info" name="OK">Submit</button>
			</div>
			
			<%
				rs.close();
				stmt.close();
			
			}
			%>	
		
		
		</form>
	</fieldset>
	</div>
   		
   	
   	<%
   			//System.out.println("from skGrpBtm:"+request.getParameter("skillgroup"));
   			//System.out.println("from skillBtm:"+request.getParameter("skill"));
   			//System.out.println("from levelBtm:"+request.getParameter("level"));
   			
   			String skillGroup = request.getParameter("skillgroup");
   			String skill = request.getParameter("skill");
   			String level = request.getParameter("level");
   			
   			if( skillGroup!=null && !skillGroup.equals("Select") && 
   				skill!=null && !skill.equals("Select") && 
   			   !level.equals("Select") && level!=null  )
   			{
   				
   				getConn();
   				stmt = conn.createStatement();	
   				
   				//String sql = "UPDATE skill_set "+
					//		 "SET skill_status='"+level+
						//	 "' WHERE skill_id='"+skill+"' AND student_id="+uid;
   				
   				String sql = "INSERT INTO skill_set (student_id, skill_status, skill_id )"+
   							 "VALUES ("+uid+",'"+level+"', "+skill+")"; 
   				System.out.println(sql);
   				
   				stmt.executeUpdate(sql);
   				
   				rs.close();
   				stmt.close();
   			}
   	%>
   	
   <div align="center"><a href="studentPageCompetency.jsp">Edit Competency</a></div>

 </body>
</html>
