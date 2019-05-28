<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Music Store</title>
<%@ include file="../components/header.jsp"%>
<link rel="stylesheet" href="css/mainStyles.css">
<!-- main -->
<link rel="stylesheet" href="css/homePage.css" type="text/css"
	media="all" />
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/slider.js"></script>

<%
	if (session.getAttribute("isAdmin") != null && (int) session.getAttribute("isAdmin") == 1) {
%>
<link rel="stylesheet" href="admin/css/adminHomePage.css">
<%
	}
%>

<style>
.topnav .login {
	display: none;
}

.topnav .register {
	display: none;
}

.topnav.responsive .logout {
	display: block;
}
</style>
</head>
<body>
	<div id="mainContainer">
		<!-- main content -->
		<div class="wrap">
			<div class="main-body">

				<div class="slide">
					<div id="slider">
						<a href="#" target="_blank"> <img
							src="images/home/slide-1.jpg" alt="Mini Ninjas" />
						</a> <a href="#" target="_blank"> <img
							src="images/home/slide-2.jpg" alt="Price of Persia" />
						</a> <a href="#" target="_blank"> <img
							src="images/home/slide-3.jpg" alt="Price of Persia" />
						</a>
					</div>

				</div>
				<div class="content">
					<div class="sub-cont">
						<div class="gallery" style="margin-left: 17%;">
							<ul>
								<li><a href="cart.jsp?id=1"> <img
										src="images/home/album-1.jpg" alt="" width="190" />
										<h3>Album Name</h3>
										<p>$-49.00</p>
										<button>Add to cart</button>
								</a></li>
								<li><a href="cart.jsp?id=2"> <img
										src="images/home/album-2.jpg" alt="" width="190" />
										<h3>Album Name</h3>
										<p>$-49.00</p>
										<button>Add to cart</button>
								</a></li>
								<li><a href="cart.jsp?id=3"> <img
										src="images/home/album-3.jpg" alt="" width="190" />
										<h3>Album Name</h3>
										<p>$-49.00</p>
										<button>Add to cart</button>
								</a></li>
								<li><a href="cart.jsp?id=4"> <img
										src="images/home/album-4.jpg" alt="" width="190" />
										<h3>Album Name</h3>
										<p>$-49.00</p>
										<button>Add to cart</button>
								</a></li>
								<li><a href="cart.jsp?id=5"> <img
										src="images/home/album-5.jpg" alt="" width="190" />
										<h3>Album Name</h3>
										<p>$-49.00</p>
										<button>Add to cart</button>
								</a></li>
								<li><a href="cart.jsp?id=6"> <img
										src="images/home/album-6.jpg" alt="" width="190" />
										<h3>Album Name</h3>
										<p>$-49.00</p>
										<button>Add to cart</button>
								</a></li>
							</ul>
							<div class="clear"></div>
						</div>

					</div>
				</div>

			</div>
		</div>

		<script>
			$('#slider').coinslider();
		</script>


		<!-- main content end -->
	</div>
	<div>
		<%@ include file="components/footer.jsp"%>
	</div>
</body>
</html>