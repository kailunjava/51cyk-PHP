<?php
ob_start();
include "../conf/conn_mysql.php";
if (isset($_POST["register_phone"]) && $_POST["register_phone"] == "register_phone") {
    $name         = $_POST["name"];
    $nickname     = $_POST["nickname"];
    $password     = $_POST["password"];
    $con_password = $_POST["con_password"];

    if ($password == $con_password) {
        $sql_select = "select name from test_user where name=$name";
        $result     = mysql_query($sql_select);
        $result_num = mysql_num_rows($result);
        if ($result_num == 0) {
            $sql = "insert into test_user(name,password,createTime,nickname,posts,follows,fans,img,meses) values ('$name','$password',now(),'$nickname',0,0,0,'img/touxiang_0.jpg',0)";
            mysql_query($sql);
			echo "注册成功";
			header("location:../login.php?url=1");		
        } else {
            $message = urlencode("用户名已存在");
			echo "注册成功";
			header("location:../register.php?message=$message");		
        }
    
} else {
    $message = urlencode("两次输入密码不一致");
	header("location:../register.php?message=$message");
}
} else {header("location:../index.php");
    }
	ob_end_flush();
    ?>
