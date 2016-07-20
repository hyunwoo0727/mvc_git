<%@page import="member.MemberServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>회원탈퇴</title>
	<link rel="stylesheet" href="${css}/member.css" />
</head>
<body>
	<div class="box">
	<embed src="${img}/cat.gif" type="" /> <br />
	탈퇴 페이지 <br/>
	<form action="${context}/member/result/delete.jsp">
		비밀번호 확인 : <input type="password" name="pw" />
		<input type="hidden" name="id" value="<%=MemberServiceImpl.getInstance().getSession().getId()%>" />
		<input class="btn" type="submit" value="탈퇴" />
	
	</form>
	
	<a href="${context}/member/member_controller.jsp"><img src="${img}/member.gif" alt="" width="50" height="50"/></a>
	<a href="${context}/global/main.jsp"><img src="${img}/home.png" alt="home" width="50" height="50"/></a>
	</div>
</body>
</html>