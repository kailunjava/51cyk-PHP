<?php
ob_start();
@header("content-type:text/html;charset:utf-8;");
//数据库配置信息
/*$db_host = "bdm248126653.my3w.com";
$db_user = "bdm248126653";
$db_pwd  = "WOxiangxin123";
$db_name = "bdm248126653_db";*/
$db_host = "localhost";
$db_user = "root";
$db_pwd  = "123";
$db_name = "51cyk";
//PHP连接MySql服务器
$link = @mysql_connect($db_host, $db_user, $db_pwd);
if (!$link) {
    echo "PHP连接MySql失败";
    exit();
}
//选择数据库
if(!mysql_select_db($db_name)){
	echo "连接数据库失败";
}
//设置请求与访问编码
mysql_query("set names utf8");
ob_end_flush();
?>
