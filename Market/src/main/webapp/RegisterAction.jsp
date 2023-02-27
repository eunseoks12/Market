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
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");
	String postcode = request.getParameter("postcode");
	String address = request.getParameter("address");
	String detailAddress = request.getParameter("detailAddress");
	String user_type = request.getParameter("user_type");
	address = address + " " + detailAddress;
	user_type = "사용자";
	
	TableDAO dao = new TableDAO();
	if(dao.userRegister(id, pw, name, phone, email, postcode, address, user_type) == 1) {
%>
		<script>
			alert('회원가입이 완료되었습니다.');
			location.href="Login.jsp";
		</script>
<%
	} else {
%>
		<script>
			alert('회원가입에 실패 하였습니다. 다시 회원가입 부탁드립니다');
			history.back();
		</script>
<%
	}
%>
</body>
</html>