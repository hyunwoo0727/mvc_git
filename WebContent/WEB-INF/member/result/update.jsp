<%@page import="member.MemberService"%>
<%@page import="member.MemberBean"%>
<%@page import="member.MemberServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberService service = MemberServiceImpl.getInstance();
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String email = request.getParameter("email");
	MemberBean member = new MemberBean();
	member.setId(id);
	member.setPw(pw);
	member.setEmail(email);
	if(id!="" && pw!="" && email!=""){
		if(service.update(member)==1){
			response.sendRedirect("");
		}
	}
%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Insert title here</title>
	<link rel="stylesheet" href="${css}/member.css" />
</head>
<body>
	<div class="box" style="margin-top: 10%;">
		
		<h1>수정 실패!!!!</h1> 
		<br />
		<a href="${context}/member/service/update.jsp">다시 시도</a>
		<br />
		
		<a href="${context}/index.jsp"><img src="${img}/home.png" alt="home" width="50" height="50"/></a>
	</div>
</body>
</html>