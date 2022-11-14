<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/style.css?문자열" />
<script
	src="https://kit.fontawesome.com/c53c47d58c.js"
	crossorigin="anonymous">
</script>
</head>

<body>
	<div class="screen-header">
		<div class="user-friendly-screen-header">
		  <div class="user-friendly-screen-header__1th-div">
			<a>로그인</a>
			<span>|</span>
			<a>MY페이지</a>
		  </div>
		  <div class="user-friendly-screen-header__2th-div">
			<h1 class="user-friendly-screen-header__title">Shopping Mall</h1>
			<div class="user-friendly-screen-header__search">
			  <input 
			  	type="text"
				name="search" 
				 
				required
			  />
			  <button aria-label="submit">
				<i class="fas fa-search fa-2x"></i>
			  </button>
			</div>
			<div class="user-friendly-screen-header__user-product">
			  <i class="far fa-heart fa-3x"></i>
			  <i class="fas fa-shopping-bag fa-3x"></i>
			</div>
		  </div>
		</div>
		<ul class="product-type-screen-header">
		  <li>운동화</li>
		  <li>구두</li>
		  <li>샌들</li>
		  <li>부츠</li>
		</ul>
	  </div>

	  <form action="">
		<table>
		  <caption></caption>
		  <tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		  </tr>
		  <tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		  </tr>
		  <tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		  </tr>
		</table>
	  </form>
	
<form method="post" action="signupDB.jsp">	  
<table style="border= 3px; top : 300px; position : relative; font-size: 20px;>

	<tr height="50">
		<td width="50" align="center">이름</td>
		<td width="50" height="50" align="center"><input type="text" name="username" placeholder="이름을 입력해주세요" required>
	</td>
	</tr>

	<tr height="50">
		<td width="50" align="center">생년월일</td>
		<td width="50" align="center">
			<input type="date" name="userdate" required>
		</td>
		</tr>
	<tr height="50">
		<td width="150" align="center">아이디</td>
		<td width="150" align="center">
			<input type="text" name="userid" placeholder="아이디를 입력해주세요" required>
		</td>
		</tr>
	<tr height="50">
		<td width="150" align="center">비밀번호</td>
		<td width="150" align="center">
			<input type="password" name="userpw" placeholder="비밀번호를 입력해주세요" required>
			</td>
			</tr>
	<tr height="50">
		<td width="150" align="center">비밀번호 확인</td>
		<td width="150" align="center">
			<input type="text" name="userpwcheck" placeholder="비밀번호를 입력해주세요" required>
			</td>
			</tr>
	<tr height="50">
		<td width="150" align="center">성별</td>
		<td width="150" align="center">
			<input type="radio" name="gender" id="gender1" value="M" />
			남자
			<input type="radio" name="gender" id="gender2" value="F" />
        	여자

			</td>
			</tr>

	<tr height="50">
		<td width="150" align="center">휴대폰 번호</td>
		<td width="150" align="center">
			<select name="phoneno1">
				<option value="">::선택::</option>
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="019">019</option>
			</select>
			-
			<input type="text" name="phoneno2" size="4" required>
			-
			<input type="text" name="phoneno3" size="4" required>
			</tr>
		<tr height="50">
			<td width="300" align="center">이메일
			<td width="400"  align="center"><input type="text" name="email"> @                    
		<select name="mailselect">
			<option value="naver.com">naver.com</option>
            <option value="gmail.com">gmail.com</option>
            <option value="hanmail.net">hanmail.net</option>
            <option value="hotmail.com">hotmail.com</option>
            <option value="korea.com">korea.com</option>
            <option value="nate.com">nate.com</option>
            <option value="yahoo.com">yahoo.com</option>
		</select>
	</td>

	<tr height="50">
		<td width="150" align="center">회원구분</td>
		<td width="150" align="center">
			<input type="radio" name="gender" id="admins" value="admins" />
			관리자
			<input type="radio" name="gender" id="nomal" value="nomal" />
        	일반회원

			</td>
			</tr>

	<tr height="50">
			<td colspan="2" width="0" align="center">
			<input type="submit" value="회원 가입">	
	<td>
			<td colspan="2" width="150" align="center">
			<input type="submit" value="나가기">
</table>
</form>

</body>
</html>