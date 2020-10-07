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

#list_table_div {
	text-align: center;
	align-items: center;
	justify-content: center;
	width: 70%;
	margin: 30px;
	padding: 20px;
}

#io_list {
	border-collapse: collapse;
	text-align: center;
	width: 100%;
	border: 2px dashed olive;
}

#io_list th, #io_list td {
	border: 1px solid #aaaa;
	padding: 8px;
	text-align: center;
	vertical-align: top;
}

#io_list th {
	background-color: honeydew;
	color: black;
}

#io_list tr {
	transition: all 0.5s;
}

#io_list tr:nth-child(n+2):nth-last-child(n+2) {
	cursor: pointer;
}

#io_list tr:nth-child(even) {
	background-color: aliceblue;
}

#io_list tr:nth-child(odd) {
	background-color: white;
}

#io_list tr:nth-last-child(1) {
	background-color: coral;
	color: wheat;
	font-weight: bold;
}

#io_list tr:nth-child(n+2):nth-last-child(n+2):hover {
	background-color: #ddd;
}

#new_write {
	width: 90%;
	padding: 10px;
	text-align: right;
}

#new_write a {
	border: none;
	border-radius: 5px;
	outline: none;
	background-color: yellowgreen;
	color: brown;
	font-size: 15px;
	padding: 10px;
	cursor: pointer;
	text-decoration: none;
	transition: all 0.5s;
}

#new_write a:hover {
	box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.5);
	background-color: cornflowerblue;
	font-weight: bold;
}
</style>

<div id="list_table_div">

	<table id="io_list">
		<tr>
			<th>No</th>
			<th>일자</th>
			<th>시각</th>
			<th>상품명</th>
			<th>매입단가</th>
			<th>판매단가</th>
			<th>수량</th>
			<th>매입합계</th>
			<th>판매합계</th>
		</tr>
		<c:forEach items="${ITEMS}" var="items" varStatus="i">
			<c:choose>
				<c:when test="${items.io_input=='1'}">
					<tr class=io_item data-id="${items.seq}">
						<td>${i.count}</td>
						<td>${items.io_date}</td>
						<td>${items.io_time}</td>
						<td>${items.io_pname}</td>
						<td>${items.io_price}</td>
						<td></td>
						<td>${items.io_quan}</td>
						<td class="i_price">${items.io_total}</td>
						<td></td>
					</tr>
				</c:when>
				<c:otherwise>
					<tr class=io_item data-id="${items.seq}">
						<td>${i.count}</td>
						<td>${items.io_date}</td>
						<td>${items.io_time}</td>
						<td>${items.io_pname}</td>
						<td></td>
						<td>${items.io_price}</td>
						<td>${items.io_quan}</td>
						<td></td>
						<td class="o_price">${items.io_total}</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</c:forEach>

		<tr>
			<td colspan="7">합계</td>
			<td id="i_total"></td>
			<td id="o_total"></td>
		</tr>
	</table>

</div>


<div id="new_write">
	<a href="${rootPath}/write">새로 작성</a>
</div>

<script>
	document.addEventListener("DOMContentLoaded", function() {
		let i_list = document.querySelectorAll(".i_price");
		let o_list = document.querySelectorAll(".o_price");
		let i_total = 0;
		let o_total = 0;

		i_list.forEach(function(obj) {
			i_total += Number(obj.innerHTML);
		});

		o_list.forEach(function(obj) {
			o_total += Number(obj.innerHTML);
		});

		document.querySelector("#i_total").innerHTML = i_total;
		document.querySelector("#o_total").innerHTML = o_total;

		let io_list = document.querySelectorAll(".io_item");
		io_list.forEach(function(obj) {
			obj.addEventListener("click", function() {
				let id = obj.getAttribute("data-id");
				document.location.href = `${rootPath}/detail/?id=` + id;
			});
		});
	});
</script>