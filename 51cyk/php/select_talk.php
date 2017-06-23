 <?php
                    include "conf/conn_mysql.php";

                    if(isset($_GET['pkTalk'])){
                         $pkTalk=$_GET['pkTalk'];
                     }
                     $sql        = "select title,content,author,startTime,passes from 
                         test_talk
                        where pkTalk='$pkTalk'";
                     $result     = mysql_query($sql);                
                     $talks=array();

                    while ($row = mysql_fetch_array($result))
                    {
                    $talks[] = $row;
                    }

                    $pkUser = $talks[0][2];
                    $sql        = "select nickname,posts,follows,fans,img,createTime,pkUser,img from 
                         test_user
                        where pkUser='$pkUser'";
                     $result1     = mysql_query($sql);                
                     $author=array();

                    while ($row = mysql_fetch_array($result1))
                    {
                    $author[] = $row;
                    }
                    
                    ?>