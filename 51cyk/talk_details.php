<!DOCTYPE html>
<html>
<head>
	<title></title>
	<!-- 引用头部css和js-->
    <link rel="stylesheet" type="text/css" href="css/header.css">
   <script type="text/javascript" src="js/header.js"></script> 

   <link rel="stylesheet" type="text/css" href="css/talk_details.css">
   <link rel="stylesheet" type="text/css" href="css/user.css">
   <script type="text/javascript" src="js/user.js"></script>
   <script type="text/javascript" src="js/talk_details.js"></script>

   <link rel="stylesheet" href="kindeditor/examples/index.css" />
		<script charset="utf-8" src="kindeditor/kindeditor.js"></script>
		<script charset="utf-8" src="kindeditor/lang/zh_CN.js"></script>
		<script>
			var editor;
			KindEditor.ready(function(K) {
				editor = K.create('textarea[id="text2"]', {
					resizeType : 1,
					allowPreviewEmoticons : false,
					allowImageUpload : true,
					uploadJson : 'kindeditor/php/upload_json.php',
					items : [
						'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
						'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
						'insertunorderedlist', '|', 'image','emoticons', 'link']
				});
			});
		</script>
</head>
<body>
<?php include "header2.php";?>
<hr>

<div class="body_user" id="body_user" style="display:none;">
	  <div class="mes_details">
	    <div class="mes_title">发私信
	    <div class="quit" onclick="quit()">×</div>
	    </div>
		<hr>
		<div class="mes_main">
		 <form action="php/send_mes.php" method="post"
		   name="send_mes">
		 <input type="hidden" name="sendUser" value="<?php 
			@session_start();
			echo @$_SESSION['pkUser'];
			?>">
		    <div class="mes_main_1">
			发送给：<input type="text" name="getUserName" id="getUserName">
		    </div>
		    <div class="mes_main_2">
			内容：<textarea placeholder="发私信..." maxlength="255"  name="content" id="content_mes"></textarea>
		    </div>	 
		      
		    <input type="button" class="mes_submit" value="发送" onclick="check_mes()"> 
		    </form>
		    </div>
		    <hr>		    
	   </div>
	</div>

<div class="talk_all">
<?php include "php/select_talk.php";
      include "php/select_child.php";
      

                   $num_childs;
                   $pageNow = 1;/*当前页数*/
                    if(isset($_GET['pageNow'])){
                      $pageNow = $_GET['pageNow'];
                    }
                    if( $pageNow <= 1){
                    $pageSize = 9;/*每页的条数*/
                    }else{
                    $pageSize = 10;/*每页的条数*/	
                    }
                    if($num_childs == 0){$pageCount=1;}else{
                    if($num_childs%$pageSize==0){
                    	if($pageNow > 1){
                            $pageCount=$num_childs/$pageSize+1;
                        }
                        if($num_childs==9){
                            $pageCount=1;
                        }
                    }else{
                    $pageCount = ceil($num_childs/$pageSize);
                    }}/*总页数*/
                    $rowCount=$num_childs;/*总数据量*/
                    if($pageNow<1){
                       $pageNow=1;
                    }                  
                    if($pageNow>$pageCount){                    
                       $pageNow=$pageCount;                     
                    }
                    if($pageNow <= 1){
                       $start=0;
                    }else{
                    $start = (($pageNow - 1) * $pageSize)-1;
                    }//第n页的起始查询数据
                    $end = $start + $pageSize;//查询到第n页的末尾
                    if($end > $rowCount){
                          $end = $rowCount;
                    }
                    $childs1=array();
                    if($rowCount!=0){
                    for($i=$start;$i<$end ;$i++){
                        $childs1[]=$childs[$i];
                    }
                    for($i=$start;$i<$end ;$i++){
                        $authors1[]=$authors[$i];
                    }
                  }


?>
<div class="href">
<a href="talk.php">吃货集中营</a>&nbsp;&nbsp;>&nbsp;&nbsp;<a href="talk_all.php">所有话题</a>&nbsp;&nbsp;>&nbsp;&nbsp;<?php echo $talks[0][0];?></div>
<div class="talk_details" id="talk_details">
	<div class="top">
		<div class="left_1" id="left_1"><a href="talk_all.php" id="left_1_1">返回首页</a></div>
		<div class="left_2" id = "left_2_1" onmouseover="answer_color_move(1)" onmouseout="answer_color_out(1)" onclick="answer_html()">回复话题</div>
		<div class="right">
			<ul>
			    <li><a href="talk_details.php?pkTalk=<?php echo $_GET['pkTalk'];?>&pageNow=1">首页</a></li>
				<li><a href="talk_details.php?pkTalk=<?php echo $_GET['pkTalk'];?>&pageNow=<?php echo $pageNow-1;?>">上一页</a></li>
				<li style="border:0px;background-color:#FFFFFF;">第&nbsp;<font color="#31C27C"><?php echo $pageNow;?></font>&nbsp;页</li>	
				<li><a href="talk_details.php?pkTalk=<?php echo $_GET['pkTalk'];?>&pageNow=<?php echo $pageNow+1;?>">下一页</a></li>
				<li><a href="talk_details.php?pkTalk=<?php echo $_GET['pkTalk'];?>&pageNow=<?php echo $pageCount;?>">尾页</a></li>		
			</ul>
		</div>
	</div>
	<hr>
	<!--                    -->
	<input type="hidden" value="<?php echo $pageNow;?>" id="pageNow">
	<div class="center" id="center">
		<div class="top">
			<div class="top_1"><?php echo $author[0][0];?></div>
			<div class="top_2">发表于 <?php echo $talks[0][3];?></div>
			<div class="top_3">楼主</div>
			<div class="top_4">楼主</div>
		</div>
		<div class="center">
			<div class="left">
				<div class="touxiang">
					<img src="<?php echo $author[0][7];?>">
				</div>
                <?php 
				$pkUser_1 = $author[0][6];
                include "php/select_follow.php";
				?>
				<div class="button1">
				<?php if($num_follow==0){?>			
				 <form action="php/user_follows.php" method="post" id="user_follow">
					  <input type='hidden' name='pkTalk' value="<?php echo $_GET['pkTalk'];?>">
					  <input type="hidden" name="pkUser" value="<?php echo $author[0][6];?>">
		             <input type="submit" value="+关注" id="follow">
		               </form>
		               <?php }else{ ?>
		               	已关注
		               <?php } ?>
		               </div>
				<div class="button2" onclick="send_mes_onclick()">发私信</div>
				<div class="text">
					发帖&nbsp; <?php echo $author[0][1];?><br>
					关注&nbsp; <?php echo $author[0][2];?><br>
					粉丝&nbsp; <?php echo $author[0][3];?><br>
					注册&nbsp; <?php echo $author[0][5];?><br>
				</div>
			</div>
			<div class="right">
			    <div class="textarea">	
			    <?php echo $talks[0][1];?>
			    </div>
			    <hr>
			    <div class="between">
			    	<div class="between_1">举报</div>
			    	<!-- <div class="between_2" id="between_2" onclick="onclick_answer_content()">回复(5)</div> -->

			    </div>		
			  			   			  			  
			</div>
		</div>
	</div>
	<!--                    -->
	<?php 
	  $list=array();
      for($i=0;$i<count($childs1);$i++){
      	   	  
      	  ?>
	 <?php //$list[$i]=$num_childs2; ?>

	<div class="center"  id="center_<?php echo $i;?>">
		<div class="top">
			<div class="top_1"><?php echo $authors1[$i][0];?></div>
			<div class="top_2">发表于 <?php echo $childs1[$i][2];?></div>
			<div class="top_3">
				<?php if($author[0][6] == $authors1[$i][6]){ ?>
                    楼主
				<?php }else{?>层主
					<?php } ?>
			</div>
			<div class="top_4">
			<?php 
			if($pageNow<=1){
              echo $i+2;
			}
		    else{
			echo ($pageNow-1)*10+$i+1;
		    }
			?>
			&nbsp;楼</div>
		</div>
		<div class="center">
			<div class="left">
				<div class="touxiang">
					<img src="<?php echo $authors1[$i][7];?>">
				</div>
				<?php 
				$pkUser_1 = $authors1[$i][6];
                include "php/select_follow.php";
				?>
				<div class="button1">
				<?php if($num_follow==0){?>			
				 <form action="php/user_follows.php" method="post" id="user_follow">
					  <input type='hidden' name='pkTalk' value="<?php echo $_GET['pkTalk'];?>">
					  <input type="hidden" name="pkUser" value="<?php echo $authors1[$i][6];?>">
		             <input type="submit" value="+关注" id="follow">
		               </form>
		               <?php }else{ ?>
		               	已关注
		               <?php } ?></div>
				<div class="button2"><a href="">发私信</a></div>
				<div class="text">
					发帖 <?php echo $authors1[$i][1];?><br>
					关注 <?php echo $authors1[$i][2];?><br>
					粉丝 <?php echo $authors1[$i][3];?><br>
					注册 <?php echo $authors1[$i][5];?><br>
				</div>
			</div>
			<div class="right">
			    <div class="textarea">
			    <?php echo $childs1[$i][0];?>
			    </div>
			    <hr>
     		   
			    <div class="between"  id="between_<?php echo $i;?>">
			    	<div class="between_1">举报</div>
			    	<div class="between_2" style=""
			    	  id="between_3_<?php echo $i;?>"
			    	onclick="onclick_answer_content(<?php echo $i;?>)">回复</div>
			    </div>
                
                <ul style="display:none;" id="ul_<?php echo $i;?>">
                <?php
                    $pkTalkChild = $childs1[$i][3];
      	            include "php/select_child2.php"; 
      	            $list[$i]=$num_childs2;
                    for($j=0;$j<$num_childs2;$j++){
                ?>
                <li>
                <div class="answer_content" id="answer_content" >
			    	<div class="img"><img src="<?php echo $authors2[$j][1];?>"></div>
			    	<div class="author"><?php echo $authors2[$j][0];?></div>
			    	<div class="content">：<?php echo $childs2[$j][0];?></div>
			    	<div class="time"><?php echo $childs2[$j][2];?></div>
			    	<div class="a_c_answer">回复</div>
			    	<hr>
			    </div>
			    </li>
                <?php } ?>   
                    <li>	
                <div class="answer">
					  <form id="answer_text" action="php/answer_child.php" method="post">
					  <input type='hidden' name='pkTalk' value="<?php echo $_GET['pkTalk'];?>">
					  <input type="hidden" name="pkTalkChild" value="<?php echo $childs1[$i][3];?>">
					  <input type="hidden" name="author" value="<?php  echo $_SESSION['pkUser'];?>">
		             <textarea placeholder="我也来说一句..." maxlength="255" id="text1" name="content"></textarea>
		             <input type="submit" value="回复" id="button1">
		               </form>
			    </div>
                    </li>
                </ul>             
                            
			</div>
		</div>
	</div>

	<?php } ?>
	<script language="javascript">
var obj =eval('<?php echo json_encode($list);?>');

function onclick_answer_content(num){ 

    if(count == 2){   
       for(var i=0;i<10;i++){
            if(num == i){  
    document.getElementById("between_3_"+i).innerHTML="回复";
     document.getElementById("center_"+i).style.height = "448px";
    document.getElementById("between_"+i).style.height = "50px";
    document.getElementById("ul_"+i).style.top = "-195px";
    
    document.getElementById("ul_"+i).style.display="none";

         }
      }
    }
    if(count == 1){ 
      for(var i=0;i<10;i++){
            if(num == i){ 
                
    document.getElementById("between_3_"+i).innerHTML="收起回复";
    document.getElementById("center_"+i).style.height = 628+obj[i]*80+"px";
    document.getElementById("between_"+i).style.height = 230+obj[i]*80+"px";
    document.getElementById("ul_"+i).style.top = -195-obj[i]*80+"px";
     document.getElementById("ul_"+i).style.display="";
        }
      }
    }  

    count++;
    if(count>2){
        count=1;
    }  
   
}
</script>
	<!--                    -->
    <hr>
	<div class="bottom">

		<div class="left_1"><a href="talk_all.php">返回首页</a></div>
		<div class="left_2" id = "left_2_2" onmouseover="answer_color_move(2)" onmouseout="answer_color_out(2)"  onclick="answer_html()">回复话题</div>
		<div class="right">
			<ul>
			    <li><a href="talk_details.php?pkTalk=<?php echo $_GET['pkTalk'];?>&pageNow=1">首页</a></li>
				<li><a href="talk_details.php?pkTalk=<?php echo $_GET['pkTalk'];?>&pageNow=<?php echo $pageNow-1;?>">上一页</a></li>
				<li style="border:0px;background-color:#FFFFFF;">第&nbsp;<font color="#31C27C"><?php echo $pageNow;?></font>&nbsp;页</li>	
				<li><a href="talk_details.php?pkTalk=<?php echo $_GET['pkTalk'];?>&pageNow=<?php echo $pageNow+1;?>">下一页</a></li>
				<li><a href="talk_details.php?pkTalk=<?php echo $_GET['pkTalk'];?>&pageNow=<?php echo $pageCount;?>">尾页</a></li>				
			</ul>
		</div>

	</div>
	<hr>
	<div class="foot">
	    <div class="left_text">当前用户：</div>
	    <?php
                    include "conf/conn_mysql.php";
                    @session_start();
                    @$pkUser_touxiang=$_SESSION['pkUser'];
                     $sql        = "select img from test_user where 
                       pkUser='$pkUser_touxiang' ";
                     $result     = mysql_query($sql);
                     
                    while ($row = mysql_fetch_array($result))
                    {
                    $arr_touxiang[] = $row;
                    }
                    ?>
		<div class="left_touxiang">
		    <?php if (isset($_SESSION['pkUser']) && !empty($_SESSION['pkUser'])) {?>
			<img src="<?php echo $arr_touxiang[0][0];?>">
			<?php } else { ?>
				<img src="img/touxiang_0.jpg">
		    <?php } ?>
		</div>
		<div class="right_text" >
			 <form id="answer_talk" action="php/answer_talk.php" method="post">
		             <textarea  placeholder="我也来说一句....." maxlength="255" id="text2" name="content"></textarea>
       <?php
		@session_start();
		if (isset($_SESSION['pkUser']) && !empty($_SESSION['pkUser'])) {
		echo "<input type='hidden' name='author' value='".$_SESSION['pkUser']."'>";}
		echo "<input type='hidden' name='pkTalk' value='".$_GET['pkTalk']."'>";
		?>
		             <input type="submit" value="回复" id="button2">
		               </form>
		</div>
	</div>
</div>
	</div>
<?php include "footer.php";?>  
</body>
</html>