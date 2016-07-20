<%@page import="member.MemberService"%>
<%@page import="member.MemberServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberService service = MemberServiceImpl.getInstance();
%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Insert title here</title>
	<link rel="stylesheet" href="${css}/member.css" />
</head>
<body>
	<div class="box">
		<form action="${context}/member/result/logout.jsp" method="post">
			<input type="hidden" name="id" value="<%=service.getSession().getId()%>" />
			<input type="hidden" name="pw" value="<%=service.getSession().getPw()%>" />
			<input type="submit" value="로그아웃" />
		</form>
	</div>
</body>
</html>