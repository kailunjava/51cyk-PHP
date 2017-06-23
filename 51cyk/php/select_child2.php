 <?php
                    include "conf/conn_mysql.php";
                    

                     $sql        = "select content,author,startTime from 
                         test_talk_child2
                        where pkTalkChild='$pkTalkChild'";
                     $result_child2     = mysql_query($sql);   
                     $num_childs2 = mysql_num_rows($result_child2);             
                     $childs2=array();

                    while ($row = mysql_fetch_array($result_child2))
                    {
                    $childs2[] = $row;
                    }

             
                    $authors2=array();
                    for($h=0;$h<count($childs2);$h++){
                    $pkUser_child2 = $childs2[$h][1];
                    $sql        = "select nickname,img from 
                         test_user
                        where pkUser='$pkUser_child2'";
                    $result1_child2     = mysql_query($sql);                   
                    while ($row = mysql_fetch_array($result1_child2))
                    {
                    $authors2[] = $row;
                    }
                }
                               
                    ?>