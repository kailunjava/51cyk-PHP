<?php
ob_start();
include "../conf/conn_mysql.php";
$pkUser_1     = $_POST["pkUser"];
$pkTalk     = $_POST["pkTalk"];
@session_start();
$pkUser = $_SESSION['pkUser'];
if (isset($_SESSION['pkUser']) && !empty($_SESSION['pkUser'])) {

              $sql        = "select * from test_follow where test_follow.pkUser = '$pkUser'  and test_follow.followUser = '$pkUser_1' ";
              $result     = mysql_query($sql);
              $num_follow = mysql_num_rows($result);
              if($num_follow==0){
$sql_1        = "update test_user set fans=fans+1 where pkUser = '$pkUser_1'";
mysql_query($sql_1);
$sql_2        = "update test_user set follows=follows+1 where pkUser = '$pkUser'";
mysql_query($sql_2);
$sql_1 = "insert into test_follow(pkUser,followUser) 
SELECT '$pkUser', '$pkUser_1'
FROM dual
WHERE not exists (select * from test_follow
where test_follow.pkUser = '$pkUser'  and test_follow.followUser = '$pkUser_1');";
mysql_query($sql_1);}
    header("location:../talk_details.php?pkTalk=$pkTalk");
}else{
	header("location:../login.php?pkTalk=$pkTalk");
}
?>