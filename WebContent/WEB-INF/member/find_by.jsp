<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../global/top.jsp" />
<jsp:include page="../global/header.jsp" />
<jsp:include page="../global/nav.jsp" />
	<style type="text/css">
	iframe.ifrm{
		border: none; width: 400px; height: 400px;
	}
	</style>

	<div class="box">
		검색 페이지 <br/>
	
		
		<form action="">
			검색어 : <input type="text" name="word" /> <br />	
		</form>
		<a href="${context}/member/member_controller.jsp"><img src="${img}/member.gif" alt="" width="50" height="50"/></a>
		<a href="${context}/global/main.jsp"><img src="${img}/home.png" alt="home" width="50" height="50"/></a>
	</div>
<jsp:include page="../global/footer.jsp" />
<jsp:include page="../global/end.jsp" />