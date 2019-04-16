<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/mainStyles.css">
<script src="${pageContext.request.contextPath}/js/header.js"></script>
</head>
<body>

	<div class="topnav" id="myTopnav">
		<a href="../homePage.jsp" class="topnav_left">
			<table>
				<tr>
					<td><img src="../images/icons/ico.jpg"
						style="width: 50px; height: 50px;"></td>
					<td>MuZy</td>
				</tr>
			</table>
		</a> <a href="#news" id="tab">News</a> <a href="#contact" id="tab">Contact</a>
		<a href="#about" id="tab">About</a><a href="../components/logout.jsp"
			class="logout" id="tab">logout</a><a href="javascript:void(0);"
			style="font-size: 50px;" class="icon" onclick="myFunction()">&#9776;</a>
	</div>

</body>
</html>