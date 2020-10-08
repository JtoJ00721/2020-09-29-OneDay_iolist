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

header {
	background-color: cornflowerblue;
	background-size: 100%;
	color: white;
	text-align: center;
	padding: 2rem;
	position: fixd;
}

#header_easter {
	display: inline-block;
	position: absolute;
	padding: 10px;
	background-color: cornflowerblue;
	color: cornflowerblue;
	text-decoration: none;
}

#header_easter a {
	color: inherit;
}

header h2 {
	margin: 16px;
	text-shadow: 3px 3px 3px rgba(0, 0, 0, 0.2);
}

#main_contents {
	display: block;
	height: 100%;
	text-align: center;
	align-items: center;
	justify-content: center;
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