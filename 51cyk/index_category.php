<!DOCTYPE html>
<html>
<head>
	<title></title>
	<!-- 引用头部css和js-->
    <link rel="stylesheet" type="text/css" href="css/header.css">
    <script type="text/javascript" src="js/header.js"></script> 
    <link rel="stylesheet" type="text/css" href="css/index_category.css">
    <script type="text/javascript" src="js/index_category.js"></script> 
</head>
<body onload="title_bgcolor(<?php echo $_GET['pkCategory'];?>)">
<?php include "header2.php";?>
<hr>
<div class="category" id="category">
   <?php include "php/select_category.php";?>
   <div class="category_main">
   	<div class="index"><a href="index.php">首页</a>&nbsp;>&nbsp;<?php echo $arr[$_GET['pkCategory']];?></div>
   	<div class="title">
   		<ul>             
               <?php
                  for($i=0;$i<$num_rows;$i++){
                      echo "<li id='c_".$i."'><a href='index_category.php?pkCategory=".$i."' id='c_1_".$i."'>".$arr[$i]."</a></li> ";
                  }
               ?>
   		</ul>
   	</div>
   	<div class="img" style="background: url() no-repeat;" id="img_main"></div>
   	<div class="content">
      <?php
                    include "conf/conn_mysql.php";

                    $pageCategory = 1;
                    if(isset($_GET['pkCategory'])){
                      $pageCategory = $_GET['pkCategory']+1;
                    }

                     $sql        = "select pkFood,name,about,img_big from test_food 
                      where pkCategory= '$pageCategory' ORDER BY pkFood  ";
                    $result     = mysql_query($sql);
                    $num_rows = mysql_num_rows($result);
                    /*print_r($num_rows);*/
                    $arr=array();
                    while ($row = mysql_fetch_array($result))
                    {
                    $arr[] = $row;              
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
                  }
                    /*echo count($arr1);
                    echo ceil(count($arr1)/2);
                    echo floor(count($arr1)/2);*/
                   
      ?>
      <!-- echo floor(4.3);   // 4 
           echo ceil(4.3);    // 5 -->
               <?php 
               for($i=0;$i< ceil(count($arr1)/2);$i++){
               
               ?>
      <input type="hidden" id="main_height" value="<?php
      echo ceil(count($arr1)/2);?>">
   		<div class="content_left">
   			<div class="top">
   				<img src=" <?php echo $arr1[$i*2][3]?> ">
   			</div>
   			<div class="bottom">
   				<div class="name">
               <?php echo $arr1[$i*2][1]?> 
               </div>
   				<div class="text">
               <?php echo $arr1[$i*2][2]?>         
               </div>
   				<div class="button" id="button_<?php echo $i*2?>" onmousemove="button_bgcolor_move(<?php echo $i*2?>)" onmouseout="button_bgcolor_out(<?php echo $i*2?>)"><a href="food.php?pkCategory=<?php echo $_GET['pkCategory'];?>&pkFood=<?php echo $arr1[$i*2][0]?>" id="button_1_<?php echo $i*2?>"
               >查看详情</a></div>
   			</div>
   		</div>
        <?php
          if($i==ceil(count($arr1)/2)-1&&count($arr1)%2!=0){
                 break;
          }
        ?>
   		<div class="content_right">
   			<div class="top">
   				<img src="<?php echo $arr1[$i*2+1][3]?>">
   			</div>
   			<div class="bottom">
   				<div class="name"><?php echo $arr1[$i*2+1][1]?></div>
   				<div class="text"><?php echo $arr1[$i*2+1][2]?></div>
   				<div class="button" id="button_<?php echo $i*2+1?>" onmousemove="button_bgcolor_move(<?php echo $i*2+1?>)" onmouseout="button_bgcolor_out(<?php echo $i*2+1?>)"><a href="food.php?pkCategory=<?php echo $_GET['pkCategory'];?>&pkFood=<?php echo $arr1[$i*2+1][0]?>" id="button_1_<?php echo $i*2+1?>"
               >查看详情</a></div> 
   			</div>
   		</div>
        
         <?php } ?>
   </div>
   	<div class="foot">
         <ul>
            <li id="num_1" onmousemove="num_bgcolor_move(1)" onmouseout="num_bgcolor_out(1)"><a href="index_category.php?pkCategory=<?php echo $_GET['pkCategory'];?>&pageNow=1" id="num_1_1">首页</a></li>
            <li id="num_2" onmousemove="num_bgcolor_move(2)" onmouseout="num_bgcolor_out(2)"><a href="index_category.php?pkCategory=<?php echo $_GET['pkCategory'];?>&pageNow=<?php echo $pageNow-1;?>" id="num_1_2">上一页></a></li>
            <li style="border: 0px;color:black;">第&nbsp;<font color="#31C27C"><?php echo $pageNow;?></font>&nbsp;页</li>
            <li id="num_3" onmousemove="num_bgcolor_move(3)" onmouseout="num_bgcolor_out(3)"><a href="index_category.php?pkCategory=<?php echo $_GET['pkCategory'];?>&pageNow=<?php echo $pageNow+1;?>" id="num_1_3">下一页></a></li>
            <li id="num_4" onmousemove="num_bgcolor_move(4)" onmouseout="num_bgcolor_out(4)"><a href="index_category.php?pkCategory=<?php echo $_GET['pkCategory'];?>&pageNow=<?php echo $pageCount;?>" id="num_1_4">尾页</a></li>
            <li style="border: 0px;color:black;">共&nbsp;<font color="#31C27C"><?php echo $pageCount;?></font>&nbsp;页</li>
         </ul>
      </div>
   </div>
</div>
<?php include "footer.php";?>  
</body>
</html>