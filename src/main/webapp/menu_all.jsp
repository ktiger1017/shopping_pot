<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
#menu_all{
z-index: 10000;
}
#menu {
	width: 100%;
	height: 60px;
	position: relative;
	border-bottom: 1px solid #eaeaea;
	z-index: 0;
}
.menu{
	width:900px;
	position: absolute;
	left:400px;
	top:10px;
	z-index: 0;
}
.menu span,a{
	text-decoration:none;
	margin: 0 20px;
	cursor: pointer;
}
.img_title {
	position: absolute;
	left: 50px;
	top: 5px;
	cursor: pointer;
}

.img_tiffany {
	position: absolute;
	right: 400px;
	cursor: pointer;
}

.img_login {
	position: absolute;
	right: 180px;
	top: 10px;
	cursor: pointer;
}

.span_login {
	position: absolute;
	font-size: 15px;
	right: 120px;
	top: 9px;
	cursor: pointer;
}
.span_line{
	position: absolute;
	right:106px;
	top:6px;
}
.img_search {
	position: absolute;
	right: 70px;
	top: 10px;
	cursor: pointer;
}
#header_search {
    position: absolute;
    width: 100%;
    top: -500px;
    height: 130px;
    background-color: #f5f5f5;
    border-bottom: 1px solid #ccc;
    z-index: 10;
    display: block;
    transition:0.3s;
    opacity: 1000;
}

#header_search_container {
    width: 65%;
    height: 50%;
    margin: 0 auto;
    margin-top: 30px;
    position: relative;
}

.text_search {
    width: 500px;
    height: 100%;
    font-size: 21px;
    font-weight: bold;
    text-indent: 40px;
    border: none;
    position: absolute;
    left: 296px;
    cursor: pointer;
}

.button_search {
    position: absolute;
    width: 60px;
    height: 65px;
    background-image: url("image/header_search_btn.png");
    border: none;
    left: 795px;
    cursor: pointer;
}

.btn_close {
    position: absolute;
    left: 1000px;
    top: 20px;
    width: 20px;
    height: 20px;
    background-size: cover;
    background-image: url("image/btn_close.png");
    cursor: pointer;
}

.util{
	width:200px;
	position: absolute;
	right:100px;
}
</style>
<body>

<div style="margin-top: 30px;" id="menu_all">
			<div id="menu">
				
				<a href="mainpage.jsp">
				<img alt="" src="image/gnb_logo.png" class="img_title">
				</a>
				<div class="menu">
				<a href="mainpage.jsp" style="color: black;cursor: pointer;">신세계</a>
				<a href="product.jsp" style="color: black;cursor: pointer;">판매상품</a>
				<a href="addproduct.jsp" style="color: black;cursor: pointer;">상품추가</a>
				<a href="cart.jsp" style="color: black;cursor: pointer;">장바구니</a>
				<span>매거진</span>
				<span>고객 서비스</span>
				<span>ESG 경영</span>
				
				</div>
				<div class="util">
				<img alt="" src="image/banner_pc_tiffany.jpg" class="img_tiffany">
				<img alt="" src="image/gnb_ico_login.png" class="img_login"> 
				<span class="span_login">로그인</span>
				<span class="span_line">|</span> 
				<img alt="" src="image/gnb_ico_search.png" class="img_search">
				</div>
				
				<div id="header_search">
                        <div id="header_search_container">
                            <input type="text" placeholder="검색어를 입력해주세요" class="text_search">
                            <button class="button_search">

                            </button>
                            <div class="btn_close"></div>
                        </div>
                    </div>
				
				
				
				
				1
				
				
			</div>
			
			</div>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
$(".img_search").click(function () {
	 $("#header_search").css("top","58px");

});
$(".btn_close").click(function () {
	 $("#header_search").css("top","-1000px");

	});

</script>
</body>
</html>