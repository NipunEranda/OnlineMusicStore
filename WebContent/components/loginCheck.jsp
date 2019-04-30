
<%
	String currentURI = request.getRequestURI();
	if (session.getAttribute("name") == null && (currentURI.equalsIgnoreCase("/OnlineMusicStore/login.jsp"))) {

	} else if (currentURI.equalsIgnoreCase("/OnlineMusicStore/register.jsp")) {

	} else if (session.getAttribute("name") == null
			&& currentURI.equalsIgnoreCase("/OnlineMusicStore/index.jsp")) {

	} else if (session.getAttribute("name") == null
			&& currentURI.equalsIgnoreCase("/OnlineMusicStore/admin/adminHome.jsp")) {
		response.sendRedirect("../index.jsp");
	} else if (session.getAttribute("name") == null) {
		response.sendRedirect("/OnlineMusicStore/index.jsp");
	} else if (session.getAttribute("name") == "guest") {

	}else if(currentURI.equalsIgnoreCase("/OnlineMusicStore/index.jsp") && !(session.getAttribute("name") == null) && (int)session.getAttribute("isAdmin") == 0){
		response.sendRedirect("homePage.jsp");
	}
%>