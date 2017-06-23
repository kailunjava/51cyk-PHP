<?php
ob_start();
include "../conf/conn_mysql.php";

    $title     = $_POST["title"];
    $content   = $_POST["content"];
    $author    = $_POST["author"];
    
    $sql = "insert into test_talk(title ,content,author,startTime) values ('$title','$content','$author',now())";
            mysql_query($sql);
    $sql_1 = "update test_user set posts=posts+1 where pkUser = '$author'";
            mysql_query($sql_1);
            
    $sql = " SELECT LAST_INSERT_ID()";
    $result = mysql_query($sql);
    $pkTalk = mysql_fetch_array($result);
    header("location:../talk_details.php?pkTalk=$pkTalk[0]");

       
?>
