<%@page import="DBPKG.TableDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
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
	DateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
	Date date = new Date();        
	String id = (String) session.getAttribute("id");
	String orderid = id + "_" + dateFormat.format(date);
	String goodsid = request.getParameter("goodsid");
	int goodscount = 1;
	int totalprice = 1000;
	
	TableDAO dao = new TableDAO();
	if(dao.productBuy(orderid, id, goodsid, goodscount, totalprice) == 1) {
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