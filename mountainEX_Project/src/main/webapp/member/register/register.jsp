<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta charset="UTF-8">
<title>User Register</title>
<style>

</style>

<script type="text/javascript">
    function setFocusToUserId(){
        document.forms[0].mid.focus();
    }
</script>

</head>
<body onload="setFocusToUserId()">
    <c:set var="funcName" value="REG" scope="session" />
        <jsp:include page="/fragment/topbar.jsp" />

    <div>
        <form method="POST" action="./RegisterServletMP">
			<label>帳號：</label>
			<input type="text" required="required" name="memberId" id="memberId" size="20" class="fieldWidth" placeholder="請輸入帳號" autocomplete="off" onblur="checkMbID()">
			<span id="mbIdsp"></span>
			<br/>
		
			<label>密碼：</label>
			<input type="password" required="required" name="password" id="password" size="20" class="fieldWidth" placeholder="請輸入密碼" onblur="checkPwd()">
			<span id="pdsp"></span>
			<br/>
		
			<label>密碼確認：</label>
			<input type="password" required="required" name="pwdCheck" id="pwdCheck" size="20" class="fieldWidth" placeholder="請再次輸入密碼" onblur="doublePwd()">
			<span id="pwd2sp"></span>
			<br/>
		
			<label>姓名：</label>
			<input type="text" required="required" name="name" id="name" value="${param.name}" size="20" class="fieldWidth" placeholder="請輸入姓名" onblur="checkName()">
			<span id="nmsp"></span>
			<br/>
			
			<label>地址：</label>
			<input type="text" required="required" name="address" id="address" placeholder="請輸入收件地址" size="30">
			<br/>
		
			<label>電話：</label>
			<input type="text" required="required" name="tel" id="tel" size="20" placeholder="請輸入聯絡電話" class="fieldWidth">
			<span id="tlsp"></span>
			<br/>
		
			<label>Email：</label>
			<input type="email" required="required" name="email" id="email" placeholder="請輸入電子信箱" size="20" class="fieldWidth" >
			<span id="emailsp"></span>
			<br/>
		
			<label>登山經驗：</label>
			<input type="text" required="required" name="exp" id="exp" placeholder="請輸入登山經驗" size="20" class="fieldWidth">
			<span id="expsp"></span>
			<br/>
		
			<label>身分組選擇</label>
			<input type="radio" required="required" id="groupId" name="groupId" value="100">一般會員
			<input type="radio" required="required" id="groupId" name="groupId" value="200">登山嚮導
<!-- 			<select name="groupId"> -->
<!-- 				<option value="100">一般會員</option> -->
<!-- 				<option value="200">登山嚮導</option> -->
<!-- 			</select> -->
			<br/>
	
	        <div>
	            <input type="submit" name="submit" id="submit" value="送出">
	            <input type="reset" name="reset" id="reset" value="清除">
	        </div>
	    </form>
	</div>
	
	<script src="register.js"></script>

    
</body>
</html>