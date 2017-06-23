 <?php
                    include "conf/conn_mysql.php";
                   
                     $sql        = "select pkMake,name from test_make ORDER BY pkMake
                      ";
                     $result     = mysql_query($sql);
                    $num_make = mysql_num_rows($result);
                     $make=array();
                    while ($row = mysql_fetch_array($result))
                    {
                    $make[] = $row;
                    }
                    ?>