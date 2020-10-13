<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" 
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@800&display=swap"
	rel="stylesheet">
 <link rel="stylesheet" href="../../pan/cssFolder/index.css">
<title>User InfoUpdate</title>
<style>
</style>
</head>
<body>

<c:set var='functionCheck' value='memberInfoUpdate' scope='session' />

	<div id="container">
	
<!-- 	共同頁首 -->
	<jsp:include page='/fragment/topbar.jsp' />
	
<!-- 	主要內容 -->
		<div id="content">
			<form id="InfoUpdate" action="./MemberInfoUpdateServlet" method="POST">
	
				<fieldset>

					<h2>${listMbInfo.name}的個人資料</h2>
					
					
					<c:forEach var="info" items="${listMbInfo}" />
		
						<label>姓名：</label>
						value="${info.name}"
						<br/>
		
						<label>地址：</label>
						<span><c:out value="${info.address}" /></span>
						<br/>
		
						<label>Email：</label>
						<span><c:out value="${info.email}" /></span>							
						<br>
		
						<label>電話：</label>
						<span><c:out value="${info.tel}" /></span>
						<br/>
		
						<label>登山經驗：</label>
						<span><c:out value="${info.exp}" /></span>
						<br/>
		
						<label>會員身分組：</label>
						<span><c:out value="${info.groupId}" /></span>
						<br/>
		
						<label>購物車購買總額：</label>
						<span><c:out value="${info.totalAmount}" /></span>
						<br/>
							
						<label>未付款總額：</label>
						<span><c:out value="${info.Unpaid_amount}" /></span>
						<br/>
				</fieldset>

				<div>
					<input type="submit" id="submit1" name="submit1" value="修改資料">
					<input type="submit" id="submit2" name="submit2" value="會員登出">
				</div>
			
			</form>
		
		
		</div>
	
	
	
	
	
	
	
	
	</div>



</body>
</html>