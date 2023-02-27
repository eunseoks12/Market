<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="javascript.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
	<header style="position: fixed; top: 0; left: 0; width: 100%; height:52px; background: #121517;">
	<div style="padding-left: 20px;">
		<a href="Main.jsp" style="font-weight: 200; text-decoration: none; color: white; line-height: 52px; font-size: 20px;">Market</a>
	</div>
		<%
			String id = (String) session.getAttribute("id");

		if (id != null) {
		%>
		<div class="position-absolute top-0 end-0" style="display: flex; align-items: center; margin: 0 12px; height: 52px; color:#fff;">
			<button type="button" onclick="location.href='OrderList.jsp'" style="outline: none; background: none; color: #fff; border: 0; font-size: 12px; padding: 0;">주문내역</button>
			<div style="background-color: #c7cdd4; box-sizing: border-box; opacity: .5; width: 1px; height: 18px; margin: 0 7px;"></div>
			<button type="button" onclick="location.href='Logout.jsp'" style="outline: none; background: none; color: #fff; border: 0; font-size: 12px; padding: 0;">로그아웃</button>
			<div style="background-color: #c7cdd4; box-sizing: border-box; opacity: .5; width: 1px; height: 18px; margin: 0 7px;"></div>
			<button type="button" id="delete" onclick="return Delete()" style="outline: none; background: none; color: #fff; border: 0; font-size: 12px; padding: 0;">회원 탈퇴</button>
		</div>
		<%
			} else {
		%>
		<div class="position-absolute top-0 end-0" style="display: flex; align-items: center; margin: 0 12px; height: 52px; color:#fff;">
			<button type="button" onclick="location.href='Login.jsp'" style="outline: none; background: none; color: #fff; border: 0; font-size: 12px; padding: 0;">로그인</button>
			<div style="background-color: #c7cdd4; box-sizing: border-box; opacity: .5; width: 1px; height: 18px; margin: 0 7px;"></div>
			<button type="button" onclick="location.href='Register.jsp'" style="outline: none; background: none; color: #fff; border: 0; font-size: 12px; padding: 0;">회원가입</button>
		</div>
		<%
			}
		%>
	</header>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>