<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<div id="nav" style="width: 100%; padding: 0px;">
	<div style="float: right;font-weight: bold;font-size: xx-large;background-color: #333;color: white;height: 49px;">
		${user.name } 님 환영합니다
	</div>
	<ul>
		<li><a href="${context}/member.do">회원관리</a></li>
		<li><a href="${context}/grade.do">성적관리</a></li>
		<li><a href="${context}/account.do">계좌관리</a></li>
		<li><a href="${context}/global.do?page=school_info">학교소개</a></li>
	</ul>
	
</div>