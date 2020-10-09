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
	display: inline-block;
	text-align: center;
	align-items: center;
	justify-content: center;
	width: 70%;
	margin: 50px 0px;
}

#io_list {
	border-collapse: collapse;
	text-align: center;
	width: 100%;
	border: 3px dashed olive;
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
	display: inline-block;
	width: 70%;
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
						<td class="in_price">${items.io_total}</td>
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
						<td class="out_price">${items.io_total}</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</c:forEach>

		<tr>
			<td colspan="7">합계</td>
			<td id="in_total"></td>
			<td id="out_total"></td>
		</tr>
	</table>

</div>


<div id="new_write">
	<a href="${rootPath}/write">새로 작성</a>
</div>

<script>
	document.addEventListener("DOMContentLoaded", function() {
		let io_in = document.querySelectorAll(".in_price");
		let io_out = document.querySelectorAll(".out_price");
		let in_total = 0;
		let out_total = 0;

		io_in.forEach(function(item_data) {
			in_total += Number(item_data.innerHTML);
		});

		io_out.forEach(function(item_data) {
			out_total += Number(item_data.innerHTML);
		});

		document.querySelector("#in_total").innerHTML = in_total;
		document.querySelector("#out_total").innerHTML = out_total;

		let io_list = document.querySelectorAll(".io_item");
		io_list.forEach(function(item_data) {
			item_data.addEventListener("click", function() {
				let id = item_data.getAttribute("data-id");
				document.location.href = `${rootPath}/detail/?id=` + id;
			});
		});
	});
</script>