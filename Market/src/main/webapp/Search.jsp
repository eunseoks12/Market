<%@page import="DBPKG.goodsTableDTO"%>
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
<jsp:include page="Main.jsp"></jsp:include>
<br>
<table border="1" style="width: 50%; text-align: center; margin: 0 auto; margin-top: 50px">
<%
	request.setCharacterEncoding("UTF-8");
	String search = request.getParameter("search");
	TableDAO dao = new TableDAO();
	
	ArrayList<goodsTableDTO> list = dao.goodsSearch(search);
	for(int i = 0; i < list.size(); i++) {
		goodsTableDTO dto = list.get(i);
		String goodsid = dto.getGoodsid();
		String goodsname = dto.getGoodsname();
		int goodsprice = dto.getGoodsprice();
		String category = dto.getCategory();
		String goodscomment = dto.getGoodscomment();

%>
<tr onclick="location.href='Products.jsp?goodsid=<%=goodsid%>'">
	<td><%=goodsname %></td>
	<td><%=goodsprice %>원</td>
	<td><%=category %></td>
	<td><%=goodscomment %></td>
</tr>
<%
	}
%>
</table>
</body>
</html>