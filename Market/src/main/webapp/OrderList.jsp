<%@page import="DBPKG.orderTableDTO"%>
<%@page import="java.util.ArrayList"%>
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
<table border="1" style="width: 50%; text-align: center; margin: 0 auto; margin-top: 50px">
<%
	request.setCharacterEncoding("UTF-8");
	String id = (String) session.getAttribute("id");
	
	TableDAO dao = new TableDAO();
	ArrayList<orderTableDTO> list = dao.userorderSelect(id);
	for(int i = 0; i < list.size(); i++) {
		orderTableDTO dto = list.get(i);
		String orderid = dto.getOrderid();
		String userid = dto.getId();
		String goodsid = dto.getGoodsid();
		int goodscount = dto.getGoodscount();
		int totalprice = dto.getTotalprice();
%>
	<tr>
		<td><%=orderid %></td>
		<td><%=userid %></td>
		<td><%=goodsid %></td>
		<td><%=goodscount %></td>
		<td><%=totalprice %></td>
	</tr>
<%
	}
%>
</table>
</body>
</html>