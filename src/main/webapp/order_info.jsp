<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
#title{
	width: 100%;
	top:80px;
	height: 200px;
	border-bottom: 1px solid #eaeaea;
	position: relative;

}
#title span{
	position: absolute;
    font-size: 70px;
    left: 500px;
    top: 70px;
	
}
#main{
	top:80px;
	width: 100%;
	position: relative;	
}
#main span{
	position: absolute;
	font-size: 23px;
}
#main input{
	position: absolute;
}
#btn{
display:flex;
position: absolute;
top: 370px;left: 500px;width: 500px;height: 80px";

}
#btn div{
	width: 80px;
	margin: 0 20px;
	height: 30px;
	color: white;
	border: 1px solid black;
	font-size: 20px;
	
}
#footer {
    position: relative;
    top: 600px;
    width: 100%;
    height: 350px;
    background-color: gray;
}
</style>
<body>
<div id="wrap">
<div id="top_header">
	<jsp:include page="menu_all.jsp"></jsp:include>
</div>

<div id="title">
	<span>배송 정보</span>
</div>

<div id="main">
<form action="cookie.jsp" method="post">
	<input type="hidden" name="id" value="<%=request.getParameter("id")%>">

	<span style="left:500px;top:60px;">성명</span>
	<input type="text" size=40 style="left:600px;top:65px;" name="name">
	
	<span style="left:500px;top:120px;">배송일</span>
	<input type="text" size=40 style="left:600px;top:125px;" name="date">
	<div style="position:absolute;left:600px;top:155px;">(yyy/mm/dd)</div>

	<span style="left:500px;top:180px;">국가명</span>
	<input type="text" size=40 style="left:600px;top:185px;" name="country"> 
	
	<span style="left:500px;top:240px;">우편번호</span>
	<input type="text" size=40 style="left:600px;top:245px;" name="code">
	
	<span style="left:500px;top:300px;">주소</span>
	<input type="text" size=65 style="left:600px;top:305px;" name="adress">
	
	<div id="btn" >
		<div style="background-color: gray;color: white;">
		<a href="cart.jsp" style="color: white">이전</a>
		</div>
		<div style="background-color: blue;color: white ">
		<input type="submit" value="등록" style="width:80px;height:30px;color:white;background-color: skyblue;border:none;font-size: 20px">
		<a href="cookie.jsp" style="color: white">등록</a>
		</div>
		<div style="background-color: red;color: white">
		<a href="mainpage.jsp" style="color: white">취소</a>
		</div>	
	</div>	
</form>	
</div>
<div id="foot">
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
</div>
	 
</body>
</html>