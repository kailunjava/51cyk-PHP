<?php
                    include "../conf/conn_mysql.php";
if (isset($_FILES['file']) 
&& is_uploaded_file($_FILES['file']['tmp_name']))
{
 $imgFile = $_FILES['file'];
$imgFileName = $imgFile['name'];
$imgType = $imgFile['type'];
$imgSize = $imgFile['size'];
$imgTmpFile = $imgFile['tmp_name'];
move_uploaded_file($imgTmpFile, 'D:/phpStudy/WWW/test/img/'.$imgFileName);
$validType = false;
$upRes = $imgFile['error'];
if ($upRes == 0)
{
if ($imgType == 'image/jpeg'
|| $imgType == 'image/png'
|| $imgType == 'image/gif')
{
$validType = true;
}
if ($validType)
{
$strPrompt = sprintf("文件%s上传成功<br>"
. "文件大小: %s字节<br>"
. "<img src='upfile/%s'>"
, $imgFileName, $imgSize, $imgFileName
);
echo $strPrompt;
}
}
}
                     @session_start();
                     @$pkUser=$_SESSION['pkUser'];
                     /*$img="img/".$_POST['file']; */ 
                     $img='img/'.$imgFileName;    
                     $sql        = "update test_user set img='$img' where pkUser = '$pkUser'";
                     mysql_query($sql);
                     header("location:../update_user.php?ch=0");
                    ?>