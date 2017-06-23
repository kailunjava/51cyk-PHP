<?php
include "../conf/conn_mysql.php";
@session_start();
$pkUser = $_SESSION['pkUser'];
                $pkFollow = $_GET['pkFollow'];
                $followUser = $_GET['followUser'];
                $sql        = "delete from test_follow where pkFollow='$pkFollow';";
                mysql_query($sql);
                $sql_1        = "update test_user set fans=fans-1 where pkUser = '$followUser'";
				mysql_query($sql_1);
				$sql_2        = "update test_user set follows=follows-1 where pkUser = '$pkUser'";
				mysql_query($sql_2);
                header("location:../user.php?bt=2");

?>