<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../global/top.jsp" />
<jsp:include page="../global/header.jsp" />
<jsp:include page="../global/nav.jsp" />
	<link rel="stylesheet" href="${css}/member.css" />
	<style type="text/css">	
	#member_detail{border: 3px solid black; width: 70%;height: 300px; margin: 0 auto;border-collapse: collapse;}
	#member_detail tr{border: 1px solid darkgray; height: 15%;}
	#member_detail tr td{border: 1px solid darkgray; font-size: x-large;}
	.fontBold{font-weight: bold;}
	.bg_color_yellow{background-color: #A9F5A9;}
	</style>
	<div class="box">
		<form action="${context}/member.do" method="post">
		<input type="hidden" name="id" value="${user.id}" />
		<input type="hidden" name="action" value="update" />
		<input type="hidden" name="page" value="detail" />		
			<table id="member_detail">
				<tr>
					<td rowspan="5" style="width: 30%;"><img src="${img}/member/${user.profileImg}" alt="wwwe.com" width="300" height="300" /></td>
					<td class="fontBold bg_color_yellow" style="width: 20%;">ID</td>
					<td style="width: 40%;">${user.id}</td>
				</tr>
				<tr>
					<td class="fontBold bg_color_yellow">PW</td>
					<td><input type="text" name="pw" value="${user.pw}" /></td>			
				</tr>
				<tr>
					<td class="fontBold bg_color_yellow">NAME</td>
					<td>${user.name}</td>			
				</tr>
				<tr>
					<td class="fontBold bg_color_yellow">이메일</td>
					<td><input type="text" name="email" value="${user.email}" /></td>
				</tr>
				<tr>
					<td class="fontBold bg_color_yellow">성별</td>
					<td>${user.gender}</td>
				</tr>
				<tr>
					<td class="fontBold bg_color_yellow">생년월일</td>
					<td colspan="2">${user.birth}</td>
				</tr>
				<tr>
					<td class="fontBold bg_color_yellow">등록일</td>
					<td colspan="2">${user.regDate}</td>
				</tr>
			</table>	
			<input class="btn" type="submit" value="수정" />
		</form>	
		<a href="${context}/global.do"><img src="${img}/home.png" alt="home" width="50" height="50"/></a>
		<a href="${context}/member.do?action=logout"><img src="${img}/logout.png" alt="home" width="50" height="50"/></a>
	</div>
<jsp:include page="../global/footer.jsp" />
<jsp:include page="../global/end.jsp" />