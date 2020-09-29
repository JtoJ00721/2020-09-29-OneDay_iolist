<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>농농이네 가게</title>
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
}

footer {
	height: 18%;
	text-align: center;
	background-color: black;
}

#footer-info {
	font-size: 30px;
	color: whitesmoke;
}

#footer-easter {
	margin-top: 30px;
	font-size: 15px;
	color: black;
}
</style>

</head>
<body>

	<div id="header_easter">
		<a href="https://www.youtube.com/watch?v=TngViNw2pOo">날 찾아낼 줄이야...</a>
	</div>
	<header>
		<h2>농농이네 가게</h2>
		<p>쩔쩔이가 만든 매입매출 관리 2020 V1</p>
	</header>
	<section id="main_contents">
		<c:choose>
			<c:when test="${BODY == 'IO_WRITE' }">
				<%@ include file="/WEB-INF/views/bodycontents/io_write.jsp"%>
			</c:when>
			<c:when test="${BODY == 'IO_DETAIL'}">
				<%@ include file="/WEB-INF/views/bodycontents/io_write.jsp"%>
			</c:when>
			<c:otherwise>
				<%@ include file="/WEB-INF/views/bodycontents/io_list.jsp"%>
			</c:otherwise>
		</c:choose>
	</section>

	<footer>
		<p id="footer-info">
			쩔쩔이가 만든 사이트<br />네이버 검색창에 JtoJ라고 쳐보세요!<br />
		</p>
		<p id="footer-easter">
			에엫따..! 이보시오... 이보시오! 쩔쩔이 양반!!!<br />아무것도 안나오니 어찌하면 좋겠소.....
		</p>
	</footer>

</body>
</html>