<?php
include "../conf/conn_mysql.php";
                $pkTalk = $_GET['pkTalk'];
                $sql        = "delete from test_talk where pkTalk='$pkTalk';";
                mysql_query($sql);
                header("location:../user.php?bt=0");

?>