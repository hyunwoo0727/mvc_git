<%@page import="member.MemberServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<jsp:include page="../global/top.jsp" />
<jsp:include page="../global/header.jsp" />
<jsp:include page="../global/nav.jsp" />	
	<div class="box">
	<h2>현재 회원은 <%=MemberServiceImpl.getInstance().count()%> 명 입니다</h2>  <br />
	</div>
<jsp:include page="../global/footer.jsp" />
<jsp:include page="../global/end.jsp" />