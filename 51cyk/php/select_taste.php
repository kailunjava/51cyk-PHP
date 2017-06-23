 <?php
                    include "conf/conn_mysql.php";

                     $sql        = "select pkTaste,name from test_taste ORDER BY pkTaste  ";
                     $result     = mysql_query($sql);
                       $num_taste = mysql_num_rows($result);
                     $taste=array();
                    while ($row = mysql_fetch_array($result))
                    {
                    $taste[] = $row;
                    }
                    ?>