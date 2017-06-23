<?php
ob_start();
include "../conf/conn_mysql.php";



if (isset($_POST["login"]) && $_POST["login"] == "login") {
    $name       = $_POST["name"];
    $password   = $_POST["password"];
    $sql        = "select pkUser,name,password,nickname from test_user where name='$name' and password='$password'";
    $result     = mysql_query($sql);
    
    $result_num = mysql_num_rows($result);
    if ($result_num == 1) {
    //@session_save_path('D:\php_session');
    //@session_save_path('D:\phpStudy\tmp\tmp');
    @session_start();
       /* $sid = @session_id();*/
       $nickname = array();
       while ($row = mysql_fetch_array($result)){
             $nickname[]=$row;
        }                  
        $_SESSION['user'] = $nickname[0][3];
        $_SESSION['pkUser'] = $nickname[0][0];
        echo "登录成功";
        /*header("location:../index.php");*/
        //header("location:../index.php");
        if(isset($_GET['url'])&&$_GET['url']!=null){
            header("location:../index.php");
        }else{
        echo"<script>history.go(-2);</script>"; 
        }
        
    } else {
        echo "用户名和密码不正确";       
        $message = urlencode("用户名和密码不正确");
        header("location:../login.php?url=$message&message=$message");
    }
} else {
    header("location:../index.php");
}
ob_end_flush();
?>