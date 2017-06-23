 <link rel="stylesheet" type="text/css" href="css/header.css">
<script type="text/javascript" src="js/header.js"></script>

<div class="header">
       <!-- 背景音乐  autoplay="autoplay" -->
        <audio src="music/1.mp3" id="music" loop="loop"></audio>
        <div class="header_logo_png" onclick="music()">吃</div>
        <div class="header_logo" onclick="music()"></div>
        <!--导航栏开始-->
        <ul>
       
        
            <li id="nav_1"><a href="index.php" id="a_1">首页</a></li>
            <li id="nav_2"><a href="culture.php" id="a_2">美食文化</a></li>
            <li id="nav_3"><a href="share.php" id="a_3">美食分享</a></li>
            <li id="nav_4"><a href="talk.php" id="a_4">吃货集中营</a></li>
            <li id="nav_5"><a href="contact.php" id="a_5">联系我们</a></li>
              
        </ul>
      <!--导航栏结束-->
       <!--搜索开始 -->
      <!--   <div class="header_search">
          <form action="" method="get">
           搜索框
              <input name="" type="text" id="search_text" />
              搜索按钮
              <input name="" type="button" id="search_button" value="吃一口" onmousedown="search_color()" />
          </form>
      </div> -->
       <!-- 搜索结束-->
       <!--登录注册-->
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

?>         <!-- <a href="login.php" id="login_button">登录</a> -->
           <!--  <a href="register.php" id="register_button" onmousemove="register_color(1)" onmouseout="register_color(2)">注册</a> -->
        </div>
    </div>
