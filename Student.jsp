<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">

var slideimages = new Array() // create new array to preload images
slideimages[0] = new Image() // create new instance of image object
slideimages[0].src = "cybersystem.png" // set image object src property to an image's src, preloading that image in the process
slideimages[1] = new Image()
slideimages[1].src = "Uwindsor.jpg"
slideimages[2] = new Image()
slideimages[2].src = "nextdim.png"

</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Welcome !</title>
<link rel="stylesheet" href="styles.css" type="text/css">


</head>
<body>
<div align="center">
<h1 class="ex2"> UNIVERSITY OF WINDSOR</h1>


<h2 class="ex2"> INTERNSHIP PORTAL</h2>
<font face="Georgia" size="4"> Welcome, <%= request.getParameter("username") %> </font>
</div>




<div class = container>
<div class="topjobs">Top Jobs</div>


<div align="left">

<a href="javascript:slidelink()"><img src="cybersystem.png" id="slide" width=200 height=100 /></a>

<script type="text/javascript">

//variable that will increment through the images
var step = 0
var whichimage = 0

function slideit(){
 //if browser does not support the image object, exit.
 if (!document.images)
  return
 document.getElementById('slide').src = slideimages[step].src
 whichimage = step
 if (step<2)
  step++
 else
  step=0
 //call function "slideit()" every 2.5 seconds
 setTimeout("slideit()",2500)
}

function slidelink(){
 if (whichimage == 0)
  window.location = "link1.htm"
 else if (whichimage == 1)
  window.location = "link2.htm"
 else if (whichimage == 2)
  window.location = "link3.htm"
}

slideit()

</script>
</div>
</div>


</body>
</html>





