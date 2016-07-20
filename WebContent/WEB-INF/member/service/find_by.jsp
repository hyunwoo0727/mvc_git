<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Insert title here</title>
	<link rel="stylesheet" href="${css}/member.css" />
	<style type="text/css">
	iframe.ifrm{
		border: none; width: 400px; height: 400px;
	}
	</style>
</head>
<body>
	<div class="box">
		검색 페이지 <br/>
		<iframe src="image.jsp" class="ifrm"></iframe> <br />
		
		<form action="">
			검색어 : <input type="text" name="word" /> <br />	
		</form>
		<a href="${context}/member/member_controller.jsp"><img src="${img}/member.gif" alt="" width="50" height="50"/></a>
		<a href="${context}/global/main.jsp"><img src="${img}/home.png" alt="home" width="50" height="50"/></a>
	</div>
</body>
</html>