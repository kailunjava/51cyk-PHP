 <?php
                    include "conf/conn_mysql.php";

                    if(isset($_GET['pkFood'])){
                         $pkFood=$_GET['pkFood'];
                     }
                     $sql        = "select pkWay,pkFood,main,second,third,ways from test_way
                        where pkFood='$pkFood'";
                     $result     = mysql_query($sql);                
                     $ways=array();

                    while ($row = mysql_fetch_array($result))
                    {
                    $ways[] = $row;
                    }
                        
                    ?>