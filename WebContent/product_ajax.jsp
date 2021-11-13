<%@page import="uuu.cmr.entity.Customer"%>
<%@page import="uuu.cmr.entity.Outlet"%>
<%@page import="uuu.cmr.service.ProductService"%>
<%@page import="uuu.cmr.entity.Product"%>
<%@ page pageEncoding="UTF-8"%>
	<style>

		.colorImage{
			width:32px;margin:0 5px;border:lightgray 1px solid
			}
		.selectedImage{
			box-shadow: red 0 0 3px;border: maroon 1px solid ;
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
		.toggle {
		    display: inline-block;
		    text-align: center;
		    vertical-align: middle;
		    padding: 1px 8px;
		    border: 0px solid #aba7a5;
		    border-radius: 100px;
		    background: #f4efeb;
		    background: -webkit-gradient(linear, left top, left bottom, from(#f4efeb), to(#aba7a5));
		    background: -moz-linear-gradient(top, #f4efeb, #aba7a5);
		    background: linear-gradient(to bottom, #f4efeb, #aba7a5);
		    -webkit-box-shadow: #ffffff 0px 0px 8px 0px;
		    -moz-box-shadow: #ffffff 0px 0px 8px 0px;
		    box-shadow: #ffffff 0px 0px 8px 0px;
		    text-shadow: #ffffff 1px 1px 1px;
		    font: normal normal bold 20px georgia;
		    color: #111111;
		    text-decoration: none;
		}
		.toggle:hover,
		.toggle:focus {
		    border: 0px solid ##f4efeb;
		    background: #ffffff;
		    background: -webkit-gradient(linear, left top, left bottom, from(#ffffff), to(#cdc8c6));
		    background: -moz-linear-gradient(top, #ffffff, #cdc8c6);
		    background: linear-gradient(to bottom, #ffffff, #cdc8c6);
		    color: #111111;
		    text-decoration: none;
		}
		.toggle:active {
		    background: #aba7a5;
		    background: -webkit-gradient(linear, left top, left bottom, from(#aba7a5), to(#aba7a5));
		    background: -moz-linear-gradient(top, #aba7a5, #aba7a5);
		    background: linear-gradient(to bottom, #aba7a5, #aba7a5);
		}
		.toggle:before{
		    content:  "\0000a0";
		    display: inline-block;
		    height: 24px;
		    width: 24px;
		    line-height: 24px;
		    margin: 0 4px -6px -4px;
		    position: relative;
		    top: 0px;
		    left: 0px;
		    background: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAACXBIWXMAAA7EAAAOxAGVKw4bAAABnklEQVRIibWVS0oDQRCGvzQuggRxJSHL4AOC5AwyDi5CdJF7eJLgUSSL3CXZiJhNEHchRILIxMVUM5V+zIyvhqJ7uqv+v7q65+8GYPjHdiB9FiGy84dAF2jL/CvwDLw7scGxC2xUnwATYA3sHFvLWuLEuDhBgg4wDYDGbCoxwWYcuwQW3wC3tgB6Aby9HXRKwMfAudhDCYndiVciU1GWgUpkUFEuL3sDXAHDWB2VX9W1HgoWgNFX6r4i0PplNfwsVmYJWkAaANvWAPsIkCZAE4rtdoXEti1wC1wAMzXvlmgGnImvTuYIOEWdww37BzVSgB1gjn/Ic1mzhCMHI4VCKtz2KX0GLIFr4Fitv8jcUs1Fz8YAfYd9QyEBdSyVGI3RR5Woha83ayHRiYTGaSB2RS6Qe84T/J9mg3+7dAtlvgMe3RIh2Yb+zFi5YuA7x7+WVLjlCpUlKBWaAMrFbkMuA3clmS8oHiWvRJa1V0Lya7m23z95cNpEblpMHfWTuQqArshvS1KCQUMWY4++bU1ybTmR7zfgiXpiGH30/2T8BTlC0eemt6FCAAAAAElFTkSuQmCC") no-repeat left center transparent;
		    background-size: 100% 100%;
		}
				
		.box-wrap .toggle {
			font-size: 16px;
			border-radius: 4px;
			border: 1px solid #cecece;
			background: #efefef;
		}
		
		.box-wrap.box-open .toggle:after {
			content: "點我了解分期資訊"
		}
		
		.box-wrap.box-close .toggle:after {
			content: "點我了解分期資訊"
		}
		
		.box {
			border: 0px solid black;
			display: block;
			width: 500px;
			text-align: left;
			background-color: #eee;
			transition: height 0.35s ease;
			overflow: hidden;
			padding: 0 0px 0px 10px;
		}
		
		.box-close .box {
			height: 48px;
		}
		
		.box-open .box {
			height: 300px;
		}
	</style>

	  <script>
	
	  	function sendAddCartRequest(){
	  		notAjax = false;
	  		if(notAjax==false){
	  			//送出ajax請求
	  			//alert("ajax");
	  			$.ajax({
	  				url: $("#productForm").attr("action")+"?ajax="+(!notAjax),
	  				method: $("#productForm").attr("method"),
	  				data: $("#productForm").serialize()
	  			}).done(addCartDoneHandler); //指定addCart完成後的回呼(CallBack)程式	  			
	  		}	  		
	  		
	  		//當notAjax==true則使用同步請求(繼續form submit)，否則就取消form submit
	  		return notAjax;	  	
	  	}
	  	
	  	function addCartDoneHandler(data, textStatus, jqXHR){
	  		alert("加入購物車成功");
	  		$("#cartTotalQuantity").text(data);	  		
	  	}
	  	function LoginOk(){
	  		if(<%= (Customer)session.getAttribute("member")!=null?"true":"false"%>){
	  		}else{
	  			alert("請先登入會員後再選購產品")
	  		}
	  	}
	  </script>

	<%
		//1. 取得request中的parameter
		String productId = request.getParameter("productId");
		Product p = null;
		
		//2. 呼叫商業邏輯 
		if(productId!=null){
			ProductService service = new ProductService();			
			p = service.getProductById(productId);
		}
	%>			
			
		<div style="width:90%;margin:auto" >
			<%--3.將結果顯示在畫面上--%>	
			<% if(p!=null) {%>	
			<img id="productImage" style='float:left;width:40%;max-width:320px' src="<%= p.getPhotoUrl() %>">
			<div style='float:left;width:45%'>
				<form id="productForm" action="add_cart.do" method="POST">
					<h4><%= p.getName() %></h4>
					<% if(p instanceof Outlet) {%>
					<div>定價:<%= ((Outlet)p).getListPrice() %> </div>
					<% } %>
					<div><%= p instanceof Outlet?((Outlet)p).getDiscountString():"" %> <%= p.getUnitPrice() %> 元</div>		
					<div>
						<input type="hidden" name="productId" value=<%= p.getId()%>>
						數量: <input type="number" name="quantity" min='1' max='<%= p.getStock()%>' required>
						庫存: <%= p.getStock() %>	
							<br>		
							<br>	
							<input onclick="LoginOk()"id="cartbotton" type="submit" value="加入購物車" name="add_cart" style="width:150px;height:50px;">
					</div>
				</form>
			</div>
			<div style="clear:both;width:85%;min-width:12em">
				<br>
				<hr>
				<div style="font-size: smaller;clear:both;width:85%;min-width:12em;margin: auto;">
					<%= p.getDescription()%>
				</div>
			</div>
			<div class="box-wrap box-close">
		<div style="margin-bottom: 20px;">
			<button class="toggle"></button>
		</div>
		<div class="box" data-block="BLOCK_PRODUCT_ORDER_PAY_PLAN">
			<h3 class="tit">分期資訊</h3>
			<div class="content" style="display: block;">
				<div class="editor">
					<table
						style="border-collapse: collapse; border: 1px solid #ccc; font-size: 14px; line-height: 1.5; background: #fff">
						<tbody>
							<tr>
								<td rowspan="3" style="border: 1px solid #ccc; padding: 5px;">分期資訊：</td>
								<td style="border: 1px solid #ccc; padding: 5px;">刷卡分<strong
									style="color: red">3</strong>期約
								</td>
								<td style="border: 1px solid #ccc; padding: 5px;"><strong
									id="ORDER_PAY_PLAY_3" style="color: red">6,999</strong>元 <strong
									style="color: red">3期0利率</strong></td>
							</tr>
							<tr>
								<td style="border: 1px solid #ccc; padding: 5px;">刷卡分<strong
									style="color: red">6</strong>期約
								</td>
								<td style="border: 1px solid #ccc; padding: 5px;"><strong
									id="ORDER_PAY_PLAY_6" style="color: red">7,278</strong>元 <strong
									style="color: red">6期4%利率</strong></td>
							</tr>
							<tr>
								<td style="border: 1px solid #ccc; padding: 5px;">刷卡分<strong
									style="color: red">12</strong>期約
								</td>
								<td style="border: 1px solid #ccc; padding: 5px;"><strong
									id="ORDER_PAY_PLAY_12" style="color: red">7,488</strong>元 <strong
									style="color: red">12期7%利率</strong></td>
							</tr>
							<tr>
								<td colspan="3"
									style="border: 1px solid #ccc; padding: 5px; font-weight: bold; text-align: center;">支援刷卡分期的銀行</td>
							</tr>
							<tr>
								<td colspan="3" style="border: 1px solid #ccc; padding: 5px;">台新銀行、華南銀行、玉山銀行、中國信託銀行、第一銀行、台北富邦銀行、凱基銀行、國泰世華銀行、合作金庫銀行、遠東銀行、永豐銀行、澳盛銀行、日盛銀行、上海銀行、中信銀行、元大銀行、台中商銀、兆豐銀行、匯豐銀行、彰化銀行、新光銀行、聯邦銀行、台灣樂天</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<script>
		var toggleNode = document.querySelector('.toggle');

		toggleNode.addEventListener("click", toggleFunc);

		function toggleFunc(E) {
			var newClassName = "box-wrap box-close"
			E.preventDefault();
			box = document.querySelector('.box-wrap');
			if (box.className.match(/box-close/)) {
				newClassName = "box-wrap box-open";
			}
			box.className = newClassName;
		}
	</script>
	
			<%}else{ %>
				<p>查無此商品(id:<%= productId %>)</p>
			<%} %>
		</div>
	

