<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Logout</title>
</head>
<body>
<!-- 	將使用者名稱取出 -->
	<c:set var="memberId" value="${MemberBean.memberId}" />
	
<!-- 	移除放在session物件內的物件屬性 -->
	<c:remove var="LoginOK" scope="session" />
	
<!-- 	session.removeAttribute("LoginOK") -->
	<c:remove var="ShoppingCart" scope="session" />
	
<!-- 	下列敘述設定變數funcName的值為OUT，top.jsp會用到此變數 -->
	<c:set var="funcName" value="OUT" scope="session" />
	
<!-- 	引入共同頁首 -->
	<jsp:include page="/fragment/topbar.jsp" />
	
<!-- 下列六行敘述設定登出後要顯示登出後訊息 -->
	<c:set var="logoutMessage" scope="request" />
	<font color="blue">
		${name}，您已登出，感謝您的使用。<br/>
	</font>

	<jsp:useBean id="logoutBean" class="member.login.model.LogoutBean" scope="page" />
	<c:set target="${logoutBean}" property="session" value="${pageContext.session}" />

	${logoutBean.logout}

	<c:redirect url="/fragment/frame.jsp" />
</body>
</html>