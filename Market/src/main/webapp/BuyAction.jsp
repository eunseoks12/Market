<%@page import="java.util.Random"%>
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
	Random random = new Random();
	String id = (String) session.getAttribute("id");
	String goodsid = request.getParameter("goodsid");
	int goodscount = random.nextInt(100) + 1;
	int totalprice = 1000 * goodscount;
	
	TableDAO dao = new TableDAO();
	if(dao.productBuy(id, goodsid, goodscount, totalprice) == 1) {
%>
	<script>
		alert('주문완료');
		history.back();
	</script>
<%
	} else {
%>
	<script>
		alert('주문실패');
		history.back();
	</script>
<%
	}
%>
</body>
</html>