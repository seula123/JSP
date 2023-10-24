<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>
	
</style>
</head>
<body>
	<!-- template.jsp > addok.jsp > editok.jsp -->
	
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>
	
	<script>
		
		<c:if test="${result == 1}">
			location.href = '/memo/view.do?seq=${seq}'; //view는 번호를 꼭 줘야함
		</c:if>

		<c:if test="${result == 0}">
			alert('실패');
			//location.href = '/memo/add.do'; > 페이지를 새로 요청
			history.back(); //페이지 새로요청(X) > 이전 상태로 되돌리기
		</c:if>
			
		<c:if test="${result == 2}">
		alert('암호틀림');
		history.back(); //페이지 새로요청(X) > 이전 상태로 되돌리기
	</c:if>
		
		
	</script>
</body>
</html>