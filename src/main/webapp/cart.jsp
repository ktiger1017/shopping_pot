   <%@page import="dto.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	body,html{
		width: 100%;
		margin:0;
		padding:0;
	}
	#wrap{
		width: 100%;   
		position: relative;         
		
	}
	#top{
	    top: 150px;
    width: 100%;
    height: 300px;
    position: absolute;
	}
	.top_span{
	position:absolute;
	font-size: 70px;
	left: 500px;
	top: 40px;
	border-bottom: 1px solid #eaeaea;
	}
	.btn{
	position:absolute;
	border: none;
	color: white;
	font-size: 17px;
	}
	table{
	position:absolute;
	top:300px;
	left:350px;
	width: 1200px;
	height:600px;
	border: 1px solid black;
	}
	td{
	text-align: center;
	}
	#footer{
	position: relative;
    width: 100%;
    top: 850px;
    height: 350px;
    background-color: gray;
    }
    #content input{
    cursor: pointer;
    }
</style>
<body>
<% Product product=new Product(); %>
	<div id="wrap">
		<div id="top_header">
			<jsp:include page="menu_all.jsp"></jsp:include>
		</div>
		<div id="top">
		<div class="top_span">
		<span>장바구니</span>
		</div>
			 
			
		</div>
		<div id="content">
			<table>
			<tr>
				<th>상품</th>
				<th>가격</th>
				<th>수량</th>
				<th>소계</th>
				<th>비고</th>
			</tr>
			<%
			int sum=0;
			ArrayList<Product> cartlist=(ArrayList<Product>) session.getAttribute("cartlist");
			if(cartlist==null){
				cartlist=new ArrayList<Product>();
			}
			for(int i=0;i<cartlist.size();i++){
				 product=cartlist.get(i);
				int total= product.getUnitPrice() * product.getQuantity();
				sum=sum+total;
			
			%>
			
			<tr>
				<td><%=product.getProductId()%> - <%=product.getPname() %></td>
				<td><%=product.getUnitPrice() %></td>
				<td><%=product.getQuantity() %></td>
				<td><%=total%></td>
				<td><a href="delete_info.jsp?id=<%=product.getProductId()%>">지우기</a></td>
			</tr>
			<%System.out.println(product.getProductId()); %>		
		<%
		}
		%>
			<tr>
				<th></th>
				<th></th>
				<th>총액</th>
				<th><%=sum %></th>
				<th></th>
			</tr>		
			</table>
			<a href="remove_all.jsp">
			<input type="button" value="삭제하기" class="btn" style="background-color:red;position:absolute;right:500px;top:850px"></a>
			
			<a href="order_info.jsp?id=<%=product.getProductId()%>">
			<input type="button" value="주문하기" class="btn" style="background-color: green;position: absolute;right: 400px;top: 850px ">
			</a>
			<a href="mainpage.jsp"><input type="button" value="쇼핑 계속하기" class="btn" style="background-color: black;position: absolute;right: 600px;top: 850px;color: white;cursor: pointer "></a>
		</div>
		
	</div>
	<div id="foot">
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
		
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
$(".img_search").click(function () {
	 $("#header_search").css("top","58px");

});
$(".btn_close").click(function () {
	 $("#header_search").css("bottom","-1000px");

	});

</script>		
</body>
</html>