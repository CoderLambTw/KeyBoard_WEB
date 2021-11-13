<%@page import="uuu.cmr.entity.Outlet"%>
<%@page import="uuu.cmr.service.ProductService"%>
<%@page import="uuu.cmr.entity.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>金鍵盤</title>
<link rel="shortcut icon"  href="images/logo2.png" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/style/cmr.css">
<style>
	.linkbar{
			text-align: right;
			width: 100%;
			height: auto;			
	}
	.box1{
			font-size: 3em;
	}
	footer {
		text-align: center;
		clear: both;
		color: #000;
		font-size: 14px;
	}
	#cartbotton{
		border:0;
  		background-color:#003C9D;
  		color:#fff;
  		border-radius:10px;
  		cursor:pointer;
  	}

	#cartbotton:hover{
  		color:#003C9D;
  		background-color:#fff;
  		border:2px #003C9D solid;
	}
	#checkoutbotton{
		border:0;
  		background-color:orange;
  		color:#fff;
  		border-radius:10px;
  		cursor:pointer;
  	}

	#checkoutbotton:hover{
  		color:#003C9D;
  		background-color:lightyellow;
  		border:2px #003C9D solid;
	}
</style>
</head>
<body>
	<script
	  src="https://code.jquery.com/jquery-3.4.1.js"
	  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	  crossorigin="anonymous">
	</script>
	<script>
		function sendAddCartRequest(){
			notAjax = false;
			if(notAjax==false){
				//送出ajax請求
				//alert("ajax");
				$.ajax({
					url:$("#productForm").attr("action")+"?ajax=true",
					method: $("#productForm").attr("method"),
					data: $("#productForm").serialize()
				}).done(addCartDoneHandler);//指定addCart完成後的回呼(CallBack)程式
				
			}
			//當notAjax==true則使用同步請求(繼續form submit)，否則就取消form submit
			return notAjax;
		}
		function addCartDoneHandler(data, textStatus, jqXHR){
			alert("加入購物車成功");
			$("#cartTotalQuantity").text(data);
			$("#cartTotalQuantity").css("color", "purple");
		}
	</script>
<jsp:include page="/subviews/header.jsp">
		<jsp:param value="產品明細" name="subtitle"/>
	</jsp:include>
	<%
		//1.取得request中的parameter
		String productId = request.getParameter("productId");
		Product p = null;
		
		
	
		//2.呼叫商業邏輯
		if(productId!=null){
			ProductService service = new ProductService();
			p = service.getProductById(productId);
		}
		
	
	%>
	<article style = "min-height: 70vh; max-height: 1100px;">
	<div class="linkbar">
	</div>
	<div class="box1">
		<img style="width: 100px; height: auto;" src="images/direction.png">
		<div style="position: relative; top: -90px; left: 100px">
			產品介紹
		</div>
		<div style="position: relative; top: -70px;">
			<% if(p!=null) {%>
			<img id="productImage" style="width: 400px; height: auto;" src="<%= p.getPhotoUrl()%>">
			<div>
				<form id="productForm" action="add_cart.do" method="POST">
					<h4 style="position: relative; top: -560px; left: 400px; font-size: 0.8em;"><%= p.getName() %></h4>
					<% if(p instanceof Outlet) {%>
					<div>定價: <%= ((Outlet)p).getListPrice() %></div>
					<%} %>
					<div style="position: relative; top: -600px; left: 400px; font-size: 0.6em;">
						<%= p instanceof Outlet?((Outlet)p).getDiscountString():"" %> 
						<label style="color: red;">售價:$<%= p.getUnitPrice() %></label>
						<br>

						<p>
							<label>軸體語言</label>
							<select>
							<option>請選擇</option>
							<option>青軸中文</option>
							<option>紅軸中文</option>
							<option>黑軸中文</option>
							<option>銀軸中文</option>
							</select>
						</p>
						<p>
							<label>數量:</label>
							<input type="hidden" name="productId" value=<%=p.getId() %>>
							<input name="quantity" style="position: relative; top: -5px; width: 100px;" type="number" min='1' max='<%= p.getStock() %>' required>						
						</p>
							<input id="cartbotton" type="submit" value="加入購物車" name="add_cart" style="width:150px;height:50px;">
							<input id="checkoutbotton" type="button" value="直接結帳" name="checkout" style="width:150px;height:50px;">
					</div>

					
				</form>
			</div>
		</div>
	</div>
	<%}else{ %>
		<p>查無此產品(id:<%= productId %> )</p>
	<%} %>
	</article>
	<jsp:include page="/subviews/footer.jsp"></jsp:include>
</body>

</html>