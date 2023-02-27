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
	String id = (String) session.getAttribute("id");
	TableDAO dao = new TableDAO();
	
	if (dao.userDelete(id) == 1) {
%>
		<script>
			alert('탈퇴 되었습니다.');
			location.href='Logout.jsp';
		</script>
<%
	} else {
%>
		<script>
			alert('탈퇴가 불가능합니다.');
			location.href='Main.jsp';
		</script>
<%
	}
%>

</body>
</html>