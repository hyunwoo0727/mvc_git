<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   <!-- 줄 -->
	<div class="box">
		<div style="width: 300px; margin: 0 auto; text-align: left;">
		<h1>회원관리</h1> <br />
		<ol>
			<li><a href="${context}/member/list.do">전체보기</a></li>
			<li><a href="${context}/member/detail.do">내 정보보기</a></li>
			<li><a href="${context}/member/update.do">내정보수정</a></li>
			<li><a href="${context}/member/delete.do">탈퇴</a></li>
			<li><a href="${context}/member/find_by_id.do">검색(ID)</a></li>
			<li><a href="${context}/member/find_by.do">검색</a></li>
			<li><a href="${context}/member/count.do">회원수</a></li>
		</ol>
		<a href="${context}/home.do"><img src="${img}/home.png" alt="home" width="50" height="50"/></a>
		<a href="${context}/member/logout.do"><img src="${img}/logout.png" alt="home" width="50" height="50"/></a>
		</div>
	</div>	
