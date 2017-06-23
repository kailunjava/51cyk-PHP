<!DOCTYPE html>
<html>
<head>
	<title></title>
	<!-- 引用头部css和js-->
    <link rel="stylesheet" type="text/css" href="css/header.css">
   <script type="text/javascript" src="js/header.js"></script> 
   <link rel="stylesheet" type="text/css" href="css/update_user.css">
   <script type="text/javascript" src="js/user.js"></script> 

</head>
<body onload="ch_color(<?php echo $_GET['ch'];?>)">
<?php include "header2.php";?>
<hr>
<div class="update_user_all">
	<div class="update_user">
		<div class="title">修改个人资料</div>
		<div class="change">
			<ul>
				<a href="update_user.php?ch=0"><li id="ch_0">修改头像</li></a>
				<a href="update_user.php?ch=1"><li id="ch_1">修改密码</li></a>
			</ul>
		</div>
        <div class="return" >
			<a href="user.php?bt=0"> &lt;-- </a>
		</div>
		<div class="touxiang" id="touxian">
		<?php
             include "conf/conn_mysql.php";

                    @session_start();
					@$pkUser = $_SESSION['pkUser'];
					$sql        = "select img from test_user where 
                       pkUser='$pkUser';";
                     $result     = mysql_query($sql);                
                     $touxiang=array();

                    while ($row = mysql_fetch_array($result))
                    {
                    $touxiang[] = $row;
                    }
		?>
			<div class="text_1">当前头像:</div>
			<div class="img_1"><img src="<?php echo $touxiang[0][0]?>"></div>
			<div class="text_2">新的头像:</div>
			<form action="php/update_png.php" method="post" enctype="multipart/form-data">
			<div class="img_2" id="img_2">
			<img src="img/touxiang_0.jpg" id="img"> 
				<input id="fileId" type="file" onchange="setImagePreview()" name="file" />
			</div>
			<input type="submit" value="保存" id="save">
			
			</form>
		</div>

		<div class="password" id="password" style="display:none;">
		<form action="php/update_pas.php" method="post">
			<div class="text_1">旧密码:</div>
			<div class="input_1">
				<input type="password" name="old_pas" placeholder="请输入旧密码" id="old_pas" onblur ="c_password()" onfocus="o_password()">
			</div>
			<div class="text_2">新密码:</div>
			<div class="input_2">
				<input type="password" name="new_pas" placeholder="请输入新密码" id="new_pas" onblur ="c_new_password()" onfocus="o_new_password()">
			</div>
			<div class="text_3">重复密码:</div>
			<div class="input_3">
				<input type="password" placeholder="请再次输入密码" name="con_pas" id="con_pas" onblur ="c_conpassword()" onfocus="o_conpassword()">
			</div>
			<div class="text_1_1"><font color="red" face="simhei" id="password_mes1" >
			<?php echo @$_GET['mes'];?>
            </font></div>	
            <div class="text_2_1"><font color="red" face="simhei" id="password_mes2" >
            </font></div>	
			<div class="text_3_1"><font color="red" face="simhei" id="password_mes3" >
            </font></div>
			<input type="submit" value="保存" id="save_pas">
		</form>
		</div>
	</div>

</div>
<?php include "footer.php";?>  
</body>
</html>