<%@page import="java.util.function.Function"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dao.ProductRepository"%>
<%@page import="dto.Product"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<style>
#footer{
    position: relative;
    top: 100px;
    width: 100%;
    height: 350px;
    background-color: gray;
}
</style>

<% String id=request.getParameter("id");
	ProductRepository dao= ProductRepository.getInstance();
	Product product=dao.getProductById(id);
%>


	<div id="wrap">
		<div id="top">
			<jsp:include page="menu_all.jsp"></jsp:include>
		</div>
		<div id="main" style="width:60%;margin: 0 auto"> 
		<img alt="" src="image/<%=product.getFilename() %>" style="width:60%;margin: 0 auto">
			<h3><%=product.getPname() %></h3>
			<p><%=product.getDescription() %></p>                                                                              
			<p><b>상품 코드 : </b><span class="a"><%= product.getProductId() %></span></p>
			<p><b>제조사</b></p> : <%=product.getProductId() %>
			<p><b>분류</b></p> : <%=product.getCategory() %>
			<p><b>재고 수</b></p> : <%=product.getUnitsInstock() %>
			<h4><%= product.getUnitPrice() %>원</h4>
			
			
			<p><form action="product_cart.jsp?id=<%=product.getProductId() %>" method="post">
			<input type="submit" value="장바구니에 추가">
			<a href="cart.jsp" class="btn_info" >장바구니</a>
			<a href="product.jsp" class="btn_info" >상품목록</a>
			</form>
			
		</div>
		<div id="foot">
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>