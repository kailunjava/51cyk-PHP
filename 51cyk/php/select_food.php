<?php
                    include "conf/conn_mysql.php";

                     if(isset($_GET['pkFood'])){
                         $pkFood=$_GET['pkFood'];
                     }
                     $sql        = "select name,img_big,make,taste,stars from test_food where 
                       pkFood='$pkFood' ";
                     $result     = mysql_query($sql);
                     $arr_food=array();
                    while ($row = mysql_fetch_array($result))
                    {
                    $arr_food[] = $row;
                    }
                    ?>