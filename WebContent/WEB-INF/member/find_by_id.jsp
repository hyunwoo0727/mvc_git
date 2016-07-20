<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<jsp:include page="../global/top.jsp" />
<jsp:include page="../global/header.jsp" />
<jsp:include page="../global/nav.jsp" />
	<style>
	body {
		background-color: yelLow;
	}
	h1 {
		color: blue;
	}
	
	p {
		color: red;
	}
	</style>

	<div class="box">
		<h1>아이디 검색</h1>
		<br /> 
		<form action="${context}/member/result/find_by_id.jsp" method="post">
			검색할 아이디 : <input type="text" name="id" /> <br />
			<input class="btn" type="submit" value="검색" />
		</form>
	
	</div>
<jsp:include page="../global/footer.jsp" />
<jsp:include page="../global/end.jsp" />