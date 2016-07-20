<%@page import="member.MemberBean"%>
<%@page import="member.MemberServiceImpl"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<MemberBean> list = MemberServiceImpl.getInstance().list();
%> 
<jsp:include page="../global/top.jsp" />
<jsp:include page="../global/header.jsp" />
<jsp:include page="../global/nav.jsp" />
	<style>
	table {
		font-family: arial, sans-serif;
		border-collapse: collapse;
		width: 100%;
	}
	
	td, th {
		border: 1px solid #dddddd;
		text-align: left;
		padding: 8px;
	}
	
	tr:nth-child(even) {
		background-color: #dddddd;
	}
	</style>
	<div class="box">
		목록보기 <br />
		<table>
			<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>REGDATE</th>
				<th>BIRTH</th>
			</tr>
			<%
				int i=0;
				for(i=0;i<list.size();i++){
			%>
				<tr>
			<%
					MemberBean member = list.get(i);
			%>
					<td><%=member.getId()%></td>
					<td><a href="${context}/member/service/detail.jsp?id=<%=member.getId()%>"><%=member.getName()%></a></td>
					<td><%=member.getRegDate()%></td>
					<td><%=member.getBirth()%></td>
					</tr>
			<%
				}
			%>
		</table>

		<a href="${context}/member/member_controller.jsp"><img src="${img}/member.gif" alt="" width="50" height="50"/></a>
		<a href="${context}/global/main.jsp"><img src="${img}/home.png" alt="home" width="50" height="50"/></a>
	</div>
<jsp:include page="../global/footer.jsp" />
<jsp:include page="../global/end.jsp" />