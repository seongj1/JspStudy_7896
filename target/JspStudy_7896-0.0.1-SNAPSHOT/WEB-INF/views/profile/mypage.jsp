<%@page import="repository.user.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	User principalUser = (User)session.getAttribute("principal");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link rel="stylesheet" href="/JspStudy_7896/static/css/style.css">
<link rel="stylesheet" href="/JspStudy_7896/static/css/mypage.css">
</head>
<body>
	<div id="container">
		<div class="mypage-items">
			<table>
				<tr>
					<td>사용자 이름</td>
					<td><%=principalUser.getUsername() %></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><%=principalUser.getName() %></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><%=principalUser.getEmail() %></td>
				</tr>
			</table>
			<div>
				<button type="button" class="profile-update-btn">회원 정보 수정</button>
				<button type="button" class="password-update-btn">비밀번호 변경</button>
				<button type="button" class="membership-withdrawal">회원탈퇴</button>
				<button type="button" class="logiout-btn">로그아웃</button>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		const profileUpdateBtn = document.querySelector(".profile-update-btn");
		const passwordUpdateBtn = document.querySelector(".password-update-btn");
		const membershipWithdrawal = document.querySelectort(".membership-withdrawal");
		const logoutBtn = document.querySelectort(".logout-btn");
		
		logoutBtn.onclick = () => {
			location.href = "/JspStudy_7896/auth/logout";
		}
		
		profileUpdateBtn.onclick = () => {
			location.href = "/JspStudy_7896/profile/update";
		}
		
		passwordUpdateBtn.onclick = () => {
			location.href = "/JspStudy_7896/profile/update/password";
		}
		
		membershipWithdrawal.onclick = () => {
			let flag = confirm("정말로 회원탈퇴 하시겠습니까?");
			if(flag == true)){
				location.href = "/JspStudy_7896/profile/delete";
				response.sendRedirect("/JspStudy_7896/auth/signin")
			}
		}
	</script>
</body>
</html>




