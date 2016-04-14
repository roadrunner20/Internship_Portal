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


</head>
<body>
<div align="center">
<div id="header">
<h1 class="ex2"> UNIVERSITY OF WINDSOR</h1>
</div>

<h2 class="ex2"> INTERNSHIP PORTAL</h2>
<font face="Georgia" size="4"> Adding Students' Skill Set</font>

<br><br>




<ul class="nav nav-tabs">

  <li><a href="createStudentProfile.jsp">Basic Info.</a></li>
  <li><a href="studentEducationDetails.jsp">Educational Details</a></li>
  <li><a href="studentCertificationDetails.jsp">Certification Details</a></li>
  <li><a href="studentWorkExperience.jsp">Work Experience</a></li>
   <li class="active"><a href="studentSkillSet.jsp">Competency Level</a></li>
    <li><a href="admin.jsp">Home</a></li>
</ul>

</div>

<div align="center">
<div class="container">
<br> 

 
 <form name="skillSet" action="studentSkillSetDB.jsp">
       
        <table border="0" cellspacing="0" cellpadding="25">
            <thead>
                    <tr>
                        <td>Student ID :</td>
                        <td><input type="text" name="studentID" value="" size="28" /></td>
                    </tr>
                <tr>
                    <th width = 18%>Skills</th>
                    <th width="22%">Not at all competent</th>
                    <th width="20%">Little competent</th>
                     <th width="25%">Moderately competent</th>
                     <th width="20%">Extremely competent</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><input type="text" name="ASP.NET" value="ASP.NET" size = "10" readonly ="readonly" style="background-color:burlywood; color:Black;"/></td>
                    <td><input type="radio" name="ASPNET" value="Not at all competent" /></td>
                    <td><input type="radio" name="ASPNET" value="Little competent" /></td>
                    <td><input type="radio" name="ASPNET" value="Moderately competent" /></td>
                    <td><input type="radio" name="ASPNET" value="Extremely competent" /></td>
                  
                </tr>
                <tr>
                    <td><input type="text" name="Clang" value="C" size = "10" readonly="readonly" style="background-color:burlywood; color:Black;"/></td>
                    <td><input type="radio" name="C" value="Not at all competent" /></td>
                    <td><input type="radio" name="C" value="Little competent" /></td>
                    <td><input type="radio" name="C" value="Moderately competent" /></td>
                    <td><input type="radio" name="C" value="Extremely competent" /></td>
                </tr>
                <tr>
                    <td><input type="text" name="C++" value="C++" size = "10" readonly="readonly" style="background-color:burlywood; color:Black;"/></td>
                    <td><input type="radio" name="Cplusplus" value="Not at all competent" /></td>
                    <td><input type="radio" name="Cplusplus" value="Little competent" /></td>
                    <td><input type="radio" name="Cplusplus" value="Moderately competent" /></td>
                    <td><input type="radio" name="Cplusplus" value="Extremely competent" /></td>
                </tr>
                <tr>
                  <td> <input type="text" name="C#" value="C#" size = "10" readonly="readonly" style="background-color:burlywood; color:Black;"/></td>
                    <td><input type="radio" name="Csharp" value="Not at all competent" /></td>
                    <td><input type="radio" name="Csharp" value="Little competent" /></td>
                    <td><input type="radio" name="Csharp" value="Moderately competent" /></td>
                    <td><input type="radio" name="Csharp" value="Extremely competent" /></td>
                </tr>
                <tr>
                   <td> <input type="text" name="flex" value="Flex" size = "10" readonly="readonly" style="background-color:burlywood; color:Black;"/></td>
                    <td><input type="radio" name="Flex" value="Not at all competent" /></td>
                    <td><input type="radio" name="Flex" value="Little competent" /></td>
                    <td><input type="radio" name="Flex" value="Moderately competent" /></td>
                    <td><input type="radio" name="Flex" value="Extremely competent" /></td>
                </tr>
                <tr>
                     <td> <input type="text" name="java" value="Java" size = "10" readonly="readonly" style="background-color:burlywood; color:Black;"/></td>
                    <td><input type="radio" name="Java" value="Not at all competent" /></td>
                    <td><input type="radio" name="Java" value="Little competent" /></td>
                    <td><input type="radio" name="Java" value="Moderately competent" /></td>
                    <td><input type="radio" name="Java" value="Extremely competent" /></td>
                </tr>
                <tr>
                    <td> <input type="text" name="javascript" value="JavaScript" size = "10" readonly="readonly" style="background-color:burlywood; color:Black;"/></td>
                    <td><input type="radio" name="Javascript" value="Not at all competent" /></td>
                    <td><input type="radio" name="Javascript" value="Little competent" /></td>
                    <td><input type="radio" name="Javascript" value="Moderately competent" /></td>
                    <td><input type="radio" name="Javascript" value="Extremely competent" /></td>
                </tr>
                <tr>
                   <td><input type="text" name="lisp" value="Lisp" size = "10" readonly="readonly" style="background-color:burlywood; color:Black;"/></td>
                    <td><input type="radio" name="Lisp" value="Not at all competent" /></td>
                    <td><input type="radio" name="Lisp" value="Little competent" /></td>
                    <td><input type="radio" name="Lisp" value="Moderately competent" /></td>
                    <td><input type="radio" name="Lisp" value="Extremely competent" /></td>
                </tr>
                <tr>
                      <td><input type="text" name="matlab" value="Matlab" size = "10" readonly="readonly" style="background-color:burlywood; color:Black;"/></td>
                    <td><input type="radio" name="Matlab" value="Not at all competent" /></td>
                    <td><input type="radio" name="Matlab" value="Little competent" /></td>
                    <td><input type="radio" name="Matlab" value="Moderately competent" /></td>
                    <td><input type="radio" name="Matlab" value="Extremely competent" /></td>
                </tr>
                <tr>
                     <td><input type="text" name="Mysql" value="Mysql" size = "10" readonly="readonly" style="background-color:burlywood; color:Black;"/></td>
                    <td><input type="radio" name="mysql" value="Not at all competent" /></td>
                    <td><input type="radio" name="mysql" value="Little competent" /></td>
                    <td><input type="radio" name="mysql" value="Moderately competent" /></td>
                    <td><input type="radio" name="mysql" value="Extremely competent" /></td>
                </tr>
                <tr>
                      <td><input type="text" name="ObjectiveC" value="Objective-C" size = "10" readonly="readonly" style="background-color:burlywood; color:Black;"/></td>
                    <td><input type="radio" name="objectiveC" value="Not at all competent" /></td>
                    <td><input type="radio" name="objectiveC" value="Little competent" /></td>
                    <td><input type="radio" name="objectiveC" value="Moderately competent" /></td>
                    <td><input type="radio" name="objectiveC" value="Extremely competent" /></td>
                </tr>
                <tr>
                    <td><input type="text" name="Pascal" value="Pascal" size = "10" readonly="readonly" style="background-color:burlywood; color:Black;"/></td>
                    <td><input type="radio" name="pascal" value="Not at all competent" /></td>
                    <td><input type="radio" name="pascal" value="Little competent" /></td>
                    <td><input type="radio" name="pascal" value="Moderately competent" /></td>
                    <td><input type="radio" name="pascal" value="Extremely competent" /></td>
                </tr>
                <tr>
                    <td><input type="text" name="Perl" value="Perl" size = "10" readonly="readonly" style="background-color:burlywood; color:Black;"/></td>
                    <td><input type="radio" name="perl" value="Not at all competent" /></td>
                    <td><input type="radio" name="perl" value="Little competent" /></td>
                    <td><input type="radio" name="perl" value="Moderately competent" /></td>
                    <td><input type="radio" name="perl" value="Extremely competent" /></td>
                </tr>
                <tr>
                     <td><input type="text" name="PHP" value="PHP" size = "10" readonly="readonly" style="background-color:burlywood; color:Black;"/></td>
                    <td><input type="radio" name="php" value="Not at all competent" /></td>
                    <td><input type="radio" name="php" value="Little competent" /></td>
                    <td><input type="radio" name="php" value="Moderately competent" /></td>
                    <td><input type="radio" name="php" value="Extremely competent" /></td>
                </tr>
                <tr>
                     <td><input type="text" name="Prolog" value="Prolog" size = "10" readonly="readonly" style="background-color:burlywood; color:Black;"/></td>
                    <td><input type="radio" name="prolog" value="Not at all competent" /></td>
                    <td><input type="radio" name="prolog" value="Little competent" /></td>
                    <td><input type="radio" name="prolog" value="Moderately competent" /></td>
                    <td><input type="radio" name="prolog" value="Extremely competent" /></td>
                </tr>
                <tr>
                      <td><input type="text" name="Python" value="Python" size = "10" readonly="readonly" style="background-color:burlywood; color:Black;"/></td>
                    <td><input type="radio" name="python" value="Not at all competent" /></td>
                    <td><input type="radio" name="python" value="Little competent" /></td>
                    <td><input type="radio" name="python" value="Moderately competent" /></td>
                    <td><input type="radio" name="python" value="Extremely competent" /></td>
                </tr>
                <tr>
                     <td><input type="text" name="Rprog" value="R" size = "10" readonly="readonly" style="background-color:burlywood; color:Black;"/></td>
                    <td><input type="radio" name="R" value="Not at all competent" /></td>
                    <td><input type="radio" name="R" value="Little competent" /></td>
                    <td><input type="radio" name="R" value="Moderately competent" /></td>
                    <td><input type="radio" name="R" value="Extremely competent" /></td>
                </tr>
                <tr>
                    <td><input type="text" name="Ruby" value="Ruby" size = "10" readonly="readonly" style="background-color:burlywood; color:Black;"/></td>
                    <td><input type="radio" name="ruby" value="Not at all competent" /></td>
                    <td><input type="radio" name="ruby" value="Little competent" /></td>
                    <td><input type="radio" name="ruby" value="Moderately competent" /></td>
                    <td><input type="radio" name="ruby" value="Extremely competent" /></td>
                </tr>
                <tr>
                      <td><input type="text" name="SQL_Oracle" value="SQL-Oracle" size = "10" readonly="readonly" style="background-color:burlywood; color:Black;"/></td>
                    <td><input type="radio" name="sql_oracle" value="Not at all competent" /></td>
                    <td><input type="radio" name="sql_oracle" value="Little competent" /></td>
                    <td><input type="radio" name="sql_oracle" value="Moderately competent" /></td>
                    <td><input type="radio" name="sql_oracle" value="Extremely competent" /></td>
                </tr>
                <tr>
                      <td><input type="text" name="tcl" value="Tcl" size = "10" readonly="readonly" style="background-color:burlywood; color:Black;"/></td>
                    <td><input type="radio" name="Tcl" value="Not at all competent" /></td>
                    <td><input type="radio" name="Tcl" value="Little competent" /></td>
                    <td><input type="radio" name="Tcl" value="Moderately competent" /></td>
                    <td><input type="radio" name="Tcl" value="Extremely competent" /></td>
                </tr>
                <tr>
                    <td><input type="text" name="vbnet" value="VB.NET" size = "10" readonly="readonly" style="background-color:burlywood; color:Black;"/></td>
                    <td><input type="radio" name="VBNET" value="Not at all competent" /></td>
                    <td><input type="radio" name="VBNET" value="Little competent" /></td>
                    <td><input type="radio" name="VBNET" value="Moderately competent" /></td>
                    <td><input type="radio" name="VBNET" value="Extremely competent" /></td>
                </tr>
                <tr>
                    <td><input type="text" name="concrete5" value="Concrete5" size = "10" readonly="readonly" style="background-color:burlywood; color:Black;"/></td>
                    <td><input type="radio" name="Concrete5" value="Not at all competent" /></td>
                    <td><input type="radio" name="Concrete5" value="Little competent" /></td>
                    <td><input type="radio" name="Concrete5" value="Moderately competent" /></td>
                    <td><input type="radio" name="Concrete5" value="Extremely competent" /></td>
                </tr>
                <tr>
                    <td><input type="text" name="dotnetnuke" value="DotNetNuke" size = "10" readonly="readonly" style="background-color:burlywood; color:Black;"/></td>
                    <td> <input type="radio" name="DotNetNuke" value="Not at all competent" /></td>
                    <td><input type="radio" name="DotNetNuke" value="Little competent" /></td>
                    <td><input type="radio" name="DotNetNuke" value="Moderately competent" /></td>
                    <td><input type="radio" name="DotNetNuke" value="Extremely competent" /></td>
                </tr>
                <tr>
                    <td><input type="text" name="Drupal" value="Drupal" size = "10" readonly="readonly" style="background-color:burlywood; color:Black;"/></td>
                    <td><input type="radio" name="drupal" value="Not at all competent" /></td>
                    <td><input type="radio" name="drupal" value="Little competent" /></td>
                    <td><input type="radio" name="drupal" value="Moderately competent" /></td>
                    <td><input type="radio" name="drupal" value="Extremely competent" /></td>
                </tr>
                <tr>
                   <td><input type="text" name="Joomla" value="Joomla" size = "10" readonly="readonly" style="background-color:burlywood; color:Black;"/></td>
                    <td><input type="radio" name="joomla" value="Not at all competent" /></td>
                    <td><input type="radio" name="joomla" value="Little competent" /></td>
                    <td><input type="radio" name="joomla" value="Moderately competent" /></td>
                    <td><input type="radio" name="joomla" value="Extremely competent" /></td>
                </tr>
                <tr>
                    <td><input type="text" name="Wordpress" value="Wordpress" size = "10" readonly="readonly" style="background-color:burlywood; color:Black;"/></td>
                    <td><input type="radio" name="wordpress" value="Not at all competent" /></td>
                    <td><input type="radio" name="wordpress" value="Little competent" /></td>
                    <td><input type="radio" name="wordpress" value="Moderately competent" /></td>
                    <td><input type="radio" name="wordpress" value="Extremely competent" /></td>
                </tr>
                <tr>
                    <td><input type="text" name="Android" value="Android" size = "10" readonly="readonly" style="background-color:burlywood; color:Black;"/></td>
                    <td><input type="radio" name="android" value="Not at all competent" /></td>
                    <td><input type="radio" name="android" value="Little competent" /></td>
                    <td><input type="radio" name="android" value="Moderately competent" /></td>
                    <td><input type="radio" name="android" value="Extremely competent" /></td>
                </tr>
                <tr>
                     <td><input type="text" name="ChromeOS" value="Chrome OS" size = "10" readonly="readonly" style="background-color:burlywood; color:Black;"/></td>
                    <td><input type="radio" name="chromeOS" value="Not at all competent" /></td>
                    <td><input type="radio" name="chromeOS" value="Little competent" /></td>
                    <td><input type="radio" name="chromeOS" value="Moderately competent" /></td>
                    <td><input type="radio" name="chromeOS" value="Extremely competent" /></td>
                </tr>
                <tr>
                    <td><input type="text" name="ios" value="iOS" size = "10" readonly="readonly" style="background-color:burlywood; color:Black;"/></td>
                    <td><input type="radio" name="iOS" value="Not at all competent" /></td>
                    <td><input type="radio" name="iOS" value="Little competent" /></td>
                    <td><input type="radio" name="iOS" value="Moderately competent" /></td>
                    <td><input type="radio" name="iOS" value="Extremely competent" /></td>
                </tr>
                <tr>
                   <td><input type="text" name="Linux" value="Linux" size = "10" readonly="readonly" style="background-color:burlywood; color:Black;"/></td>
                    <td><input type="radio" name="linux" value="Not at all competent" /></td>
                    <td><input type="radio" name="linux" value="Little competent" /></td>
                    <td><input type="radio" name="linux" value="Moderately competent" /></td>
                    <td><input type="radio" name="linux" value="Extremely competent" /></td>
                </tr>
                <tr>
                    <td><input type="text" name="MacOS" value="MAC OS" size = "10" readonly="readonly" style="background-color:burlywood; color:Black;"/></td>
                    <td><input type="radio" name="macOS" value="Not at all competent" /></td>
                    <td><input type="radio" name="macOS" value="Little competent" /></td>
                    <td><input type="radio" name="macOS" value="Moderately competent" /></td>
                    <td><input type="radio" name="macOS" value="Extremely competent" /></td>
                </tr>
                <tr>
                     <td><input type="text" name="Unix" value="Unix" size = "10" readonly="readonly" style="background-color:burlywood; color:Black;"/></td>
                    <td><input type="radio" name="unix" value="Not at all competent" /></td>
                    <td><input type="radio" name="unix" value="Little competent" /></td>
                    <td><input type="radio" name="unix" value="Moderately competent" /></td>
                    <td><input type="radio" name="unix" value="Extremely competent" /></td>
                </tr>
                <tr>
                     <td><input type="text" name="Windows" value="Windows" size = "10" readonly="readonly" style="background-color:burlywood; color:Black;"/></td>
                    <td><input type="radio" name="windows" value="Not at all competent" /></td>
                    <td><input type="radio" name="windows" value="Little competent" /></td>
                    <td><input type="radio" name="windows" value="Moderately competent" /></td>
                    <td><input type="radio" name="windows" value="Extremely competent" /></td>
                </tr>
               
            </tbody>
        </table>
          <input type="submit"  class="btn btn-info" value="Submit" name="submit" />
        </form>

    </body>
</html>
