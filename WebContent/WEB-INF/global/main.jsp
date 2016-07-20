<%@page import="member.MemberServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="top.jsp" />
<jsp:include page="header.jsp" />
<jsp:include page="nav.jsp" />
	<div id="section">
		<h2>
			회원관리
			<%=session.getAttribute("name") + " 님 환영합니다"%></h2>
	</div>
<jsp:include page="footer.jsp" />
<jsp:include page="end.jsp" />