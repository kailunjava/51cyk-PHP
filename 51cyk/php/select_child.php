 <?php
                    include "conf/conn_mysql.php";

                    if(isset($_GET['pkTalk'])){
                         $pkTalk=$_GET['pkTalk'];
                     }
                     $sql        = "select content,author,startTime,pkTalkChild from 
                         test_talk_child
                        where pkTalk='$pkTalk'";
                     $result_child     = mysql_query($sql);   
                     $num_childs = mysql_num_rows($result_child);             
                     $childs=array();

                    while ($row = mysql_fetch_array($result_child))
                    {
                    $childs[] = $row;
                    }

             
                    $authors=array();
                    for($k=0;$k<count($childs);$k++){
                    $pkUser_child = $childs[$k][1];
                    $sql        = "select nickname,posts,follows,fans,img,createTime,pkUser,img from 
                         test_user
                        where pkUser='$pkUser_child'";
                    $result1_child     = mysql_query($sql);                   
                    while ($row = mysql_fetch_array($result1_child))
                    {
                    $authors[] = $row;
                    }
                }
                               
                    ?>