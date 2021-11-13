<%@page import="uuu.cmr.entity.Customer"%>
<%@page import="java.util.List"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="height: 1600px;">
 <head>
  <title> 金鍵盤	 </title>
  <meta charset="utf-8" />
	<link rel="shortcut icon"  href="images/logo2.png" />
	 <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css"/>
	 	<script
		  src="https://code.jquery.com/jquery-3.4.1.js"
		  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
		  crossorigin="anonymous">
	</script>
	
  <style type="text/css">
  	p {
  		padding: 40px;}

	#banner{
		width: 200px;
		height: auto;
		}
	body {
		height: 1600px;
		font-family: Arial, "文泉驛正黑", "WenQuanYi Zen Hei", "儷黑 Pro", "LiHei Pro", 
			"微軟正黑體", "Microsoft JhengHei", "標楷體", DFKai-SB, sans-serif;
		background-repeat: no-repeat;	
		background-position: center;	
		}
	.p1{
		text-align: center;
	}
	#content {
	width: 430px;
	float: right;
	margin: 50px 100px 130px 0;
	padding: 20px;
	box-shadow: 5px 5px 20px #2D2019;
	border-radius: 10px;
	background-color: rgba(20,16,12,.7);
	color: #ADA9A8;
	}
	
	#content>h1 {
		padding-top: 5px;
		color: #fff;
		margin: 0px;
	}
	
	#content>p {
		font-size: 18px;
	}
	.information {
		color: #fff;
		padding: 10px;
		font-size: 22px;
		line-height: 40px;
		border-top: 1px dashed #fff;
		border-bottom: 1px dashed #fff;
	}
	
	.discount {
		font-size: 26px;
		font-weight: bold;
		color: #6C5641;
	}
	
	button {
		color: #15110D;
		padding: 8px 15px;
		font-size: 22px;
		font-weight: bold;
		border-radius: 20px;
		box-shadow: 3px 3px #4E4A4D;
		background-color: #ADA9A8;
		float: right;
		margin: 20px 0px;
	}
	
	button:hover {
		border: none;
		background-color: #15110D;
		color: #ADA9A8;
		box-shadow: none;
	}
	footer {
		text-align: center;
		clear: both;
		color: #000;
		font-size: 14px;
	}
	.weeksaleimg{
		display: flex;
		flex-direction: row; 
	}
	.weeksaleimg img{
		width: 250px;
	}
  </style>
 </head>
	 <%
	 List<String> errors = (List<String>)request.getAttribute("errors");
	 
	 Customer member = (Customer)session.getAttribute("member");
	 
		//取得Cookie
		String id = "";
		String auto = "";
		Cookie[] allCookies = request.getCookies();
		if(allCookies!=null && allCookies.length>0){
			for(int i=0;i<allCookies.length;i++){
				if("id".equals(allCookies[i].getName())){
					id = allCookies[i].getValue();
				}else if("auto".equals(allCookies[i].getName())){
					auto = allCookies[i].getValue();
				}
			}
		}
		
	 
	 
	 %>
	 <script>
	 	$(document).ready(init);
	 	function init(){
	 		$("#myImg").hover(enterHandler,leaveHandler);
	 	}
	 	function enterHandler(){
	 		$("#myImg").stop();
	 		$("#myImg").animate({width:"514px"},200);
	 	}
	 	function leaveHandler(){
	 		$("#myImg").stop();
	 		$("#myImg").animate({width:"100px"},200);
	 	}
	 	
	 </script>
 <body>

		<jsp:include page="/subviews/header.jsp">
		<jsp:param value="Insert title here" name="subtitle"/>
	</jsp:include>
		<div id="banner">
			<img src="images/banner.jpg" style="width: 1870px; height: 600px;">
		</div>

		<div id="content" style="position: relative; top:-630px;right: -60px;">
			<h1>會員登入</h1>
			<%= errors!=null?errors.toString():"" %>
			<form action="login.do" method="POST">
				<%if(member==null){ %>
				<p>
					<label>帳號:</label>
					<input placeholder="請輸入帳號或email" name="id" required
					value="<%= request.getParameter("id")==null?id: request.getParameter("id")%>">
					<input type="checkbox" name="auto" value='ON'<%= auto%>><label>請記住我的帳號</label>
					<br>
					<label>密碼:</label>
					<input placeholder="請輸入密碼" name="password" type="password" required>
					<input type ="submit" value="確定登入">
				</p>
				<%}else{ %>
				<p style="color:white;"><%=member.getName()%>，歡迎回來!
				<a style="color: gray;" href="<%= request.getContextPath() %>/logout.do" >登出</a>
					<br>
					<a style="color: yellow;" href="products_list.jsp">點此進入專屬於你的每日優惠</a>				
				</p>
				<%} %>
				<h2>近期活動</h2>
				<p class="information">	週年慶特賣會：2020/3/20~2020/3/27<br/>
				預約電話：0800-092000<br />
				（期間內預約參觀再享<span class="discount">額外95折</span>優惠！）
				</p>				
			</form>
			<%if(member==null){ %>
			<a href="<%= request.getContextPath() %>/register.jsp" ><button>點此加入會員>>></button></a>
			<%}else{ %>
			<a href="<%= request.getContextPath() %>/member/update.jsp" ><button>點此修改會員>>></button></a>
			<%} %>
		</div>

	<div class="slide" style="position: relative; left:330px; display: inline-block; height: 10px; text-align: center;">
		<img src="<%=request.getContextPath()%>/images/AsusLogo.jpg">
		<img src="<%=request.getContextPath()%>/images/CorsairLogo.jpg">
		<img src="<%=request.getContextPath()%>/images/DuckyLogo.jpg">
		<img src="<%=request.getContextPath()%>/images/FilcoLogo.jpg">
		<img src="<%=request.getContextPath()%>/images/RazerLogo.jpg">
	</div>
	<div class="slide" style="position: relative; left:450px; top: 30px; display: inline-block; height: 10px; text-align: center;">
		<img src="<%=request.getContextPath()%>/images/IrocksLogo.jpg">
		<img src="<%=request.getContextPath()%>/images/LogitechLogo.jpg">
		<img src="<%=request.getContextPath()%>/images/MsiLogo.jpg">
		<img src="<%=request.getContextPath()%>/images/SteelLogo.jpg">
	</div>
	<div style="margin-left: 280px; margin-top: 30px;">
		<h2 class="animated infinite bounce" style="animation-duration: 1.5s;animation-iteration-count:100">★客人分享</h2>
		<img src="images/WeekSale.jpg" style="height: 420px;">
	</div>
	<h1>
	
		IG功能 記得放回來!!!!!!
	</h1>
	<!-- <div style="margin-left: 500px;position: absolute;top: 1050px;">
	<jsp:include page="Insert_IG.jsp"></jsp:include>
	</div> -->
	

	<jsp:include page="/subviews/footer.jsp"></jsp:include>
</body>
</html>