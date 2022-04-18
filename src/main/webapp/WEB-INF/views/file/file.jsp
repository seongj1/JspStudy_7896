<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드</title>
<link rel="stylesheet" href="/JspStudy_7896/static/css/style.css">
<link rel="stylesheet" href="/JspStudy_7896/static/css/file-upload.css">
</head>
<body>
	<div id="container">
		<form action="/JspStudy_7896/file-upload" method="post" enctype="multipart/form-data">
			<table>
				<tr>
					<td>미리보기</td> 
				</tr>
				<tr>
					<td class="preview-img"></td>
				</tr>
	 			<tr>
	 				<td>파일업로드</td>
	 			</tr>
				<tr>
					<td>
						<input type="file" class="file-upload" name="file" multiple="multiple">
					</td>
				</tr>
			</table>
			<button>이미지 업로드</button>
		</form>
		<a download href="/JspStudy_7896/static/fileupload/6e2549c2369c4abfb528be98f4cdbf64_banner02.jpg">이미지 다운로드</a>
		<img src="/JspStudy_7896/static/fileupload/6e2549c2369c4abfb528be98f4cdbf64_banner02.jpg">
	</div>
	<script type="text/javascript" src="/JspStudy_7896/static/js/file.js"></script>
</body>
</html>