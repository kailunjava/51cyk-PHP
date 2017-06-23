<!DOCTYPE html>
<html>
<head>
	<title></title>
	<!-- 引用头部css和js-->
    <link rel="stylesheet" type="text/css" href="css/header.css">
   <script type="text/javascript" src="js/header.js"></script> 
    
    <link  rel="stylesheet" type="text/css" href="css/talk.css">
     <script type="text/javascript" src="js/talk.js"></script>  
</head>
<body onload="nav_bgcolor(4)">
<?php include "header.php";?>
<?php
                    include "conf/conn_mysql.php";
                  
                     $sql        = "select pkTalk,title,content,author,startTime,passes from test_talk ORDER BY passes desc  limit 0,6;";
                     $result     = mysql_query($sql);
                     $arr=array();
                    while ($row = mysql_fetch_array($result))
                    {
                    $arr[]= $row;
                    }
                    $author_name=array();
                    for($i=0;$i<6;$i++){
                    $pkUser = $arr[$i][3];
                   
                    $sql ="select nickname from test_user where pkUser='$pkUser' ";
                    $result1 = mysql_query($sql);

                    while ($row = mysql_fetch_array($result1))
                    {
                    $author_name[] = $row;
                    }

                    }

                    $sql_1        = "select nickname from test_user ORDER BY posts desc  limit 0,10;";
                     $result_1     = mysql_query($sql_1);
                     $nickname = array();

                     while ($row = mysql_fetch_array($result_1))
                     {
                     $nickname[]= $row;
                     }
                    ?>
<div class="talk_all">
<div class="talk">
  
	<div class="talk_left">
		<div class="left_1">
			<div class="left_1_img" id="left_1_img"></div>
			<div class="left_1_text" id="left_1_text">妈妈的味道</div>
			<div class="left_1_text_two" id="left_1_text_two">----儿时的小吃</div>
		</div>
		<div class="left_2">
			<div class="left_2_png"></div>
			<h2>热门话题</h2>

			<hr/>
            <?php
                  for($i=0;$i<6;$i++){
            ?>
			<div class="left_2_content">
			<div class="times">
				<div class="times_one">
				<?php echo $arr[$i][5];?>
				</div>
				<div class="times_two">浏览</div>
			</div>
			<div class="title"><a href="talk_details.php?pkTalk=<?php echo $arr[$i][0];?>"><?php echo $arr[$i][1];?></a></div>
			<div class="details"><?php echo $arr[$i][2];?></div>
			<div class="author">作者:<?php echo $author_name[$i][0];?></div>
			<div class="start_time">发帖时间: <?php echo $arr[$i][4];?></div>
			<!--<div class="end_time">最后回复时间: --><?php //echo $arr[$i][4];?>
			<!--</div>-->
		         </div>
		         <hr/>
	        <?php } ?>	 
		    </div>
		</div>
	
	<div class="talk_right">
        <div class="right_1" id="right_1" onmousemove="right_1_color(1)"
         onmouseout="right_1_color(2)">
         <?php
         @session_start();
         
         if (isset($_SESSION['user']) && !empty($_SESSION['user'])) {
         	echo "<a href='talk_release.php'>点击发帖</a>";
         }
         else{
         	echo "<a href='login.php'>点击发帖</a>";
         }
         ?>
         <!-- <a href="talk_release.php">点击发帖</a> -->
		</div>
		 <div class="right" id="right" onmousemove="right_color(1)"
         onmouseout="right_color(2)">
         <a href="talk_all.php">所有话题</a>
		</div>
        <div class="right_2_png"></div>
         <div class="right_2_text">话题排行榜
         </div>       
		<div class="right_2">
		    <hr> 		
			<ul>
				<?php
                    for($i=0;$i<5;$i++){
				 echo "<li><div class='right_2_left' id='right_2_left_".$i."'>".($i+1)."</div><a href='talk_details.php?pkTalk=".$arr[$i][0]."'>".$arr[$i][1]."</a></li>";
				 }?>
			</ul>
			
		</div>
		<hr>
	       <div class="right_3_png"></div>
		  <div class="right_3_text">积分排行榜
		   </div>    
	    <div class="right_3">
	    <hr> 
	    <ul>
	    	<?php
                    for($i=0;$i<10;$i++){
				 echo "<li><div class='right_3_left' id='right_3_left_".$i."' 
				 >".($i+1)."</div><a>".$nickname[$i][0]."</a></li>";
				 }?>
	    </ul>
	        <!-- <div class="right_3_left" style="background-color: #FC072F;">1</div>
	        			<div class="right_3_right">454554</div>
	        			<div class="right_3_left" style="background-color: #1EFC07;">2</div>
	        			<div class="right_3_right">张三</div>
	        			<div class="right_3_left" style="background-color: #FCBF07;">3</div>
	        			<div class="right_3_right">李四</div>
	        			<div class="right_3_left">4</div>
	        			<div class="right_3_right">王五</div>
	        			<div class="right_3_left">5</div>
	        			<div class="right_3_right">飞翔的樱</div>
	        			<div class="right_3_left">6</div>
	        			<div class="right_3_right">最弱的小鸡</div>
	        			<div class="right_3_left">7</div>
	        			<div class="right_3_right">厨房的秘诀</div>
	        			<div class="right_3_left">8</div>
	        			<div class="right_3_right">你猜</div>
	        			<div class="right_3_left">9</div>
	        			<div class="right_3_right">久石让</div>
	        			<div class="right_3_left">10</div>
	        			<div class="right_3_right">小天</div> -->
		</div>
	</div>
	
	</div>
	</div>
 <?php include "footer.php";?>  
</body>
</html>