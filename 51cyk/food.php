<!DOCTYPE html>
<html>
<head>
	<title></title>
	<!-- 引用头部css和js-->
    <link rel="stylesheet" type="text/css" href="css/header.css">
   <script type="text/javascript" src="js/header.js"></script> 

  <link rel="stylesheet" type="text/css" href="css/food.css">
  <?php include "header2.php";?>
  <?php include "php/select_danmu.php";?>
  <script type="text/javascript">
        function $(id){return document.getElementById(id)};

        window.onload=function(){
        	if($("div2").className=="close2"){
              document.getElementById("send").style.display="none";
              document.getElementById("btn").style.display="none";
           }  
           if($("div2").className=="open2"){
              document.getElementById("send").style.display="";
              document.getElementById("img_danmu").style.display="";
           } 
        var text_danmus =eval('<?php echo json_encode($arr_danmu);?>');
        var timer=null;
        
        for(var i=0;i<text_danmus.length;i++){
        
        var newarr=[];
        console.log(11111);
        /*$("submit_1").onclick=function(){*/
        	    
                
                var text_danmus =eval('<?php echo json_encode($arr_danmu);?>');
                
                clearInterval(timer);
                var text=text_danmus[i];             
                var newnode=document.createElement("div");
                
                        newnode.innerHTML=text;
                         console.log(Math.floor(Math.random()*13)+1);
                        /*newnode.style.top=(Math.random())*($("img_danmu").offsetHeight-40)+"px";*/
                        newnode.style.top=(Math.floor(Math.random()*13)+1)*20+"px";
                        newnode.style.left=600+100*i+"px";
                       /* newnode.style.marginBottom="20px";
                        newnode.style.marginLeft="50px";*/
                        /*newnode.style.left=600+(Math.random()+0.1)*($("img_danmu").offsetWidth+50)+"px";*/
                        console.log("'"+randomColor()+"'")
                        newnode.style.color="#FFFFFF";
                $("img_danmu").appendChild(newnode);
                timer=setInterval(move,20);
                /*document.getElementById("btn").style.display="none";*/
                /*}*/
        function move(){
                        var arr=$("img_danmu").getElementsByTagName("div");
                        for(var i=0;i<arr.length;i++){
                                newarr.push(arr[i].offsetLeft);
                                arr[i].style.left=newarr[i]+"px";
                                newarr[i]--;
                                /*if(newarr[i]<0){
                                        newarr[i]=600;
                                        }*/
                        }
                        //console.log(j);
                }
        function randomColor() {  
    var color = Math.ceil(Math.random( ) * 16777215).toString(16);
        while(color.length<6){
                color="0"+color;
                }
        return color;
        }    }   
       /* var div2=document.getElementById("div2");
        var div1=document.getElementById("div1");*/
        }
      function one(){
            var div2=document.getElementById("div2");
        var div1=document.getElementById("div1");
          div1.className=(div1.className=="close1")?"open1":"close1";
          div2.className=(div2.className=="close2")?"open2":"close2";
            if($("div2").className=="close2"){
              document.getElementById("send").style.display="none";
              document.getElementById("btn").style.display="none";
           }  
           if($("div2").className=="open2"){
              document.getElementById("send").style.display="";
              document.getElementById("img_danmu").style.display="";
              
           }  
           if($("div2").className=="close2"){
              document.getElementById("send").style.display="none";
              document.getElementById("img_danmu").style.display="none";
           } 
        }
         /*window.onload=function(){
           if($("div2").className=="close2"){
              document.getElementById("send").style.display="none";
           }  
           if($("div2").className=="open2"){
              document.getElementById("send").style.display="";
           } 
        }*/
        function two(){
        	document.getElementById("btn").style.display="";

        }
        
</script>

</head>
<body >

<hr>
<?php include "php/select_food.php";?>

<div class="food">
<?php include "php/select_category.php";?>
	<div class="index"><a href="index.php">首页</a>&nbsp;>&nbsp;
    
		<a href="index_category.php?pkCategory=<?php echo $_GET['pkCategory'];?>" >
		<?php echo $arr[$_GET['pkCategory']];?>
		</a>

	&nbsp;>&nbsp;<?php echo $arr_food[0][0]?></div>
	<div class="top">
		<div class="left_img">
			<img src="<?php echo $arr_food[0][1]?>">
		</div>
		<div id="div1" class="open1">
        <div id="div2" class="open2" onclick="one()">
        	弹
        </div>
        </div>
        <div id="send" class="send" style="display:none;" onclick="two()">发</div>

		<div class="img_danmu" id="img_danmu"></div>

		<div class="btn" id="btn" style="display:none;">
		 <form action="php/send_danmu.php" method="post"> 	
		 <input type="hidden" name="pkUser" value="<?php 
		@session_start();
		echo @$_SESSION['pkUser'];
		?>">
		<input type="hidden" name="pkFood" value="<?php
		echo $_GET['pkFood'];?>">
		<input type="hidden" name="pkCategory" value="<?php
		echo $_GET['pkCategory'];?>">
        <input type="text" name="content" id="text_danmu"/>
        <input type="submit" id="submit_1" value="发送"/>
        </form> 
        </div>

		<div class="right_text">
			<div class="title">
				<?php echo $arr_food[0][0]?>
			</div>
			<hr>
			<div class="text">
	<!-- 		炒、炸、熘、爆、烹、炖、焖、煨、烧、扒、煮、汆、烩、煎、贴、塌（这是个错字,应该是火字旁,但打不出来）、蒸、烤、涮、熬、拔丝、蜜汁、瓤、盐焗. 
	中国凉菜的主要烹饪方式：炝、拌、腌、卤、冻、酥、熏、酱、卷、腊、挂霜、灌,共计12种. -->
	<div class="text_1"><div class="text_1_1">制作工艺:</div>
                     <ul>
                     	<!-- <li style="background-color:#31C27C;color:#FFFFFF;">煮</li>  -->         	
                     	<?php
                     	include "php/select_make.php";
                     	for ($i=0; $i <$num_make ; $i++) { 
                     		
                     	     if($arr_food[0][2]==$make[$i][0]){
                     	     	if(strlen($make[$i][1])==3){
                               echo "<li style='background-color:#31C27C;color:#FFFFFF;'>".$make[$i][1]."</li>";
                                  }
                                   if(strlen($make[$i][1])==6){
		                     	       echo "<li style='background-color:#31C27C;color:#FFFFFF;width:57px;'>".$make[$i][1]."</li>";
		                     	     }
                     	     } else{
                                   if(strlen($make[$i][1])==3){
		                     		   echo "<li>".$make[$i][1]."</li>";
		                     	     }
		                     	     if(strlen($make[$i][1])==6){
		                     	       echo "<li style='width:57px;'>".$make[$i][1]."</li>";
		                     	     }
                     	     }           	     
                     	}
                     	?>
                     </ul>
				</div>
				<div class="text_2">
					<div class="text_2_1">五味:</div>
					<ul>					
                     	<!-- <li style="background-color:#31C27C;color:#FFFFFF;">辣</li> -->
                      <?php
                     	include "php/select_taste.php";
                     	for ($i=0; $i <$num_taste ; $i++) { 
                     		 if($arr_food[0][3]==$taste[$i][0]){
                               echo "<li style='background-color:#31C27C;color:#FFFFFF;'>".$taste[$i][1]."</li>";   
                     		 }
                     		 else{
                     		  echo "<li>".$taste[$i][1]."</li>";   
                     		  }  
                     		}
                     	?>
					</ul>
				</div>
				<div class="text_3">
					<div class="text_3_1">推荐指数:</div>
					<ul>
                     	<?php                         
                             for($j=0;$j<$arr_food[0][4];$j++){
                                echo "<li style='background-color:#31C27C;color:#FFFFFF;'>★</li>";
                             }
                             for($j=0;$j<5-$arr_food[0][4];$j++){
                                echo "<li>★</li>";
                             }
                     	?>
					</ul>
				</div>
			</div>
		</div>
	</div>
     
     <?php include "php/select_ways.php";?>
	<div class="center">
		<div class="title">做法:</div>
		<div class="text">
		<?php
		if(count($ways)!=0){
		echo
"主料：".$ways[0][2]."<br>
辅料：".$ways[0][3]."<br>
调料：".$ways[0][4]."<br>
".$ways[0][5]."";
}else{
	echo "<div style='position: relative;
	top:110px;left:150px;'>暂无做法！！！</div>";
}
?>
        </div>
	</div>
<hr>
	<!-- <div class="bottom">
    <div class="left">
      <div class="left_top"><input type="text" name="">
        <div class="text">贴标签</div></div>
        <div class="left_bottom">
          <ul>
            <li>美味</li>
            <li>一般</li>
            <li>难吃</li>
            <li>油而不腻</li>
            <li>五味俱全</li>
            <li>清爽可口</li>
            <li>香甜软糯</li>
            <li>鲜美多汁</li>
            <li>麻辣鲜香</li>
            <li>甘脆爽口</li>
          </ul>
        </div>
    </div>
    <div class="right">
      <div class="title"><?php echo $arr_food[0][0]?>的标签:</div>
      <ul>
        <li>清爽可口</li>
        <li>香甜软糯</li>
        <li>鲜美多汁</li>
        <li>麻辣鲜香</li>
        <li>油而不腻</li>
        <li>甘脆爽口</li>      
      </ul>
    </div>
  </div> -->
</div>
<?php include "footer.php";?>  
</body>
</html>