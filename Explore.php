<?php
	$con=new mysqli_connect("localhost","root","","short films sample");
	
// Check connection
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully";

echo $gen+$lang

if(isset($_POST['submit']))
	$genreq=$_POST['gen'];
	$langq=$_POST['lang'];
	
	 $genre=mysqli_query($con,"SELECT * FROM genre WHERE Genre_Name LIKE '%$genreq%'") or die("could not search2");
	 $lang=mysqli_query($con,"SELECT * FROM lang WHERE Language_Name LIKE '%$langq%'") or die("could not search1");
	
	
while ($row=mysqli_fetch_array($genre))
{
		$genid =$row['Genre_Id'];
	 
	      while ($row=mysqli_fetch_array($lang))
		{
		$langid =$row['Language_Id'];
        $query =mysqli_query($con,"SELECT * FROM shortfilm WHERE Genre_Id LIKE '%$genreq%' AND Language_Id LIKE '%$langq%'") or die("could not search1");			
		}
}	
	
	$count=mysqli_num_rows($query);
	if($count==0)
	{
		$output='No Short Film Found';
	}
	else
	{
		while ($row=mysqli_fetch_array($query))
		{
			$sfid =$row['Movie_Id'];
	
			$output.= '<div>'.$sfid.'</div>';}
    }
    }
?>

<!DOCTYPE html>
<html>
 <head>
  <title> Explore - ShortFilmsWindow</title>
  
  <link rel="stylesheet" type="text/css" href="Explorestyle.css">
  
<style>

</style>
</head>

<body>
<table>
 <tr><th>
<font size="10" face="Comic Sans MS">
 <b><i>Explore</i></b>
</font>

</th><th>
  <font size="10" face="Comic Sans MS">
   <input type="text" size="50" maxlength="50" placeholder="Search" name="search"><br><br>
  </font>
</th></tr>
</table>

<hr></hr><br>

<font size="6" face="Comic Sans MS">
Filter By-
</font>

<br><br>

<form action="Explore.php" method="POST">
<select id="genre" name="Genre">
  <li>Genre:
  <option value="All">All</option>
  <option value="Comedy">Comedy</option>
  <option value="Horror">Horror</option>
  <option value="Romance">Romance</option>
  <option value="Thriller">Thriller</option>
</select>

<select id="lang' name="Language">
  Language:
  <option value="All">All</option>
  <option value="English">English</option>
  <option value="Hindi">Hindi</option>
  <option value="Marathi">Marathi</option>
</select>

<input type="submit" value="Submit">
</form>

<script>
function getValues() {
  gen=document.getElementById("genre").value;
  lang=document.getElementById("lang").value;
}
</script>

</body>
</html>