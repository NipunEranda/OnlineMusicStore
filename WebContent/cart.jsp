<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/mainStyles.css">
<link rel="stylesheet" href="css/cart.css">
<meta charset="UTF-8">
<title>Cart</title>
<style>
.topnav .register {
	display: none;
}
</style>
</head>
<body>
<%@ include file="components/header.jsp"%>
	<div id="mainContainer">
	<div id="cart-page">
	<form action="CartController" method="Post" name="cart">
	
		<c:choose> 
		<c:when test="${x == 1}">
						<h4 style="margin-top: 40px;">My shopping bag(<c:out value="${x}"/> item)</h4>
		</c:when>
		<c:when test="${x > 1}">
						<h4 style="margin-top: 40px;">My shopping bag(<c:out value="${x}"/> items)</h4>
		</c:when>
		<c:otherwise >
				<h4 style="margin-top: 40px;">Your Shopping Bag is Empty</h4>
		</c:otherwise>
	
	</c:choose>
	<table>
		<tr>
			<th>Item ID</th>
			<th>Item Name</th>
			<th>Item Type</th>
			<th>Price</th>
			<th>Remove Item</th>
		</tr>
	</table>
	
		<c:set var="total" value="0"></c:set>
		<c:forEach items="${cartlist }" var="i">
			<c:forEach items="${list }" var="Product">
				<c:if test="${i == Product.getitemId() }">
				
				<c:set var="total" value="${total + Product.getPrice() }"></c:set>
				
			<table style="table-layout: fixed;width: 100%;">
				<tr>
					<td style="width: 100px;"><c:out value="Item 1"/></td>
					<td style="width: 50px;"><c:out value="$Album Name"/></td>
					<td style="width: 100px;"><c:out value="Music"/></td>
					<td style="width: 100px;"><c:out value="$49"/></td>
					<td style="width: 100px;"><a href="CartController=remove&id=<c:out value="${Product.getId()}"/>"><span class="btn btn-danger">X</span></a></td>
				</tr>
			</table>
				</c:if>
			</c:forEach>
		</c:forEach>
		 <div class="btnSet">
			<br/><br/>	
			<div class="checkOutButton"onclick="if(confirm('Successfully checked out')){document.forms['cart'].submit()}">
			Proceed to checkout
		</div>
	</div>	
		<br>
		</form>
	</div>	
	</div>
<div>
	<%@ include file="components/footer.jsp"%>
</div> 	
</body>
</html>