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
<<<<<<< HEAD
	border: 2px solid darkolivegreen;
=======
	border: 5px solid gray;
>>>>>>> 5be0764b9239b9bf86d48a22020b88bc0ae22d58
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
<<<<<<< HEAD
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
=======
	background-color: darkblue;
	border: 3px solid transparent;
	border-radius: 5px;
	color: white;
	transition: all 1s;
	border-radius: 5px;
}

#detail-menu a:nth-child(1) {
	background-color: brown;
}

#detail-menu a:nth-child(3) {
	background-color: orange;
}

#detail-menu a:hover {
	background-color: #ddd;
	color: black;
	font-weight: bold;
	border: 3px dashed gray;
>>>>>>> 5be0764b9239b9bf86d48a22020b88bc0ae22d58
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
<<<<<<< HEAD
		href="javascript:void(0)" id="list-delete" data-id="${IOVO.seq}">삭제</a>
=======
		href="javascript:void(0)" id="pro-delete" data-id="${IOVO.seq}">삭제</a>
>>>>>>> 5be0764b9239b9bf86d48a22020b88bc0ae22d58
</section>

<script>
	document.addEventListener("DOMContentLoaded", function() {
<<<<<<< HEAD
		document.querySelector("#list-delete").addEventListener(
				"click",
				function() {
					let id = document.querySelector("#list-delete")
=======
		document.querySelector("#pro-delete").addEventListener(
				"click",
				function() {
					let id = document.querySelector("#pro-delete")
>>>>>>> 5be0764b9239b9bf86d48a22020b88bc0ae22d58
							.getAttribute("data-id");
					if (confirm("정말 삭제? ><")) {
						document.location
								.replace(`${rootPath}/delete?id=` + id);
					}
				});
	});
</script>