<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.MemberServiceImpl"%>
<%@ page import="member.MemberService"%>
<%@ page import="member.MemberBean"%>

<%
	MemberService mService = MemberServiceImpl.getInstance();
	String name = request.getParameter("name");
	String pw = request.getParameter("pw");
	String id = request.getParameter("id");
	String ssn = request.getParameter("ssn");
	String email = request.getParameter("email");
	String profile = request.getParameter("profile");
	MemberBean member = new MemberBean();
	if(id==""||pw==""||name==""||ssn==""){
		response.sendRedirect("");
		return;
	}
	member.setRegDate();
	member.setId(id);
	member.setPw(pw);
	member.setName(name);
	member.setSsn(ssn);
	member.setEmail(email);
	member.setProfileImg(profile);
	System.out.println("?? : " + member);
	 
	int result = mService.regist(member);
	if(result==0){
		response.sendRedirect("");
		return;
	} 
%> 
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>회원 가입 완료</title>
	<link rel="stylesheet" href="${css}/member.css" />
	<style type="text/css">
	div.joinDiv{
		border: 2px solid gray; width: 80%; margin: 10px 50px 10px 50px;
	}
	span.meta{
		width: 200px; background-color: powderblue; float: left; text-align: center; font-weight: bold; border-right: 1px solid black; 
	}
	</style>
</head>
<body>
	<!-- <object width="100%" height="500px" data="../../global/school_info.html"></object> -->
	<div class="box">
		
			<span class="meta">이름</span><%=name %> <br/>
			<hr style="margin: 0;">
			<span class="meta">ID</span> <%=id %> <br/>
			<hr style="margin: 0;">
			<span class="meta">비밀번호</span> <%=pw %> <br/>
			<hr style="margin: 0;">
			<span class="meta">SSN</span> <%=ssn %> <br/>
			<hr style="margin: 0;">
			<span class="meta">전공</span> <%=request.getParameter("major")%> <br/>
			<hr style="margin: 0;">
			<span class="meta">수강과목</span> 
			<%
				String[] subjects = request.getParameterValues("subject");
				if(subjects !=null){
					for(String subject : subjects){
			%>
						<%=subject %>
			<%
					}
				}
			%>
			<hr style="margin: 0;">
			<br/>
			
			
			회원가입 축하드립니다 <%=request.getParameter("name") %> 님..
		
		<br />
		<a href="${context}/member/member_controller.jsp"><img src="${img}/member.gif" alt="" width="50" height="50"/></a>
		<a href="${context}/index.jsp"><img src="${img}/home.png" alt="home" width="50" height="50"/></a>
		
		
	</div>
</body>
</html>