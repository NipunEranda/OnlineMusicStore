
<%
	String currentURI = request.getRequestURI();
	if (session.getAttribute("name") == null && (currentURI.equalsIgnoreCase("/OnlineMusicStore/login.jsp"))) {

	}else if (session.getAttribute("name") == null && (currentURI.equalsIgnoreCase("/OnlineMusicStore/register.jsp"))) {

	}else if (session.getAttribute("name") == null
			&& currentURI.equalsIgnoreCase("/OnlineMusicStore/index.jsp")) {

	}else if (session.getAttribute("name") == null
			&& currentURI.equalsIgnoreCase("/OnlineMusicStore/admin/adminHome.jsp")) {
		response.sendRedirect("../index.jsp");
	}else if (session.getAttribute("name") == null) {
		response.sendRedirect("/OnlineMusicStore/index.jsp");
	}else if (session.getAttribute("name") == "guest") {

	}else if(currentURI.equalsIgnoreCase("/OnlineMusicStore/index.jsp") && !(session.getAttribute("name") == null) && (int)session.getAttribute("userType") == 0 ){
		response.sendRedirect("homePage.jsp");
	}else if(currentURI.equalsIgnoreCase("/OnlineMusicStore/index.jsp") && !(session.getAttribute("name") == null) && (int)session.getAttribute("userType") == 1){
		response.sendRedirect("admin/adminHome.jsp");
	}else if(currentURI.equalsIgnoreCase("/OnlineMusicStore/cart.jsp") && session.getAttribute("name") == null){
		response.sendRedirect("index.jsp");
	}else if(currentURI.equalsIgnoreCase("/OnlineMusicStore/userProfile.jsp") && session.getAttribute("name") == null){
		response.sendRedirect("index.jsp");
	}else if(currentURI.equalsIgnoreCase("/OnlineMusicStore/payments.jsp") && session.getAttribute("name") == null){
		response.sendRedirect("index.jsp");
	}else if(currentURI.equalsIgnoreCase("/OnlineMusicStore/payConfirm.jsp") && session.getAttribute("name") == null){
		response.sendRedirect("index.jsp");
	}else if(currentURI.equalsIgnoreCase("/OnlineMusicStore/admin/components/albumConfig.jsp") && (session.getAttribute("name") == null || session.getAttribute("name") != null) && (int)session.getAttribute("userType") == 0){
		response.sendRedirect("../../index.jsp");
	}else if(currentURI.equalsIgnoreCase("/OnlineMusicStore/admin/components/artistConfig.jsp") && (session.getAttribute("name") == null || session.getAttribute("name") != null) && (int)session.getAttribute("userType") == 0){
		response.sendRedirect("../../index.jsp");
	}else if(currentURI.equalsIgnoreCase("/OnlineMusicStore/admin/components/genreConfig.jsp") && (session.getAttribute("name") == null || session.getAttribute("name") != null) && (int)session.getAttribute("userType") == 0){
		response.sendRedirect("../../index.jsp");
	}else if(currentURI.equalsIgnoreCase("/OnlineMusicStore/admin/components/songConfig.jsp") && (session.getAttribute("name") == null || session.getAttribute("name") != null) && (int)session.getAttribute("userType") == 0){
		response.sendRedirect("../../index.jsp");
	}else if(currentURI.equalsIgnoreCase("/OnlineMusicStore/admin/components/statisticsConfig.jsp") && (session.getAttribute("name") == null || session.getAttribute("name") != null) && (int)session.getAttribute("userType") == 0){
		response.sendRedirect("../../index.jsp");
	}else if(currentURI.equalsIgnoreCase("/OnlineMusicStore/admin/components/trackDetailsConfig.jsp") && (session.getAttribute("name") == null || session.getAttribute("name") != null) && (int)session.getAttribute("userType") == 0){
		response.sendRedirect("../../index.jsp");
	}else if(currentURI.equalsIgnoreCase("/OnlineMusicStore/admin/components/userConfig.jsp") && (session.getAttribute("name") == null || session.getAttribute("name") != null) && (int)session.getAttribute("userType") == 0){
		response.sendRedirect("../../index.jsp");
	}else if(currentURI.equalsIgnoreCase("/OnlineMusicStore/admin/components/userProfileConfig.jsp") && (session.getAttribute("name") == null || session.getAttribute("name") != null) && (int)session.getAttribute("userType") == 0){
		response.sendRedirect("../../index.jsp");
	}

%>