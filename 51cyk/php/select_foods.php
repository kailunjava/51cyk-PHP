<?php
                    include "conf/conn_mysql.php";

                     if(isset($_GET['pkFood'])){
                         $pkFood=$_GET['pkFood'];
                     }
                     $sql        = "select pkFood,name,img_small from test_food where pkCategory='$pkCategory' limit 5;";
                     $result     = mysql_query($sql);
                     $arr_foods=array();
                    while ($row = mysql_fetch_array($result))
                    {
                    $arr_foods[] = $row;
                    }
                    ?>