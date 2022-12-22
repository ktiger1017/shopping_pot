<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shopping mall</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
</head>
<style>
html, body {
	margin: 0;
	padding: 0;
	width: 100%;
	height: 100%;
}

#wrap {
	width: 100%;
	height: 100%;
	
}

#top {
	z-index:1000;
	width: 100%;
	height: 226px;
}
#top_logo{
	width:100%;
	height:120px;
	
}
#logo_image{
	width: 100%;
	height: 350px;
	position: relative;
}
.logo_image{
	width: 100%;
	height: 100px;
	background-image: url("image/logo_image.jpg");
	transition:1s;
	display: block;
}

#logo_util{
	width: 100%;
	height: 20px;
	position: relative;
	z-index: 0;
}
.mode_change{
	top:15px;
	right:180px;
	position: absolute;
	
}
.ssg{
	font-size:15px;
	position: absolute;
	right:60px;
	top:13px;
}
.util_line{
	position: absolute;
	right:-25px;
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
.util{
	width:200px;
	position: absolute;
	right:100px;
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


#content {
	width: 100%;
	height: 700px;
	background-image: url("image/R.jpg");
	z-index: 0;

}

</style>
<body>
	<div id="wrap">
		<div id="top">
			<div id="top_logo">
			<div id="logo_image">
			
			<div class="logo_image"></div>
		
			</div>
			<div id="logo_util">
				<div id="logo_util_inner" style="display: flex;">
					<div class="mode_change" style="color: gray;font-size: 13px;">
						<span style="cursor: pointer;">KR</span>
						<span>/</span>
						<span style="cursor: pointer;">EN</span>
						
						<span class="util_line">|</span>
						
					</div>
					
					<div class="ssg">
						<img alt="" src="image/gnb_ico_ssgcom.png" style="cursor: pointer;">
						
						<span style="cursor: pointer;">SSG.COM</span>
						
					</div>
				</div>
			</div>
			</div>
			<div style="margin-top: 30px;" id="menu_all">
			<hr style="background-color: #eaeaea">
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
				
				
			</div>
			
			</div>
		</div>
		<div id="content">
			
		</div>
		<div id="foot">
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
 <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
 <script type="text/javascript">

 $("#logo_image").hover(function() {
	jQuery(".logo_image").css('background-image',"url(image/logo_image_hover.jpg)");
	$("#logo_image").css("height","350px");
	$(".logo_image").css("height","350px");
	$("#logo_util").css("display","none");
	$("#menu").css("display","none");
	
	
	
},function(){
	jQuery(".logo_image").css('background-image',"url(image/logo_image.jpg)");
	$("#logo_image").css("height","100px");
	$(".logo_image").css("height","100px");
	$("#logo_util").css("display","block");
	$("#menu").css("display","block");
});
 
 $(".img_search").click(function () {
	 $("#header_search").css("top","58px");

});
 $(".btn_close").click(function () {
	 $("#header_search").css("top","-500px");

	});

 
 
 </script>
</body>
</html>