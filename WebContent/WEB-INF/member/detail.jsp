<%@page import="member.MemberService"%>
<%@page import="member.MemberServiceImpl"%>
<%@page import="member.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = "hong";
	MemberService service = MemberServiceImpl.getInstance();
	MemberBean member = null;
	member = id==null || id=="" ? service.getSession() : service.findById(id);
%> 
<jsp:include page="../global/top.jsp" />
<jsp:include page="../global/header.jsp" />
<jsp:include page="../global/nav.jsp" />
	<style type="text/css">
	#member_detail{border: 3px solid black; width: 70%;height: 300px; margin: 0 auto;border-collapse: collapse;}
	#member_detail tr{border: 1px solid darkgray; height: 20%;}
	#member_detail tr td{border: 1px solid darkgray; font-size: x-large;}
	.fontBold{font-weight: bold;}
	.bg_color_yellow{background-color: #A9F5A9;}
	</style>

	<!--  id birth name regdate gender proflieImg -->
	<div class="box" style="width: 70%;">

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
	</div>
<jsp:include page="../global/footer.jsp" />
<jsp:include page="../global/end.jsp" />