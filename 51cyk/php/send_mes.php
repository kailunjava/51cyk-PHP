<?php
ob_start();
include "../conf/conn_mysql.php";
    $sendUser     = $_POST["sendUser"];
    $getUserName    = $_POST["getUserName"];
    $content   = $_POST["content"];
    /*echo $getUser;
    echo $content;*/

                     $sql_1       = "select pkUser from test_user where 
                       nickname='$getUserName' ";
                     $result_1     = mysql_query($sql_1);
                     $arr_pk=array();
                    while ($row = mysql_fetch_array($result_1))
                    {
                    $arr_pk[] = $row;
                    }
                    $pkUser = $arr_pk[0][0];
                    print_r($pkUser);
    @session_start();
    if(count($arr_pk)!=0){
	if (isset($_SESSION['pkUser']) && !empty($_SESSION['pkUser'])) {
		
    $sql = "insert into test_mes(sendUser,
    getUser,content,sendTime) values ('$sendUser','$pkUser','$content',now())";
            mysql_query($sql);
    $sql_1        = "update test_user set meses=meses+1 where pkUser = '$sendUser'";
        mysql_query($sql_1);
            
    header("location:../user.php?bt=1&user=1");
    }
    else{
    	header("location:../login.php");
     }
 }else{
      header("location:../user.php?bt=1&user=0");
 }
?>
