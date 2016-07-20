<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<div class="box">
		<div style="width: 300px; margin: 0 auto; text-align: left;">
		<h1>성적 관리</h1> <br />
		<ol>
			<li><a href="service/regist.jsp">등록</a></li>
			<li><a href="service/update.jsp">수정</a></li>
			<li><a href="service/delete.jsp">삭제</a></li>
			<li><a href="service/list.jsp">목록</a></li>
			<li><a href="service/count.jsp">카운트</a></li>
			<li><a href="service/search.jsp">검색</a></li>
		</ol>
		<a href="${context}/index.jsp"><img src="${img}/home.png" alt="home" width="50" height="50"/></a>
		<a href="${context}/member/service/logout.jsp"><img src="${img}/logout.png" alt="home" width="50" height="50"/></a>
		</div>
</div>