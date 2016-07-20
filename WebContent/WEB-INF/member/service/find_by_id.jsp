<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>ID 검색 페이지</title>
	<link rel="stylesheet" href="${css}/member.css" />
	<style>
	body {
		background-color: yelLow;
	}
	h1 {
		color: blue;
	}
	
	p {
		color: red;
	}
	</style>
</head>
<body>
	<div class="box">
		<embed width="100%" height="210px" src="image.jsp">
		<h1>아이디 검색</h1>
		<br /> 
		<form action="${context}/member/result/find_by_id.jsp" method="post">
			검색할 아이디 : <input type="text" name="id" /> <br />
			<input class="btn" type="submit" value="검색" />
		</form>
	
	<a href="${context}/member/member_controller.jsp"><img src="${img}/member.gif" alt="" width="50" height="50"/></a>
	<a href="${context}/global/main.jsp"><img src="${img}/home.png" alt="home" width="50" height="50"/></a>
	</div>
</body>
</html>