<%@page import="uuu.cmr.entity.Outlet"%>
<%@page import="uuu.cmr.entity.Product"%>
<%@page import="uuu.cmr.entity.CartItem"%>
<%@page import="java.util.Set"%>
<%@page import="uuu.cmr.entity.ShoppingCart"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>購物車</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/style/cmr.css" >
<style type="text/css">


	#cartTable td, #cartTable th {
	  border: 1px solid #cbc;
	  padding: 8px;
	}	
	#cartTable tr:hover {background-color: #ddd;}	
	#cartTable th {
	  padding-top: 12px;
	  padding-bottom: 12px;	  
	  background-color: darkgray;
	  color: white;
	}

	
	#cartTable{width:85%;margin: auto;border-collapse: collapse;}
	
	.cartItemImage{width:48px;vertical-align: middle;} 
</style>
<script>
	function checkOut(){
		location.href="check_out.jsp";
		
	}
	
</script>
</head>
<body>
<jsp:include page = "/subviews/header.jsp">
		<jsp:param value = "購物車" name = "subtitle"/>
	</jsp:include>
	<%
		ShoppingCart cart = (ShoppingCart)session.getAttribute("cart");
	%>	
	<article style="min-height: 70vh">
	<!--<%= cart %>-->
		<form id="cartForm" action="update_cart.do" method="GET">
		<%if (cart!=null && cart.size()>0){ %>
		<table id="cartTable">
			<caption>購 物 明 細</caption>
			<thead>
				<tr>
					<th></th><th>名 稱</th><th>原 價</th><th>折扣</th><th>售價</th><th>數量</th><th>刪除</th>
				</tr>
			</thead>
			<tbody>
				<%
					Set<CartItem> itemSet = cart.getCartItemSet();
				
					for(CartItem item: itemSet){
						Product p = item.getProduct();
				%>
				<tr>
					<td><%= item.getProduct().getId() %></td>
					<td>
						<img class="cartItemImage" src="<%= p.getPhotoUrl() %>">
						<%= p.getName() %>
					</td>
					<td><%= p instanceof Outlet?((Outlet)p).getListPrice():p.getUnitPrice()%></td>
					<td><%= p instanceof Outlet?((Outlet)p).getDiscountString():""%></td>
					<td><%= p.getUnitPrice() %></td>
					<td><input type="number" name="quantity<%=item.hashCode() %>" value='<%= cart.getQuantity(item) %>' min='<%= p.getStock()>1?1:0 %>' max='<%= p.getStock()>10?10:p.getStock() %>'></td>
					<td><input type="checkbox" name="delete<%=item.hashCode() %>">勾選刪除</td>
				</tr>
				<%} %>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="6" style="text-align: right">共<%= cart.size() %>項, 
					<%=cart.getTotalQuantity() %>件</td>
					<td colspan="2">共<%= cart.getTotalAmount() %>元</td>
				</tr>
				<tr>
					<td style="border-left: 0; border-right: 0; border-bottom: 0" colspan="6" >
					</td>
					<td style="border-left: 0; border-right: 0; border-bottom: 0" colspan="2" >
						<input type="submit" value="修改購物車">
						<input type="button" value="結帳" onclick="checkOut()">
					</td>
				</tr>
			</tfoot>		
		</table>
		<%}else{ %>
			<p>購物車是空的</p>
		<% } %>
		</form>
	</article>
	<%@include file="/subviews/footer.jsp" %>
</body>
</html>