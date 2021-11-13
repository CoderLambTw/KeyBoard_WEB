
<%@page import="uuu.cmr.entity.Product"%>
<%@page import="uuu.cmr.entity.OrderItem"%>
<%@page import="uuu.cmr.entity.Order"%>
<%@page import="uuu.cmr.service.OrderService"%>
<%@page import="uuu.cmr.entity.Customer"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>檢視訂單</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/style/vgb.css">
<style type="text/css">

#orderTable {
	margin: auto;
}
#orderTable caption{
	text-align: center;
	font-size: 2em;
}
#orderTable td, #orderTable th {
	border: 1px solid #cbc;
	padding: 8px;
}

#orderTable tr:hover {
	background-color: #ddd;
}

#orderTable th {
	padding-top: 12px;
	padding-bottom: 12px;
	background-color: darkgray;
	color: white;
}

#cartTable {
	width: 85%;
	margin: auto;
	border-collapse: collapse;
}

#orderItemTable td, #cartTable th {
	border: 1px solid #cbc;
	padding: 2px 5px;
}

#orderItemTable tr:hover {
	background-color: #ddd;
}

#orderItemTable th {
	padding-top: 3px;
	padding-bottom: 3px;
	background-color: darkgray;
	color: white;
}

#orderItemTable {
	width: 85%;
	margin: auto;
	border-collapse: collapse;
}

.orderItemImage {
	width: 48px;
	vertical-align: middle;
}
</style>
</head>
<body>
	<jsp:include page="/subviews/header.jsp">
		<jsp:param value="檢視訂單" name="subtitle" />
	</jsp:include>
	<%
		String orderId = request.getParameter("orderId");
		Customer member = (Customer) session.getAttribute("member");
		OrderService service = new OrderService();

		Order order = service.getOrderById(orderId);
	%>
	<article style="min-height: 70vh">
		<%--= order --%>
		<%
			if (order != null && member.equals(order.getMember())) {
		%>
		<div>
			<table id="orderTable">
				<caption>訂單明細</caption>
				<thead>
					<tr>
						<th>訂單編號</th>
						<th>訂購日期時間</th>
						<th>處理狀態</th>
						<th>付款方式</th>
						<th>運送方式</th>
						<th>收件人資料</th>
						<th>收件地址</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><%=order.getId()%></td>
						<td><%=order.getOrderDate()%> <%=order.getOrderTime()%></td>
						<td><%=order.getStatus()%></td>
						<td><%=order.getPaymentType().getDescription()%> <%=order.getPaymentFee() > 0 ? "," + order.getPaymentFee() + "元" : ""%>
							<%=order.getPaymentNote() != null ? " " + order.getPaymentNote() : ""%></td>
						<td><%=order.getShippingType().getDescription()%> <%=order.getShippingFee() > 0 ? ", 運費" + order.getShippingFee() + "元" : ""%>
							<%=order.getShippingNote() != null ? " " + order.getShippingNote() : ""%></td>
						<td><%=order.getRecipientName()%>, <%=order.getRecipientEmail()%>,
							<%=order.getRecipientPhone()%></td>
						<td><%=order.getShippingAddress()%></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div>
			<hr>
			<%
				if (order.getOrderItemsList() != null) {
			%>
			<table id="orderItemTable">
				<tbody>
					<%
						for (OrderItem item : order.getOrderItemsList()) {
									Product p = item.getProduct();
					%>
					<tr>
						<td><%=item.getProduct().getId()%></td>
						<td><img class="orderItemImage" src="<%=p.getPhotoUrl()%>">
							<%=p.getName()%></td>
						<td><%=item.getPrice()%></td>
						<td><%=item.getQuantity()%></td>
					</tr>
					<% } %>
				</tbody>

			</table>
			<%
				}
			%>
		</div>

		<% }else{ %>
		<p>查無此訂單</p>
		<% } %>
	</article>
	<%@include file="/subviews/footer.jsp"%>
</body>
</html>