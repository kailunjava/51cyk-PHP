<?php
                    include "conf/conn_mysql.php";

                     $sql        = "select pkMap,name,xian,la,mian,mi from test_map";
                     $result     = mysql_query($sql);
                     $num_rows = mysql_num_rows($result);
                     $arr_maps=array();
                    while ($row = mysql_fetch_array($result))
                    {
                    $arr_maps[] = $row;
                    }
                    ?>