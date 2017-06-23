<?php
ob_start();
include "../conf/conn_mysql.php";

    $content   = $_POST["content"];
    $author    = $_POST["author"];
    $pkTalk     = $_POST["pkTalk"];
    @session_start();
	if (isset($_SESSION['pkUser']) && !empty($_SESSION['pkUser'])) {
		
    $sql = "insert into test_talk_child(content,author,startTime,pkTalk) values ('$content','$author',now(),'$pkTalk')";
            mysql_query($sql);
            echo "注册成功"; 
    header("location:../talk_details.php?pkTalk=$pkTalk");
    }
    else{
    	header("location:../login.php");
    }
?>
