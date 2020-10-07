<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>농농이네 가계부</title>
<style>
* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

html, body {
	height: 100%;
	width: 100%;
}


#main_contents {
	display: block;
	height: 100%;
<<<<<<< HEAD
	text-align: center;
	align-items: center;
=======
>>>>>>> 5be0764b9239b9bf86d48a22020b88bc0ae22d58
}
</style>

</head>
<body>

	<%@ include file="/WEB-INF/views/include/header.jspf"%>

	<section id="main_contents">
		<c:choose>
			<c:when test="${BODY == 'IO_WRITE' }">
				<%@ include file="/WEB-INF/views/bodycontents/io_write.jsp"%>
			</c:when>
			<c:when test="${BODY == 'IO_DETAIL'}">
				<%@ include file="/WEB-INF/views/bodycontents/io_detail.jsp"%>
			</c:when>
			<c:when test="${BODY == 'IO_LIST'}">
				<%@ include file="/WEB-INF/views/bodycontents/io_list.jsp"%>
			</c:when>
		</c:choose>
	</section>

	<%@ include file="/WEB-INF/views/include/footer.jspf"%>

</body>
</html>