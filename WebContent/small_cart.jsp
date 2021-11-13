<%@page import="uuu.cmr.entity.ShoppingCart"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=ISO-8859-1"%>
<%
	ShoppingCart cart = (ShoppingCart)session.getAttribute("cart");
%>
<%= cart!=null && cart.getTotalQuantity()>0?cart.getTotalQuantity():""%>