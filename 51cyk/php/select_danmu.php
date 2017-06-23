<?php
                    include "conf/conn_mysql.php";

                     if(isset($_GET['pkFood'])){
                         $pkFood=$_GET['pkFood'];
                     }
                     $sql        = "select content from test_danmu where 
                       pkFood='$pkFood' ";
                     $result     = mysql_query($sql);
                     $arr_danmu=array();
                    while ($row = mysql_fetch_array($result))
                    {
                    $arr_danmu[] = $row['content'];
                    }
                    
                    ?>