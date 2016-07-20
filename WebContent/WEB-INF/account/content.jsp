<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<div class="box">
		<div style="width: 300px; margin: 0 auto; text-align: left;">
		<h1>계좌 관리</h1> <br />
		<ol>
			<li><a href="${context}/account/regist.do">통장개설</a></li>
			<li><a href="${context}/account/deposit.do">입금</a></li>
			<li><a href="${context}/account/withdraw.do">출금</a></li>
			<li><a href="${context}/account/update.do">수정</a></li>
			<li><a href="${context}/account/delete.do">해지</a></li>
			<li><a href="${context}/account/list.do">목록</a></li>
			<li><a href="${context}/account/search.do">계좌(계좌)</a></li>
			<li><a href="${context}/account/count.do">계좌수</a></li>
		</ol>
		<a href="${context}/home.do"><img src="${img}/home.png" alt="home" width="50" height="50"/></a>
		<a href="${context}/member/logout.do"><img src="${img}/logout.png" alt="home" width="50" height="50"/></a>
		</div>
</div>
