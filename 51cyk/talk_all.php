<!DOCTYPE html>
<html>
<head>
	<title></title>
	<!-- 引用头部css和js-->
    <link rel="stylesheet" type="text/css" href="css/header.css">
   <script type="text/javascript" src="js/header.js"></script>  

   <link rel="stylesheet" type="text/css" href="css/talk_all.css">
   <script type="text/javascript" src="js/talk_all.js"></script>
</head>
<body>
<?php include "header2.php";?>
<hr>
<div class="talk_all">
    <div class="href">
    <a href="talk.php">吃货集中营</a>&nbsp;&nbsp;>&nbsp;&nbsp;所有话题</div>
    <?php
                    include "conf/conn_mysql.php";
                   
                     $sql        = "select pkTalk,title,content,author,startTime,passes from test_talk ORDER BY pkTalk desc";
                    $result     = mysql_query($sql);
                    $num_rows = mysql_num_rows($result);
                    
                    $arr=array();
                    while ($row = mysql_fetch_array($result))
                    {
                    $arr[] = $row;              
                    }
                    $author_name=array();
                    for($i=0;$i<count($arr);$i++){
                    $pkUser = $arr[$i][3];
                   
                    $sql ="select nickname from test_user where pkUser='$pkUser' ";
                    $result1 = mysql_query($sql);

                    while ($row = mysql_fetch_array($result1))
                    {
                    $author_name[] = $row;
                    }

                    }
                    $pageNow = 1;/*当前页数*/
                    if(isset($_GET['pageNow'])){
                      $pageNow = $_GET['pageNow'];
                    }
                    $pageSize = 6;/*每页的条数*/
                    $pageCount = ceil($num_rows/$pageSize);/*总页数*/
                    $rowCount=$num_rows;/*总数据量*/
                    if($pageNow<1){
                       $pageNow=1;
                    }
                    if($pageNow>$pageCount){
                       $pageNow=$pageCount;
                    }
                    $start = ($pageNow - 1) * $pageSize;//第n页的起始查询数据
                    $end = $start + $pageSize;//查询到第n页的末尾
                    if($end > $rowCount){
                          $end = $rowCount;
                    }
                    $arr1=array();
                    if($rowCount!=0){
                    for($i=$start;$i<$end ;$i++){
                        $arr1[]=$arr[$i];
                    }
                    for($i=$start;$i<$end ;$i++){
                        $author_name1[]=$author_name[$i];
                    }
                  }
                   
      ?>
  	<div class="talk_main">
       <div class="top">
		
		<?php
         @session_start();
         
         if (isset($_SESSION['user']) && !empty($_SESSION['user'])) {
          echo "<div class='left_2'><a href='talk_release.php'>发布话题</a></div>";
         }
         else{
          echo "<div class='left_2'><a href='login.php'>发布话题</a></div>";
         }
         ?>
		<div class="right">
			<ul>
			    <li id="page_1" onmousemove="page_bgcolor_move(1)" onmouseout="page_bgcolor_out(1)"><a href="talk_all.php?pageNow=1" id="page_1_1">首页</a></li>
				<li id="page_2" onmousemove="page_bgcolor_move(2)" onmouseout="page_bgcolor_out(2)"><a href="talk_all.php?pageNow=<?php echo $pageNow-1;?>" id="page_1_2">上一页</a></li>
				<li style="border:0px;background-color:#FFFFFF;"><font color="#000000">第&nbsp;<font color="#31C27C"><?php echo $pageNow;?></font>&nbsp;页</font></li>
				<li id="page_3" onmousemove="page_bgcolor_move(3)" onmouseout="page_bgcolor_out(3)"><a href="talk_all.php?pageNow=<?php echo $pageNow+1;?>" id="page_1_3">下一页</a></li>
				<li id="page_4" onmousemove="page_bgcolor_move(4)" onmouseout="page_bgcolor_out(4)"><a href="talk_all.php?pageNow=<?php echo $pageCount;?>" id="page_1_4">尾页</a></li>		
			</ul>
		</div>
	</div>
    <hr>

    <?php 
               for($i=0;$i< count($arr1);$i++){
               
               ?>
    <div class="center">
    	<div class="left_content">
			<div class="times">
				<div class="times_one">
				<?php echo $arr1[$i][5]?>		
				</div>
				<div class="times_two">浏览</div>
			</div>
			<div class="title"><a href="talk_details.php?pkTalk=<?php echo $arr1[$i][0]?>"><?php echo $arr1[$i][1]?></a></div>
			<div class="details" id="talk_all_details">
			<?php echo $arr1[$i][2]?>

			</div>
			<div class="author">作者: <?php echo $author_name1[$i][0]?></div>
			<div class="start_time">发帖时间: <?php echo $arr1[$i][4]?></div>
		
		    </div>

    </div>
    <hr>
<?php }?>


      <div class="bottom">
     <?php
         @session_start();
         
         if (isset($_SESSION['user']) && !empty($_SESSION['user'])) {
          echo "<div class='left_2'><a href='talk_release.php'>发布话题</a></div>";
         }
         else{
          echo "<div class='left_2'><a href='login.php'>发布话题</a></div>";
         }
         ?>
		<div class="right">
			<ul>		   
			    <li id="page_5" onmousemove="page_bgcolor_move(5)" onmouseout="page_bgcolor_out(5)"><a href="talk_all.php?pageNow=1" id="page_1_5">首页</a></li>
        <li id="page_6" onmousemove="page_bgcolor_move(6)" onmouseout="page_bgcolor_out(6)"><a href="talk_all.php?pageNow=<?php echo $pageNow-1;?>" id="page_1_6">上一页</a></li>
        <li style="border:0px;background-color:#FFFFFF;"><font color="#000000">第&nbsp;<font color="#31C27C"><?php echo $pageNow;?></font>&nbsp;页</font></li>
        <li id="page_7" onmousemove="page_bgcolor_move(7)" onmouseout="page_bgcolor_out(7)"><a href="talk_all.php?pageNow=<?php echo $pageNow+1;?>" id="page_1_7">下一页</a></li>
        <li id="page_8" onmousemove="page_bgcolor_move(8)" onmouseout="page_bgcolor_out(8)"><a href="talk_all.php?pageNow=<?php echo $pageCount;?>" id="page_1_8">尾页</a></li> 
			</ul>
		</div>

	</div>


  	</div>

</div>
<?php include "footer.php";?>  
</body>
</html>