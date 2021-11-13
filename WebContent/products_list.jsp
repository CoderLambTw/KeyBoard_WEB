<%@page import="uuu.cmr.entity.Outlet"%>
<%@page import="uuu.cmr.entity.Product"%>
<%@page import="java.util.List"%>
<%@ page import="uuu.cmr.service.ProductService"%>
<%@ page pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>金鍵盤-產品列表</title>

	<script
		  src="https://code.jquery.com/jquery-3.4.1.js"
		  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
		  crossorigin="anonymous">
	</script>

	<script src = "<%=request.getContextPath() %>/fancybox/jquery.fancybox.js"></script> 
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/fancybox/jquery.fancybox.css" >
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/style/cmr.css">
	<link rel="shortcut icon"  href="images/logo2.png" /> 
	<script>
	 function getProduct(pid){
		 notAjax = false;   //false: 開啟Ajax功能的效果, true: 關閉ajax效果
		 	//alert("getProduct");
		 	//console.log("getProduct");
		 
		 if(notAjax){
			 //送出同步get請求
			 location.href="product.jsp?productId=" + pid;
		 }else{
			 //送出非同步get請求
			 $.ajax({
				 url:"product_ajax.jsp?productId=" + pid,
				 method:"GET"				
			 }).done(getProductDoneHandler);			 
		 }
	  	
	 }
	 function getProductDoneHandler(data, status, xhr){
		 console.log(data);
		 //data用fancybox.open打開在#productDetail
		 $('#productDetail').html(data);
		 $.fancybox.open({
				src  : '#productDetail',
				type : 'inline',
				opts : {
					afterShow : function( instance, current ) {
						console.info( 'done!' );
					}
				}
			});
	 }
	</script>	 

	<style>
body{
		background: gray;
}

.productlist{
		width: 1500px;
		position: relative;
		left: 250px;
}

.productlist li{
		border:1px solid lightgray; display: inline-block;  width: 300px; height: 280px; vertical-align: top;text-align: center;
		margin-top: 20px; margin-left: 20px;
		}
		
.addcart{
	display: none;
}

.productlist li:hover{
		border:3px outset green;
}

.productlist li:hover img{
		transform: scale(2);
}

.productlist li:hover .detail{
		display: none;
}

.productlist li:hover .addcart{
		display: block;
}

	
.productlist img{
	 	margin: auto; width: 120px
}
.blink {
    animation-duration: 1s;
    animation-name: blink;
    animation-iteration-count: infinite;
    animation-direction: alternate;
    animation-timing-function: ease-in-out;
}
@keyframes blink {
    0% {
        opacity: 1;
    }
    80% {
        opacity: 1;
    }
    81% {
        opacity: 0;
    }
    100% {
        opacity: 0;
    }
}


	</style>
</head>
<%
	//1.將request中for data(keyword)
	String keyword = request.getParameter("keyword");

	//2.呼叫商業邏輯
	
	ProductService service = new ProductService();
	List<Product> list = null;
	if(keyword!=null && (keyword=keyword.trim()).length()>0){
		//如果長度等於0即查詢全部
		list = service.getProductsByKeyword(keyword);
	}else{
		keyword = " ";
		list = service.getAllProducts();
	}
%>
<body>

<jsp:include page="/subviews/header.jsp">
		<jsp:param value="Insert title here" name="subtitle"/>
	</jsp:include>
	<div id="productDetail"></div>
	<article style="min-height: 70vh">
	
		<form>
			<input type="search" placeholder="請輸入查詢關鍵字" 
				name="keyword" value="<%= keyword%>">
			<input type="submit" value="查詢">		
		</form>
		<% if(list != null && list.size()>0){ //3.將查詢結果顯示在html畫面上%> 
		<ul class = "productlist">
			<% for(int i=0; i<list.size(); i++){
				Product p = list.get(i);			
			%>		
			
			<li>
				<a href = "javascript:getProduct(<%= p.getId() %>)">							
				<img src = "<%= p.getPhotoUrl() %>" onerror="getImage(this)">				
				<h4 class="detail"><%= p.getName().replace(keyword, "<span class='keyword'>" + keyword + "</span>") %></h4>
				</a>
				<div class="detail">優惠價:<%=p instanceof Outlet?((Outlet)p).getDiscountString():"" %> <%= p.getUnitPrice() %></div>
				<div class="detail" style = "font-size: smaller"><%= p.getDescription() %></div>
				<div class="addcart">
					<img style="width: 35px; height: auto; position: relative; top: 55px;"src="<%=request.getContextPath()%>/images/cart.png">
					<p class="blink" style="position: relative; top: 90px; color: red; font-size: 1.8em;">
						點擊商品圖片加入購物車
					</p>
				</div>	
			</li>			
			
			<%} %>
		</ul>
		<%}else{ %>
		<p>查無產品</p>
		<%} %>	
	</article>
	<jsp:include page="/subviews/footer.jsp"></jsp:include>
	
</body>
</html>