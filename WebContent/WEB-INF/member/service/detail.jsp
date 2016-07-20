<%@page import="member.MemberService"%>
<%@page import="member.MemberServiceImpl"%>
<%@page import="member.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	MemberService service = MemberServiceImpl.getInstance();
	MemberBean member = null;
	member = id==null || id=="" ? service.getSession() : service.findById(id);
%> 
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Insert title here</title>
	<link rel="stylesheet" href="${css}/member.css" />
	<style type="text/css">
	#member_detail{border: 3px solid black; width: 90%;height: 90%; margin: 0 auto;border-collapse: collapse;}
	#member_detail tr{border: 1px solid darkgray; height: 20%;}
	#member_detail tr td{border: 1px solid darkgray; font-size: xx-large;}
	.fontBold{font-weight: bold;}
	.bg_color_yellow{background-color: #A9F5A9;}
	</style>
</head>
<body>
	<!--  id birth name regdate gender proflieImg -->
	<div class="box" style="width: 80%;">
		<h1>회원 정보</h1>
		<table id="member_detail">
			<tr>
				<td rowspan="4" style="width: 30%;"><img src="${img}/member/<%=member.getProfileImg()%>" alt="wwwe.com" width="300" height="300" /></td>
				<td class="fontBold bg_color_yellow" style="width: 20%;">ID</td>
				<td style="width: 40%;"><%=member.getId()%></td>
			</tr>
			<tr>
				<td class="fontBold bg_color_yellow">NAME</td>
				<td><%=member.getName()%></td>			
			</tr>
			<tr>
				<td class="fontBold bg_color_yellow">이메일</td>
				<td><%=member.getEmail()%></td>
			</tr>
			<tr>
				<td class="fontBold bg_color_yellow">성별</td>
				<td ><%=member.getGender()%></td>
			</tr>
			<tr>
				<td class="fontBold bg_color_yellow">생년월일</td>
				<td colspan="2"><%=member.getBirth()%></td>
			</tr>
			<tr>
				<td class="fontBold bg_color_yellow">등록일</td>
				<td colspan="2"><%=member.getRegDate()%></td>
			</tr>
			
		</table>		
	<a href="${context}/member/member_controller.jsp"><img src="${img}/member.gif" alt="" width="50" height="50"/></a>
	<a href="${context}/global/main.jsp"><img src="${img}/home.png" alt="home" width="50" height="50"/></a>
		
	
	</div>
</body>
</html>