
   <script type="text/javascript" src="js/header.js"></script>
<div class="header">
        <!-- 背景音乐 -->
        <audio src="music/1.mp3" id="music"></audio>
        <div class="header_logo_png" onclick="music()">吃</div>
        <a href="index.php">
            <div class="header_logo" onclick="music()"></div>
        </a>
        <!-- 登录注册 -->
        <div class="login">
               <?php
//@session_save_path('D:\php_session');
//@session_id($_GET['s']);  
@session_start();
//$sessionpath=session_save_path();        //获取当前session的保存路径 
//echo $sessionpath; 

if (isset($_SESSION['user']) && !empty($_SESSION['user'])) {
   // if (isset($_GET['s']) ) {
  
    echo "<a href='user.php?bt=0'><div id='touxiang'>".$_SESSION['user']."</div></a>";
    echo "<a href='/51cyk/php/unset_session.php' id='quit_button' onmousemove='register_color(1)' onmouseout='register_color(2)' 
    >退出</a>";
   /* echo "<a href='".unset_user()."' id='quit_button' onmousemove='register_color(1)' onmouseout='register_color(2)' 
    >退出</a>";*/
} else {
    echo "<a href='login.php' id='login_button'>登录</a>";
    echo "<a href='register.php' id='register_button' onmousemove='register_color(1)' onmouseout='register_color(2)'>注册</a>";
}

?>
        </div>
    </div>