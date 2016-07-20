<%@page import="member.MemberService"%>
<%@page import="member.MemberServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberService service = MemberServiceImpl.getInstance();
%>
<jsp:include page="../global/top.jsp" />
<jsp:include page="../global/header.jsp" />
<jsp:include page="../global/nav.jsp" />
	<div class="box">
		<form action="${context}/member/result/logout.jsp" method="post">
			<input type="hidden" name="id" value="<%=service.getSession().getId()%>" />
			<input type="hidden" name="pw" value="<%=service.getSession().getPw()%>" />
			<input type="submit" value="로그아웃" />
		</form>
	</div>
<jsp:include page="../global/footer.jsp" />
<jsp:include page="../global/end.jsp" />