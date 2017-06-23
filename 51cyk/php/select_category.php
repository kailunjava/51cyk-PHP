 <?php
                    include "conf/conn_mysql.php";

                     $sql        = "select name from test_category ORDER BY pkCategory  ";
                     $result     = mysql_query($sql);
                     $num_rows = mysql_num_rows($result);
                     $arr=array();
                    while ($row = mysql_fetch_array($result,1))
                    {
                    $arr[] = $row['name'];
                    }
                    ?>