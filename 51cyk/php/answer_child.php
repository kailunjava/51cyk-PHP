<?php
ob_start();
include "../conf/conn_mysql.php";

    $content   = $_POST["content"];
    $author    = $_POST["author"];
    $pkTalkChild     = $_POST["pkTalkChild"];
    $pkTalk     = $_POST["pkTalk"];
    @session_start();
	if (isset($_SESSION['pkUser']) && !empty($_SESSION['pkUser'])) {
		
    $sql = "insert into test_talk_child2(pkTalkChild,content,author,startTime) values ('$pkTalkChild','$content','$author',now())";
            mysql_query($sql);
            echo "注册成功"; 
    header("location:../talk_details.php?pkTalk=$pkTalk");
    }
    else{
    	header("location:../login.php");
    }
?>
