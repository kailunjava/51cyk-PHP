
<!DOCTYPE html>
<html>

<head>
    <title></title>
    <!-- 引用头部css和js-->
    <link rel="stylesheet" type="text/css" href="css/header.css">
    <script type="text/javascript" src="js/header.js"></script>
    <!-- 引用主界面css和js-->
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <script type="text/javascript" src="js/js.js"></script>
</head>

<body onload="nav_bgcolor(1)">

<?php include "header.php";?>

    <!-- 主页面开始-->
    <div class="content">
        <!--首页轮播图开始-->
        <div class="img_tab" id="img_tab">
            <!--透明分类信息-->
            <div class="img_category"></div>
            <!--透明分类信息展开详情-->
            <ul>
            <?php include "php/select_category.php";?>
               <?php
                  for($i=0;$i<$num_rows;$i++){           
                      echo "
                      <a href='index_category.php?pkCategory=".$i."'><li id='li_".$i."' onmousemove='li_color_move(".$i.")'   onmouseout='li_color_out()'>&nbsp;".$arr[$i]."
                       <div class='fuhao'>></div>
                       </li></a>";
                  }
               ?>
            </ul>
        </div>
        <!--首页轮播图结束-->
        <!--美食分类-->
        <div class="main_tab">
            <ul>
                <li style="background-color: #5F5750;"><a href="index_category.php?pkCategory=0">热菜</a></li>
                <li style="background-color: #41B9AF;"><a href="index_category.php?pkCategory=0">凉菜</a></li>
                <li style="background-color: #FE6F6B;"><a href="index_category.php?pkCategory=0">糕点</a></li>
                <li style="background-color: #FFAB2D;"><a href="index_category.php?pkCategory=0">主食</a></li>
            </ul>
        </div>
        <!--各菜系代表菜-->
        <div class="content_caixi">
            <div class="content_caixi_title">川菜代表菜</div>
            <div class="content_caixi_text">
                <ul>
            <?php
                $pkCategory = 1;
                include "php/select_foods.php";
                for($i=0;$i<5;$i++){
                  echo "<li>
                       <div class='img_transform'><img src='".$arr_foods[$i][2]."'></div><a href='food.php?pkCategory=0&pkFood=".$arr_foods[$i][0]."'>".$arr_foods[$i][1]."</a></li>";
                   }
                       ?>
                   
                </ul>
            </div>
        </div>
        <div class="content_caixi">
            <div class="content_caixi_title">鲁菜代表菜</div>
            <div class="content_caixi_text">
                <ul>
                  <?php
                $pkCategory = 2;
                include "php/select_foods.php";
                for($i=0;$i<5;$i++){
                  echo "<li>
                       <div class='img_transform'><img src='".$arr_foods[$i][2]."'></div><a href='food.php?pkCategory=1&pkFood=".$arr_foods[$i][0]."'>".$arr_foods[$i][1]."</a></li>";
                   }
                       ?>
                </ul>
            </div>
        </div>
        <div class="content_caixi">
            <div class="content_caixi_title">豫菜代表菜</div>
            <div class="content_caixi_text">
                <ul>
                  <?php
                $pkCategory = 10;
                include "php/select_foods.php";
                for($i=0;$i<5;$i++){
                  echo "<li>
                       <div class='img_transform'><img src='".$arr_foods[$i][2]."'></div><a href='food.php?pkCategory=9&pkFood=".$arr_foods[$i][0]."'>".$arr_foods[$i][1]."</a></li>";
                   }
                       ?>
                </ul>
            </div>
        </div>
        <div class="content_page"><a href="index_category.php?pkCategory=0">更多>>></a></div>
    </div>
    <!-- 主页面结束-->
    <?php include "footer.php";?>
</body>

</html>
