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
<title>Welcome !</title>
<link rel="stylesheet" href="styles.css" type="text/css">
<style>
table {
    border-collapse: collapse;
}

td {
    padding-top: .5em;
    padding-bottom: .5em;
}

</style>
<script type="text/javascript"> 
       function validator()
       {
    	  
    	  var phoneno = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
    	 //var result = document.getElementbyID("contactnumber");
    	var result1 = document.StudentDataForm.contactNumber.value.match(phoneno);
    	//var result1= result.value.match(phoneno);
    	//var phone = document.StudentDatForm.
    	  
    	//  var email = (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(myForm.emailAddr.value));
    	 // var result2 = document.StudentDataForm.emailID.value.match(email);
    	  
    	  if (result1 == null)
    	  {
    		  
    		  document.StudentDataForm.contactNumber.focus();
    		 // document.StudentDataForm.emailID.focus();
    		 // document.StudentDataForm.action = "StudentDB.jsp";
    		 // document.StudentDataForm.method = "POST";
    		 // document.StudentDataForm.submit();
    		 alert("not valid");
    		 
    		  
    		  
    	  }
    	  else
    	{
    		 // alert ("Not valid");
    		  // result.focus();
    		 document.StudentDataForm.action = "StudentDB.jsp";
    		 document.StudentDataForm.method = "POST";
    		 document.StudentDataForm.submit();
    		
    	}
    	  
    		 
       }
       
       
       
       </script>
       
 
</head>
<body>
<div align="center">
<div id="header">
<h1 class="ex2"> UNIVERSITY OF WINDSOR</h1>
</div>

<h2 class="ex2"> INTERNSHIP PORTAL</h2>
<font face="Georgia" size="4"> Creating User Account</font>

<br>




<ul class="nav nav-tabs">

    <li><a href="admin.jsp">Home</a></li>
</ul>
<br>
<div align="right" class="logout">
		        <a href="studentPageLogOut.jsp" >
		          <span class="glyphicon glyphicon-log-out"></span><b>Log out</b>
		        </a>
	       </div> 


</div>

<div align="center">
<div class="container">
       
        <!--   <input type="text" name="search" value="Search by Student ID" size="50" />   -->
        <form name="StudentDataForm" action="userAccountSucess.jsp" onsubmit="return validator();">
            <table border="0" >
     
                <tbody>
                    <tr>
                        <td>User ID :</td>
                        <td><input type="text" name="userID" value="" size="50" /></td>
                    </tr>
                    
                    <tr>
                        <td>Password :</td>
                        <td><input type="password" name="password" value="" size="50" /></td>
                    </tr>
                    
                    <tr>
                        <td>User Type :</td>
                        <td><select name="userType">
                            <option>S</option>
                            <option>A</option></select>
                            </td>
                    </tr>
                    
                </tbody>
            </table>
           
                     
  
           
       
       <br> <br>
           <!--  <button type="reset" class="btn btn-info" name="Reset">Clear</button>  -->
            <button type = "submit" class="btn btn-info" name="submit"  >Submit</button>
        <!--    <a href= "userAccount.jsp" class="btn btn-info" name="new">Create Next Account</a> -->  
            
             
        
        
        </form>
       
      
        

</div>
</div>
</div>
 



</body>
</html>