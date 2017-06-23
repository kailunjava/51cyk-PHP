<!DOCTYPE html>
<html>
<head>
	<title></title>
	<!-- 引用头部css和js-->
    <link rel="stylesheet" type="text/css" href="css/header.css">
   <script type="text/javascript" src="js/header.js"></script> 
   <link rel="stylesheet" type="text/css" href="css/user.css">
   <script type="text/javascript" src="js/user.js"></script>
   <script type="text/javascript">

		function GetQueryString(name)
		{
		     var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
		     var r = window.location.search.substr(1).match(reg);
		     if(r!=null)return  unescape(r[2]); return null;
		}
   	  window.onload =function(){
          if(GetQueryString("user")==0){
          	alert('用户不存在');
          }
          console.log(GetQueryString("user"));
          var imgs = document.getElementsByTagName("img");
          for(var i=0;i<imgs.length;i++){
           if(imgs[i].src.indexOf("/attached/image/")>0){
           imgs[i].width="0";
           imgs[i].height="0";
           console.log(imgs[i]);
    }
  }
   	  }
	   
   </script>
</head>
<body onload="bt_color(<?php echo $_GET['bt'];?>)">
<?php include "header2.php";?>
<hr>
	<div class="body_user" id="body_user" style="display:none;">
	  <div class="mes_details">
	    <div class="mes_title">发私信
	    <div class="quit" onclick="quit()">×</div>
	    </div>
		<hr>
		<div class="mes_main">
		 <form action="php/send_mes.php" method="post"
		   name="send_mes">
		 <input type="hidden" name="sendUser" value="<?php 
			@session_start();
			echo @$_SESSION['pkUser'];
			?>">
		    <div class="mes_main_1">
			发送给：<input type="text" name="getUserName" id="getUserName">
		    </div>
		    <div class="mes_main_2">
			内容：<textarea placeholder="发私信..." maxlength="255"  name="content" id="content_mes"></textarea>
		    </div>	 
		      
		    <input type="button" class="mes_submit" value="发送" onclick="check_mes()"> 
		    </form>
		    </div>
		    <hr>		    
	   </div>
	</div>
<div class="user_all">
<?php
   include "conf/conn_mysql.php";
   @session_start();
   @$pkUser = $_SESSION['pkUser'];
   $sql        = "select nickname,createTime,posts,follows,fans,meses,img from test_user where 
                       pkUser='$pkUser' ";
                     $result     = mysql_query($sql);
                     
                    while ($row = mysql_fetch_array($result))
                    {
                    @$arr[] = $row;
                    }
?>
<div class="user">
    <div class="title">用户中心</div>
	<div class="top">
		<div class="img"><img src="<?php echo @$arr[0][6];?>"></div>
		<div class="top_center">
			<div class="name"><?php echo @$arr[0][0];?></div>
			<div class="regist">
				<?php echo @$arr[0][1];?>&nbsp;注册&nbsp;&nbsp;
				|&nbsp;&nbsp;<a href="update_user.php?ch=0">编辑个人资料</a>
			</div>
			<div class="mes"></div>
			<hr>
		</div>
		<div class="top_right">
			<ul>
				<a href="user.php?bt=0"><li id="tr_0" onmousemove="tr_color_move(0)" onmouseout="tr_color_out(0)">&nbsp;发帖<br>
					<div class="num" id="tr_1_0"><?php echo @$arr[0][2];?></div>
				</li></a>
				<a href="user.php?bt=2"><li id="tr_1" onmousemove="tr_color_move(1)" onmouseout="tr_color_out(1)">&nbsp;关注<br>
					<div class="num" id="tr_1_1"><?php echo @$arr[0][3];?></div></li></a>
				<a href="user.php?bt=3"><li id="tr_2" onmousemove="tr_color_move(2)" onmouseout="tr_color_out(2)">&nbsp;粉丝<br>
					<div class="num" id="tr_1_2"><?php echo @$arr[0][4];?></div></li></a>
				<a href="user.php?bt=1"><li id="tr_3" onmousemove="tr_color_move(3)" onmouseout="tr_color_out(3)">&nbsp;私信<br>
					<div class="num" id="tr_1_3"><?php echo @$arr[0][5];?></div></li></a>
			</ul>
		</div>
	</div>

		<div class="bottom_top">
			<ul>
				<a href="user.php?bt=0"><li id="bt_0">最近发帖</li></a>
				<a href="user.php?bt=1"><li id="bt_1">我的私信</li></a>
				<a href="user.php?bt=2"><li id="bt_2">我的关注</li></a>
				<a href="user.php?bt=3"><li id="bt_3">我的粉丝</li></a>
			</ul>
			
			<hr>
			<div class="send_mes" id="send_mes"
			style="display:none;" onclick="send_mes_onclick()">+发私信</div>
		</div>
		<div class="release" id="release" >
		<?php
             include "conf/conn_mysql.php";

                    @session_start();
					@$pkUser = $_SESSION['pkUser'];
					$sql        = "select pkTalk,title,content,startTime,passes from test_talk where 
                       author='$pkUser' ORDER BY startTime desc  limit 0,4;";
                     $result     = mysql_query($sql);                
                     $talks=array();

                    while ($row = mysql_fetch_array($result))
                    {
                    $talks[] = $row;
                    }
		?>
			<ul>
			   <?php for($i=0;$i<count($talks);$i++){?>
				<li>
				<div class="times">
      				<div class="times_one">
      				<?php echo @$talks[$i][4]?>
      				</div>
      				<div class="times_two">浏览</div>
      			</div>
      			<a href="talk_details.php?pkTalk=<?php echo @$talks[$i][0]?>"><div class="title_1"><?php echo @$talks[$i][1]?></div></a>
      			<div class="details"><?php echo @$talks[$i][2]?></div>
      			<div class="author">作者:<?php echo @$arr[0][0];?></div>
      			<div class="start_time">发帖时间: <?php echo @$talks[$i][3]?></div>
      			<div class="end_time">最后回复时间: <?php echo @$talks[$i][3]?>
      			</div>
      			
      			<hr>
      			<a href="php/delete_talk.php?pkTalk=<?php echo @$talks[$i][0]?>"><div class="delete">删除帖子</div></a>
      			</li>
      			<?php } ?>
			</ul>
		</div>

		<div class="meses" id="meses" style="display:none;">
		<?php
             include "conf/conn_mysql.php";

                    @session_start();
					@$pkUser = $_SESSION['pkUser'];
					$sql        = "select sendUser,content,sendTime,pkMes from test_mes where 
                       getUser='$pkUser' ORDER BY sendTime desc  limit 0,4;";
                     $result     = mysql_query($sql);                
                     $meses=array();

                    while ($row = mysql_fetch_array($result))
                    {
                    $meses[] = $row;
                    }

                    $meses_author=array();
                    for($k=0;$k<count($meses);$k++){
                    $pkUser_meses = $meses[$k][0];
                    $sql_1        = "select nickname,posts,follows,fans,img,createTime,pkUser from 
                         test_user
                        where pkUser='$pkUser_meses'";
                    $result1_meses    = mysql_query($sql_1);                   
                    while ($row = mysql_fetch_array($result1_meses))
                    {
                    $meses_author[] = $row;
                    }
                }
		?>
			<ul>
			<?php for($i=0;$i<count($meses);$i++){?>
				<li>
					<div class="img"><img src="<?php echo @$meses_author[$i][4]?>"></div>
					<div class="nickname"><?php echo @$meses_author[$i][0];?></div>
					<div class="content"><?php echo @$meses[$i][1];?></div>
					<a href="php/delete_mes.php?pkMes=<?php echo @$meses[$i][3]?>"><div class="delete">删除对话</div>
					</a>
					<hr>
				</li>
			<?php } ?>
				         
			</ul>

		</div>

		<div class="follows" id="follows" style="display:none;">
		<?php
             include "conf/conn_mysql.php";

                    @session_start();
					@$pkUser = $_SESSION['pkUser'];
					$sql        = "select followUser,pkFollow from test_follow where 
                       pkUser='$pkUser' limit 0,4;";
                     $result     = mysql_query($sql);                
                     $follows=array();

                    while ($row = mysql_fetch_array($result))
                    {
                    $follows[] = $row;
                    }

                    $users=array();
                    for($k=0;$k<count($follows);$k++){
                    $pkUser_1 = $follows[$k][0];
                    $sql        = "select nickname,posts,follows,fans,img,createTime,pkUser,img from 
                         test_user
                        where pkUser='$pkUser_1'";
                    $result1_child     = mysql_query($sql);                   
                    while ($row = mysql_fetch_array($result1_child))
                    {
                    $users[] = $row;
                    }
                }
		?>
			<ul>
			 <?php for($i=0;$i<count($users);$i++){?>
				<li>
					<div class="img"><img src="<?php echo @$users[$i][4]?>"></div>
					<div class="nickname"><?php echo @$users[$i][0]?></div>
					<div class="content">
						发帖：<?php echo @$users[$i][1]?>&nbsp;|&nbsp;关注：<?php echo @$users[$i][2]?>&nbsp;|&nbsp;粉丝：<?php echo @$users[$i][3]?>
					</div>
					<a href="php/delete_follows.php?followUser=<?php echo @$follows[$i][0]?>&pkFollow=<?php echo @$follows[$i][1]?>"><div class="delete">取消关注</div></a>
					<hr>
				</li>
				<?php } ?>
			</ul>

		</div>

		<div class="fans" id="fans" style="display:none;">
		<?php
             include "conf/conn_mysql.php";

                    @session_start();
					@$pkUser = $_SESSION['pkUser'];
					$sql        = "select pkUser from test_follow where 
                       followUser='$pkUser' limit 0,4;";
                     $result     = mysql_query($sql);                
                     $follows=array();

                    while ($row = mysql_fetch_array($result))
                    {
                    $follows[] = $row;
                    }

                    $users=array();
                    for($k=0;$k<count($follows);$k++){
                    $pkUser_1 = $follows[$k][0];
                    $sql        = "select nickname,posts,follows,fans,img,createTime,pkUser,img from 
                         test_user
                        where pkUser='$pkUser_1'";
                    $result1_child     = mysql_query($sql);                   
                    while ($row = mysql_fetch_array($result1_child))
                    {
                    $users[] = $row;
                    }
                }
		?>
			<ul>
			<?php for($i=0;$i<count($users);$i++){?>
				<li>
					<div class="img"><img src="<?php echo @$users[$i][4]?>"></div>
					<div class="nickname"><?php echo @$users[$i][0]?></div>
					<div class="content">
						发帖：<?php echo @$users[$i][1]?>&nbsp;|&nbsp;关注：<?php echo @$users[$i][2]?>&nbsp;|&nbsp;粉丝：<?php echo @$users[$i][3]?>
					</div>
					<div class="delete"><font color="#FFFFFF">哈哈</font></div>
					<hr>
				</li>
			<?php } ?>
			</ul>

		</div>
      <!-- <div class="left_2_content">
      			<div class="times">
      				<div class="times_one">
      				2
      				</div>
      				<div class="times_two">浏览</div>
      			</div>
      			<div class="title_1">11</div>
      			<div class="details">gf</div>
      			<div class="author">作者:fgf</div>
      			<div class="start_time">发帖时间: 2017-05-10</div>
      			<div class="end_time">最后回复时间: 2017-05-10
      			</div>
      		    </div>
      		         <hr> -->
      	</div> 
</div>
<?php include "footer.php";?>  
</body>
</html>