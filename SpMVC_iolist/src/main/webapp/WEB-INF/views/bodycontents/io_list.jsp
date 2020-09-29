<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<style>
table {
	border-collapse: collapse;
	border: 3px dashed yellowgreen;
	width: 80%;
	margin: 10px auto;
	margin-top: 70px;
}

th, td {
	border: 1px solid #ccc;
	padding: 8px;
	text-align: left;
}

th {
	border-bottom: 2px dotted green;
	margin: 10px;
}

/* child 속성에 연산식을 사용하는 방법  */
/* An + b 형식의 연산식을 사용한다 */
/* n : 1 ~ child 개수만큼 +1씩 증가하는 값 */
/* th와 td 값에 4번째 위치부터 이후에 동일한 특성(style)을 지정*/
th:nth-child(n+4), td:nth-child(n+4) {
	text-align: right;
}

tbody tr {
	transition: all 0.3s;
}

tbody tr:nth-child(odd) {
	background-color: rgb(100, 149, 237, 0.2);
}

tbody tr:nth-child(even) {
	background-color: #fff;
}

tbody tr:hover {
	background-color: #ddd;
	cursor: pointer;
}

article {
	width: 80%;
	margin: 5px auto;
	text-align: right;
}

article a {
	display: inline-block;
	padding: 8px 16px;
	background-color: coral;
	color: white;
	cursor: pointer;
	text-decoration: none;
	border-radius: 5px;
	transition: all 0.7s;
}

article a:hover {
	background-color: #ddd;
	color: black;
	font-weight: bolder;
	box-shadow: 10px 10px 23px 0px rgba(0, 0, 0, 0.75);
	-webkit-box-shadow: 10px 10px 23px 0px rgba(0, 0, 0, 0.75);
	-moz-box-shadow: 10px 10px 23px 0px rgba(0, 0, 0, 0.75);
}
</style>
<table>
	<thead>
		<tr>
			<th>No</th>
			<th>일자</th>
			<th>시각</th>
			<th>상품명</th>
			<th>구분</th>
			<th>단가</th>
			<th>수량</th>
			<th>매입합계</th>
			<th>판매합계</th>
		</tr>
	</thead>
	<tbody>
	</tbody>
</table>
<article>
	<a href="${rootPath}/write/">상품추가</a>
</article>