<?php
ob_start();
include "../conf/conn_mysql.php";
    $pkUser     = $_POST["pkUser"];
    $pkFood    = $_POST["pkFood"];
    $content   = $_POST["content"];
    $pkCategory    = $_POST["pkCategory"];
    @session_start();
	if (isset($_SESSION['pkUser']) && !empty($_SESSION['pkUser'])) {
		
    $sql = "insert into test_danmu(pkUser,
    pkFood,content,createTime) values ('$pkUser','$pkFood','$content',now())";
            mysql_query($sql);
            echo "注册成功"; 
    header("location:../food.php?pkCategory=$pkCategory&pkFood=$pkFood");
    }
    else{
    	header("location:../login.php");
    }
?>
