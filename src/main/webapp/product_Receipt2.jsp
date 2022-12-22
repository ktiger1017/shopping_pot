
<%@page import="java.net.URLDecoder"%>
<%@page import="dao.ProductRepository"%>
<%@page import="dto.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id="";
	String name="";
	String date="";
	String country="";
	String code="";
	String adress="";
	
	Cookie [] cookies = request.getCookies();
	
	if(cookies !=null){
		for(int i=0;i<cookies.length;i++){
			Cookie thisCookie=cookies[i];
			String n = thisCookie.getName();
			
			if(n.equals("id"))
				id=URLDecoder.decode((thisCookie.getValue()),"utf-8");
			if(n.equals("name"))
				id=URLDecoder.decode((thisCookie.getValue()),"utf-8");
			if(n.equals("date"))
				id=URLDecoder.decode((thisCookie.getValue()),"utf-8");
			if(n.equals("country"))
				id=URLDecoder.decode((thisCookie.getValue()),"utf-8");
			if(n.equals("code"))
				id=URLDecoder.decode((thisCookie.getValue()),"utf-8");
			if(n.equals("adress"))
				id=URLDecoder.decode((thisCookie.getValue()),"utf-8");
		}
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
#wrap{
position: relative;
}
#container{
    position: relative;
    width: 70%;
    height: 500px;
    top: 120px;
    margin: 0 auto;
}

#title{
top:30px;
left:200px;
position: absolute;
font-size: 33px;
font-weight: bold;
}

#main {
border-radius:0 50px 50px 0;
    line-height: 2;
width: 70%;
    height: 400px;
    position: absolute;
    left: 200px;
    top: 150px;
    background-color: #99ffcc;
}
.btn_back{
position:absolute;
top:400px;
right:200px;
line-height:2;
width: 120px;
height: 45px;
background-color: gray;
}
.btn_thank{
position:absolute;
top:400px;
right:30px;
width: 120px;
line-height:2;
height: 45px;
background-color: skyblue;
}
#main h1{
font-size: 25px;

}
#footer{
    position: relative;
    bottom: 0px;
    width: 100%;
    top: 300px;
    height: 350px;
    background-color: gray;
}
</style>
<body>
<div id="wrap">
<div id="top_header">
	<jsp:include page="menu_all.jsp"></jsp:include>
	</div>
<div id="container">
<div id=title>
	<span>주문 정보</span>
</div>	
<div id="main">
	<h1>영수증</h1>

	<div>
	<strong>배송주소</strong> <br>
	성명 : <%out.println(name); %> <br>
	우편번호 : <%out.println(code); %> <br>
	주소 : <%out.println(adress); %>(<%out.println(country);%>);
	</div>
	<div>
		<div>
		배송일 : <%out.println(date); %>
		</div>
	</div>
	
	<div>
		<table>
			<tr>
			 	<th>상품</th>
			 	<th>#</th>
			 	<th>가격</th>
			 	<th>소계</th>
			 	
			</tr>	
			<%
				int sum=0;
			ArrayList<Product> cartList = (ArrayList<Product>) session.getAttribute("cartlist");
			if(cartList==null)
				cartList=new ArrayList<Product>();
				for(int i=0;i<cartList.size();i++){
					Product product= cartList.get(i);
					int total= product.getUnitPrice() * product.getQuantity();
					sum=sum+total;
					%>
					
			<tr>
				<td><%=product.getPname()%></td>
				<td><%=product.getQuantity() %></td>
				<td><%=product.getUnitPrice() %>원</td>
				<td><%=total%>원</td>
			</tr>
			<%
				}
			%>					
			<tr>
				<td> </td>
				<td> </td>
				<td><strong>총액 :</strong></td>
				<td><%=sum%></td>
			</tr>
		</table>
		
		<div class="btn_back"><a href="order_info.jsp?id=<%=id%>">뒤로가기</a></div>
			<div class="btn_thank"><a href="mainpage.jsp">주문완료</a></div>
				
	</div>
	
</div>
</div>	
<div id="foot">
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
</div>	
	
</body>
</html>