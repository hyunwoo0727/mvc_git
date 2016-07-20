<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<div class="box">
		<div style="width: 300px; margin: 0 auto; text-align: left;">
		<h1>성적 관리</h1> <br />
		<ol>
			<li><a href="${context}/grade/regist.do">등록</a></li>
			<li><a href="${context}/grade/update.do">수정</a></li>
			<li><a href="${context}/grade/delete.do">삭제</a></li>
			<li><a href="${context}/grade/list.do">목록</a></li>
			<li><a href="${context}/grade/count.do">카운트</a></li>
			<li><a href="${context}/grade/search.do">검색</a></li>
		</ol>
		<a href="${context}/home.do"><img src="${img}/home.png" alt="home" width="50" height="50"/></a>
		<a href="${context}/member/logout.do"><img src="${img}/logout.png" alt="home" width="50" height="50"/></a>
		</div>
</div>