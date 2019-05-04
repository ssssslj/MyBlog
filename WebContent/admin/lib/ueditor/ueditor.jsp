<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script src="/MyBlog/js/jquery-2.1.4.min.js" type="text/javascript"></script>
<script type="text/javascript" charset="utf-8" src="ueditor.config.js"></script> 
<script type="text/javascript" charset="utf-8" src="ueditor.all.min.js"> </script>  
<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
<script type="text/javascript" charset="utf-8" src="lang/zh-cn/zh-cn.js"></script>
</head>
<body>
	<form action="publish" method="post">


		标题:<input type="text" name="article.title" value="标题"> 
		</br> 
		摘要: <input type="text" name="article.digest" value="摘要"> 
		</br>
		<script id="uploadEditor" type="text/plain"></script>
		<input type="text" id="pictureUpload" name="article.imgUrl"  />
		<input type="button" id="upImage" value="上传图片"> 
		<script id="editor" type="text/plain" name="article.article" style="width:1024px;height:500px;"></script>
		<input type="submit" value="提交">
	</form>

	<script type="text/javascript">
		var ue = UE.getEditor('editor');
		window.onresize = function() {
			window.location.reload();
		}
		var _uploadEditor;
		$(function() {
			//重新实例化一个编辑器，防止在上面的editor编辑器中显示上传的图片或者文件
			_uploadEditor = UE.getEditor('uploadEditor');
			_uploadEditor.ready(function() {
				//设置编辑器不可用
				//_uploadEditor.setDisabled();
				//隐藏编辑器，因为不会用到这个编辑器实例，所以要隐藏
				_uploadEditor.hide();
				//侦听图片上传
				_uploadEditor.addListener('beforeInsertImage',
						function(t, arg) {
							//将地址赋值给相应的input,只去第一张图片的路径
							var s = "";
							for (var i = 0; i < arg.length; i++) {
								s = s + arg[i].src + ",";
							}
							;
							$("#pictureUpload").attr("value", s);
						})
				//侦听文件上传，取上传文件列表中第一个上传的文件的路径
				_uploadEditor.addListener('afterUpfile', function(t, arg) {
					$("#fileUpload").attr("value",
							_uploadEditor.options.filePath + arg[0].url);
				})
			});
		});
		//弹出图片上传的对话框
		$('#upImage').click(function() {
			var myImage = _uploadEditor.getDialog("insertimage");
			myImage.open();
		});
		//弹出文件上传的对话框
		function upFiles() {
			var myFiles = _uploadEditor.getDialog("attachment");
			myFiles.open();
		}
	</script>
</body>
</html>
