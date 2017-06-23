<?php
include "../conf/conn_mysql.php";
@session_start();
$pkUser=$_SESSION['pkUser'];
                $pkMes= $_GET['pkMes'];
                
                $sql        = "delete from test_mes where pkMes='$pkMes';";
                mysql_query($sql);
                $sql_1        = "update test_user set meses=meses-1 where pkUser = '$pkUser'";
                mysql_query($sql_1);
                header("location:../user.php?bt=1");

?>