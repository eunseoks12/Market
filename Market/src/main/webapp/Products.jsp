<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<style type="text/css">
.Cart {
	width: 122px;
}

button {
	color: #fff;
    background-color: #000;
    cursor: pointer;
    padding: 0;
    width: 156px;
    height: 48px;
    border-radius: 4px;
    font-size: 14px;
    transition: background-color .5s;
}

button:hover {
	background-color: white;
	color:black;
}
</style>
</head>
<body>
<%
	String goodsid = request.getParameter("goodsid");
%>
<div id="login-modal" class="modal">
  <form method="post" action="LoginAction.jsp?from=Products.jsp?goodsid=<%=goodsid%>">
    <input type="text" id="username" name="id" placeholder="아이디">
    <br> 
    <input type="password" id="password" name="pw" placeholder="비밀번호">
    <br>
    <input type="submit" value="로그인">
  </form>
</div>
<div class="Test">
	<button type="button" class="Cart">장바구니</button>
	<button type="button" class="Buy" id="Buy">주문하기</button>
</div>
<%
	String id = (String) session.getAttribute("id");
	
	if(id == null) {
%>
<script>
	$(document).ready(function(){
	  $("Button").click(function(){
	    $("#login-modal").modal();
	  });
	});
</script>
<%
	} else {
%>
<script>
	$(function() {
		$('#Buy').click(function() {
			location.href = 'BuyAction.jsp?goodsid=' + <%=goodsid%>;
		});
	});
</script>
<%
	}
%>
</body>
</html>