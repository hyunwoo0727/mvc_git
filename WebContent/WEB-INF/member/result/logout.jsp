<%@page import="member.MemberBean"%>
<%@page import="member.MemberServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	MemberBean member = new MemberBean();
	member.setId(id);
	member.setPw(pw);
	MemberServiceImpl.getInstance().logOut(member);
	response.sendRedirect("");
%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Insert title here</title>
</head>
<body>
</body>
</html>