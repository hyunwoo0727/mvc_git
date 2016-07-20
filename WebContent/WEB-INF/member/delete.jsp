<%@page import="member.MemberServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../global/top.jsp" />
<jsp:include page="../global/header.jsp" />
<jsp:include page="../global/nav.jsp" />
	<div class="box">
	<embed src="${img}/cat.gif" type="" /> <br />
	탈퇴 페이지 <br/>
	<form action="${context}/member/result/delete.jsp">
		비밀번호 확인 : <input type="password" name="pw" />
		<input type="hidden" name="id" value="<%=MemberServiceImpl.getInstance().getSession().getId()%>" />
		<input class="btn" type="submit" value="탈퇴" />
	
	</form>
	</div>
<jsp:include page="../global/footer.jsp" />
<jsp:include page="../global/end.jsp" />