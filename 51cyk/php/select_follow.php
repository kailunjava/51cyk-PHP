 <?php
                    include "conf/conn_mysql.php";
                     @session_start();
                     @$pkUser = $_SESSION['pkUser'];
                     $sql        = "select * from test_follow where test_follow.pkUser = '$pkUser'  and test_follow.followUser = '$pkUser_1'  ";
                     $result     = mysql_query($sql);
                     $num_follow = mysql_num_rows($result);
                    
                    ?>