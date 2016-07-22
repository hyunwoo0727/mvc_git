<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<div class="box">
		<div style="width: 300px; margin: 0 auto; text-align: left;">
		<h1>성적 관리</h1> <br />
		<ol>
			<li><a href="${context}/grade.do?page=regist">등록</a></li>
			<li><a href="${context}/grade.do?page=update">수정</a></li>
			<li><a href="${context}/grade.do?page=delete">삭제</a></li>
			<li><a href="${context}/grade.do?page=list">목록</a></li>
			<li><a href="${context}/grade.do?page=count">카운트</a></li>
			<li><a href="${context}/grade.do?page=search">검색</a></li>
		</ol>
		<a href="${context}/home.do"><img src="${img}/home.png" alt="home" width="50" height="50"/></a>
		<a href="${context}/member.do?page=logout"><img src="${img}/logout.png" alt="home" width="50" height="50"/></a>
		</div>
</div>