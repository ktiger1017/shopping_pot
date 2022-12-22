<%@page import="java.util.ArrayList"%>
<%@page import="dao.ProductRepository"%>
<%@page import="dto.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
html,body{
	width: 100%;
	height:100%;
	margin: 0;
	padding: 0;
}
#wrap{
	width: 100%;
	height:100%;
}
#top{
	width: 100%;
	height: 100px;
	position: relative;
	
}
.img_logo{
	width:200px;
	height:23px;
	background-image: url("image/gnb_logo.png");
	position: absolute;
	top: 30px;
	left:800px;
	border-bottom: 1px solid #eaeaea;
}
#content {
    width: 70%;
    height: 600px;
    display: flex;
    margin: 0 auto;
}
.main{
	width: 15%;
	height:100%;
}
</style>
<body>
<%
	ProductRepository dao= ProductRepository.getInstance();
	ArrayList<Product> listofProducts=dao.getAllProducts();
%>

<div id="wrap">
	<div id="top">

		<jsp:include page="menu_all.jsp"></jsp:include>
		</div>
		<div id="content">
			<%
				for(int i=0; i< listofProducts.size();i++){
					Product product = listofProducts.get(i);		
					
			%>
		
		
		<div class="main">
			<img alt="" src="image/<%=product.getFilename() %>" style="width:100%">
			<h3><%=product.getPname() %></h3>
			<p><%=product.getDescription() %></p>
			<p><b>상품 코드 : </b><span class="a"><%= product.getProductId() %></span></p>
			<p><b>제조사</b></p> : <%=product.getProductId() %>
			<p><b>분류</b></p> : <%=product.getCategory() %>
			<p><b>재고 수</b></p> : <%=product.getUnitsInstock() %>
			<h4><%= product.getUnitPrice() %>원</h4>
			<p><a href="product_info.jsp?id=<%=product.getProductId()%>" class="btn_info" role="button" >상세정보</a>
					
		</div>
		
		
	
	
	<% } %>
	</div>
	<div id="foot">
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
</div>
</body>
</html>