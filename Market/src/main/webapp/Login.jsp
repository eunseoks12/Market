<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<%
	String from = request.getParameter("from");
	if(from == null)
		from = "Main.jsp";
%>
<form action="LoginAction.jsp?from=<%=from %>" method="post">
<div>
	<input type="text" placeholder="아이디" name="id"><br>
	<input type="password" placeholder="비밀번호" name="pw"><br>
	<input type="submit" value="로그인">
</div>
</form>
</body>
</html>