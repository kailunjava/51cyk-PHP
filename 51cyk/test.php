<!doctype html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>Simple Examples</title>
		<style>
			form {
				margin: 0;
			}
			textarea {
				display: block;
			}
		</style>
		<link rel="stylesheet" href="kindeditor/themes/default/default.css" />
		<script charset="utf-8" src="kindeditor/kindeditor.js"></script>
		<script charset="utf-8" src="kindeditor/lang/zh_CN.js"></script>
		<script>
			var editor;
			KindEditor.ready(function(K) {
				editor = K.create('textarea[name="content"]', {
					resizeType : 1,
					allowPreviewEmoticons : false,
					allowImageUpload : false,
					items : [
						'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
						'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
						'insertunorderedlist', '|', 'emoticons', 'link']
				});
				K('#image3').click(function() {
					editor.loadPlugin('image', function() {
						editor.plugin.imageDialog({
							showRemote : false,
							imageUrl : K('#url3').val(),
							clickFn : function(url, title, width, height, border, align) {
								K('#url3').val(url);
								editor.hideDialog();
							}
						});
					});
				});
			});
		</script>
	</head>
	<body>
		<h3>默认模式</h3>

		<form action="php/release_talk.php" method="post">
		<div class="title">
			<div class="title_1">标题</div>
			<textarea autofocus="autofocus" placeholder="请填写标题" maxlength="255" class="title_2" name="title"></textarea>
			
		</div>
		<div class="text">
			<div class="text_1">内容</div>
			<textarea autofocus="autofocus" placeholder="请填写内容" maxlength="255" class="text_2" name="content"></textarea>
		</div>
		<?php
		@session_start();
		echo "<input type='hidden' name='author' value='1'>";
		?>
		<input type="submit" value="发布" id="button_release">
	    </form>
	</body>
</html>
