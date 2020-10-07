<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />

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

#detail-main {
	width: 90%;
	display: flex;
	margin: 20px auto;
	justify-content: center;
}

article {
	width: 40%;
	margin: 10px;
}

#detail_interface {
	border: 2px solid darkolivegreen;
	border-radius: 8px;
	padding: 15px;
}

#detail_interface h3, #detail_interface p {
	display: inline-block;
	padding: 8px;
	margin: 8px 4px;
	border-bottom: 2px solid #ccc;
}

#detail_interface h3 {
	width: 30%;
	color: green;
	font-weight: bold;
	text-align: center;
	border-bottom: none;
}

#detail_interface p {
	width: 60%;
}

hr {
	width: 90%;
	border: 3px solid #ddd;
	margin: 0 auto;
}

#detail-menu {
	width: 90%;
	margin: 10px;
	text-align: right;
}

#detail-menu a {
	display: inline-block;
	padding: 8px 16px;
	margin: 8px 4px;
	text-decoration: none;
	background-color:  navy;
	border: 3px solid black;
	border-radius: 5px;
	color: white;
	transition: all 0.7s;
}

#detail-menu a:first-child {
	background-color: crimson;
}

#detail-menu a:nth-child(2) {
	background-color: yellowgreen;
}

#detail-menu a:hover {
	background-color: gray;
	border: 3px dotted coral;
	font-weight: bold;
	color: black;
}
</style>

<section id="detail-main">
	<article id="detail_interface">
		<c:choose>
			<c:when test="${IOVO.io_input=='1'}">
				<h3>일자</h3>
				<p>${IOVO.io_date}</p>
				<br />
				<h3>시각</h3>
				<p>${IOVO.io_time}</p>
				<br />
				<h3>상품명</h3>
				<p>${IOVO.io_pname}</p>
				<br />
				<h3>매입단가</h3>
				<p>${IOVO.io_price}</p>
				<br />
				<h3>수량</h3>
				<p>${IOVO.io_quan}</p>
				<br />
				<h3>매입합계</h3>
				<p>${IOVO.io_total}</p>
				<br />
			</c:when>

			<c:otherwise>
				<h3>일자</h3>
				<p>${IOVO.io_date}</p>
				<br />
				<h3>시각</h3>
				<p>${IOVO.io_time}</p>
				<br />
				<h3>상품명</h3>
				<p>${IOVO.io_pname}</p>
				<br />
				<h3>매출단가</h3>
				<p>${IOVO.io_price}</p>
				<br />
				<h3>수량</h3>
				<p>${IOVO.io_quan}</p>
				<br />
				<h3>매출합계</h3>
				<p>${IOVO.io_total}</p>
				<br />
			</c:otherwise>
		</c:choose>
	</article>
</section>
<hr />

<section id="detail-menu">
	<a href="${rootPath}/">리스트로</a> <a
		href="${rootPath}/update?id=${IOVO.seq}">수정</a> <a
		href="javascript:void(0)" id="list-delete" data-id="${IOVO.seq}">삭제</a>
</section>

<script>
	document.addEventListener("DOMContentLoaded", function() {
		document.querySelector("#list-delete").addEventListener(
				"click",
				function() {
					let id = document.querySelector("#list-delete")
							.getAttribute("data-id");
					if (confirm("정말 삭제? ><")) {
						document.location
								.replace(`${rootPath}/delete?id=` + id);
					}
				});
	});
</script>