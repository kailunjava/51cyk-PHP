<!DOCTYPE html>
<html>
<head>
	<title></title>
	<!-- 引用头部css和js-->
    <link rel="stylesheet" type="text/css" href="css/header.css">
   <script type="text/javascript" src="js/header.js"></script>  

   <link rel="stylesheet" type="text/css" href="css/talk_release.css">
   
   <link rel="stylesheet" href="kindeditor/examples/index.css" />
       <style>
			form {
				position: relative;
				left: 38px;
			}
			textarea {
				
			}
		</style>
		<script charset="utf-8" src="kindeditor/kindeditor.js"></script>
		<script charset="utf-8" src="kindeditor/lang/zh_CN.js"></script>
		<script>
			var editor;
			KindEditor.ready(function(K) {
				editor = K.create('textarea[id="release_content"]', {
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
			
	function release_null(){
    var title = document.getElementById("release_title").value;
    var content = document.getElementById("release_content").value;
    console.log(title);
    console.log(content);
    if(title == ""){
        alert("标题不能为空");
    }
    if(title != ""){
        return true;
    }
   
    return false;
}
		</script>
</head>
<body>
<?php include "header2.php";?>
<hr>
<div class="talk_release_all">
<div class="talk_release">
    <a href="talk.php">吃货集中营</a>&nbsp;&nbsp;>&nbsp;&nbsp;发布新帖子
	<div class="main">
	    <form action="php/release_talk.php" method="post" onsubmit="return release_null()">
		<div class="title">
			<div class="title_1">标题</div>
			<textarea autofocus="autofocus" placeholder="请填写标题" maxlength="255" class="title_2" name="title" id="release_title"></textarea>
			
		</div>
		<div class="text">
			<div class="text_1">内容</div>
			<textarea autofocus="autofocus" placeholder="请填写内容" maxlength="255" class="text_2" name="content" id="release_content"></textarea>
		</div>
		<?php
		@session_start();
		echo "<input type='hidden' name='author' value='".$_SESSION['pkUser']."'>";
		?>
		<input type="submit" value="发布" id="button_release">
	    </form>
	</div>

</div>
	</div>
<?php include "footer.php";?>  
</body>
</html>