<%@page import="DBPKG.TableDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String from = request.getParameter("from");
	
	TableDAO dao = new TableDAO();
	if(dao.userLogin(id, pw) == 1) {
		session.setAttribute("id", id);
		response.sendRedirect(from);
	} else {
%>
		<script>
			alert('아이디 또는 비밀번호가 잘못되었습니다.');
			history.back();
		</script>
<%
	}
%>
</body>
</html>