<?php
include "../conf/conn_mysql.php";
                     @session_start();
                     @$pkUser=$_SESSION['pkUser'];
                     $old_pas = $_POST['old_pas'];
                     $new_pas = $_POST['new_pas'];
                     $con_pas = $_POST['con_pas'];
                     //echo $old_pas;
                     $sql        = "select password from test_user where pkUser = '$pkUser'";
                    $result1     = mysql_query($sql);
                    while ($row = mysql_fetch_array($result1))
                    {
                    $arr_pas[] = $row;
                    }
                    if($new_pas==$con_pas){
                    if($arr_pas[0][0]==$old_pas){
                       $sql_1        = "update test_user set password='$new_pas' where pkUser='$pkUser'";
                       mysql_query($sql_1);
                       header("location:../user.php?bt=0");
                    }else{
                       header("location:../update_user.php?ch=1&mes=旧密码不正确");
                    }
                    }else{
                       header("location:../update_user.php?ch=1&mes=两次密码不一致");
                    }


                         ?>