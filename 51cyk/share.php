<!DOCTYPE html>
<html>
<head>
	<title></title>
	<!-- 引用头部css和js-->
    <link rel="stylesheet" type="text/css" href="css/header.css">
   <script type="text/javascript" src="js/header.js"></script> 

  <link rel="stylesheet" type="text/css" href="css/share.css">
  <script type="text/javascript" src="js/share.js"></script> 

</head>
<body onload="nav_bgcolor(3)">
<?php include "header.php";?>
<div class="share">
    <div class="title">一日三餐要吃点什么呢？</div>
	<div class="top">
		<div class="top_left" onclick="left_img()">&lt;</div>
		<div class="top_right" onclick="right_img()">&gt;</div>
		<div class="top_1"><img src="img/share_01.jpg" id="top_1"></div>
		<div class="top_2"><img src="img/share_02.jpg" id="top_2"></div>
		<div class="top_3"><img src="img/share_03.jpg" id="top_3"></div>
		
	</div>
	<hr>
	<div class="bottom" id="bottom">
	早餐时间	
		<!-- <div class="center">
			<div class="png_1"></div>		
			<div class="png_2"></div>		
			<div class="png_3"></div>			
			<div class="png_4"></div>
			<div class="center_1" id="center_1" onmousemove="move_font(1)" onmouseout="out_font()"></div>
			<div class="center_2" id="center_2" onmousemove="move_font(2)" onmouseout="out_font()"></div>
			<div class="center_3" id="center_3" onmousemove="move_font(3)" onmouseout="out_font()"></div>
		</div> -->
	</div>
</div>
<?php include "footer.php";?>  
</body>
</html>