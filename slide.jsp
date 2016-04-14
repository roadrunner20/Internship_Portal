<html>
<head>
<script type="text/javascript">

var slideimages = new Array() // create new array to preload images
slideimages[0] = new Image() // create new instance of image object
slideimages[0].src = "firstcar.png" // set image object src property to an image's src, preloading that image in the process
slideimages[1] = new Image()
slideimages[1].src = "secondcar.jpg"
slideimages[2] = new Image()
slideimages[2].src = "thirdcar.png"

</script>
</head>
<body>
<a href="javascript:slidelink()"><img src="firstcar.png" id="slide" width=500 height=500 /></a>

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
</body>
</html>