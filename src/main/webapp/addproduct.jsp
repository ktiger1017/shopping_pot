<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addProduct</title>
</head>
<style>
html,body,window{
	margin: 0;
	padding: 0;
}
#wrap{
	width:100%;
	height:100%;
}
#title{
	top: 200px;
    width: 100%;
    height: 200px;
    position: relative;
}
#title>span{
	 border-bottom: 1px solid #eaeaea;
    font-size: 70px;
    position: absolute;
    top: 0px;
    left: 500px; 
	
}
#main{
	top: 200px;
    width: 100%;
    height: 700px;
    position: relative;
}
#main span{
	border-bottom: 1px solid #eaeaea;
	font-size: 17px;
	position: absolute;
	width: 100px;
}
#main input{
	position: absolute;
	left:250px;
}


form{
	position: absolute;
	left:500px;
	padding:10px 0;
}

</style>
<body>
<div id="wrap">
	<div id="top">
	<jsp:include page="menu_all.jsp"></jsp:include>
	</div>
	<div id="title">
	<span>상품등록하기</span>
	</div>

	<div id="main">
	<form action="addproduct_add.jsp" method="post" enctype="multipart/form-data">
	
		<span>상품코드</span>
		<input type="text" class="input1" size="50" style="position: absolute;top: 10px" name="productId"> <br>
		
		<span style="position: absolute;top: 45px">상품명</span>
		<input type="text" class="input2" size="50" style="position: absolute;top: 45px" name="pname"> <br>
		
		<span style="position: absolute;top: 80px">가격</span>
		<input type="text" class="input3" style="position: absolute;top: 80px" name="unitPrice"> <br>
		
		<span style="position: absolute;top: 120px">상세정보</span>
		<input type="text" class="input4" style="position: absolute;top: 120px" name="description"> <br>
		
		<span style="position: absolute;top: 160px">제조사</span>
		<input type="text" class="input5" style="position: absolute;top: 160px" name="manufacturer"> <br>
		
		<span style="position: absolute;top: 200px">분류</span>
		<input type="text" class="input6" style="position: absolute;top: 200px" name="category"> <br>

		<span style="position: absolute;top: 240px">재고 수</span>
		<input type="text" class="input7" style="position: absolute;top: 240px" name="unitsInstock"> <br>
		
		<span style="position: absolute;top: 280px">상태</span>
		 <span style="position: absolute;top: 280px;left:250px"><input type="checkbox"  value="new" checked="checked" class="input8" style="position: absolute;top: 4px;left:100px" name="condition">신규 제품</span>
		<span style="position: absolute;top: 280px;left:400px"><input type="checkbox" value="new" class="input9" style="position: absolute;top: 4px;left:100px" name="condition">중고 제품</span>
		<span style="position: absolute;top: 280px;left:550px"><input type="checkbox"  value="new" class="input10" style="position: absolute;top: 4px;left:100px" name="condition">재생 제품</span> <br>
		
		<span style="position: absolute;top: 320px">이미지</span>
		<input type="file" class="input11" style="position: absolute;top: 320px" name="image"> <br>
			
			
		<input type="submit" value="추가" style="position: absolute;top: 380px;left:600px;width: 150px;height: 30px">	
			
	</form>
	</div>
	<div id="foot">
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
</div>
</body>
</html>