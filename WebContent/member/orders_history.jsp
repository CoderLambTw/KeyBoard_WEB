<%@page import="uuu.cmr.entity.Order"%>
<%@page import="java.util.List"%>
<%@page import="uuu.cmr.service.OrderService"%>
<%@page import="uuu.cmr.entity.Customer"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>歷史訂單</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/style/vgb.css">
<style>
	#orderHistory caption{
		text-align: center;
		font-size: 2em;
	}
		#orderHistory td, #cartTable th {
		  border: 1px solid #cbc;
		   padding: 2px 5px;
		}	
		#orderHistory tr:hover {background-color: #ddd;}	
		#orderHistory th {
	  	  padding-top: 3px;
		  padding-bottom: 3px;
		  background-color: darkgray;
		  color: white;
		}
		
		#orderHistory{width:85%;margin: auto;border-collapse: collapse;}
		
		.itemImage{width:48px;vertical-align: middle;} 
	</style>
</head>
<body>
<jsp:include page="/subviews/header.jsp" >
		<jsp:param value="歷史訂單" name="subtitle"/>
	</jsp:include>
	<%
		Customer member = (Customer)session.getAttribute("member");
		OrderService service = new OrderService();
		List<Order> list = service.getOrderHistory(member.getId());
	%>			
	<article style="min-height: 70vh">	
		<% if(list!=null && list.size()>0) {%>
		<table id="orderHistory">
			<caption>歷史訂單</caption>
			<thead>
				<tr>
					<th>編號</th><th>日期時間</th><th>處理狀態</th><th>付款方式</th><th>貨運方式</th><th>總金額</th><th>檢視明細</th>
				</tr>
			</thead>
			<tbody>
				<% for(Order order:list){ %>
				<tr>
					<td><%= order.getId() %></td><td><%= order.getOrderDate() %>T<%= order.getOrderTime() %></td><td><%= order.getStatus()%></td>
					<td><%= order.getPaymentType()%></td><td><%= order.getShippingType()%></td>
					<td><%= order.getTotalAmount()+order.getPaymentFee() + order.getShippingFee() %></td>
					<td><a href="order.jsp?orderId=<%= order.getId()%>">檢視明細</a></td>
				</tr>
				<%} %>
			</tbody>			
		</table>
		<% }else{ %>
			<p>查無歷史訂單</p>
		<% }%>
		
		
	</article>
	<%@include file="/subviews/footer.jsp" %>
</body>
</html>