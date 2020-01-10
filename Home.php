<!DOCTYPE html>
<html>
<head>
<title> Home - ShortFilmsWindow </title>
<link rel="stylesheet" type="text/css" href="styling.css">

<style>
<video
#myVideo {
  position: relative;
  right: 0;
  bottom: 0;
  min-width: 100%; 
  min-height: auto;
}

<!--Sticky nav bar-->
body {
  margin: 10px;
  font-size: 28px;
  font-family: Arial, Helvetica, sans-serif;
}

video {
    display: inline-block;
    vertical-align: baseline;
}

.header {
  background-color: #f1f1f1;
  padding: 30px;
  text-align: center;
}

.footer {
  font-size: 5px
  background-color: #f1f1f1;
  padding: 30px;
  text-align: center; 
}

#navbar {
  overflow: hidden;
  background-color: ##242020;
}

#navbar a {
  float: none;
  position: center
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 26px;
  text-decoration: none;
  font-size: 20px;
}

#navbar a:hover {
  background-color: #ddd;
  color: black;
}

#navbar a.active {
  background-color: #4CAF50;
  color: white;
}

.content {
  padding: 16px;
}

.sticky {
  position: fixed;
  top: 1%;
  width: 100%;
}

.sticky + .content {
  padding-top: 60px;
}

<!--Table-->
th, td {
  padding: 15px;
}
</style>

</head>

<body>
<!--Sticky nav bar-->
<table style="width:100%">
<tr>
<th>
<div id="navbar">
  <a class="active" href="index.php"> Home </a>
  <a href="Explore.php"> Explore </a>
  <a href="About.php"> About </a>
  <a href="Contact.php"> Contact Us </a>
</div>
</th>
</tr>
</table>
<br>

<hr></hr>

<video width="1300" height="720"
 video autoplay muted loop id="myVideo">
  <source src="LandingVideo.mp4" type="video/mp4">
  Your browser does not support HTML5 video.
</video>

<div class="footer"> ShortFilmsWindow | All Rights Reserved </div>

<script>
<!--Sticky nav bar-->
window.onscroll = function() {myFunction()};

var navbar = document.getElementById("navbar");
var sticky = navbar.offsetTop;

function myFunction() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky")
  } 
}
</script>

</body>

</html>