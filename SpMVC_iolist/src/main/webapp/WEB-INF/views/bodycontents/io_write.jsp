<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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

#iteminput {
	width: 60%;
	margin: 50px auto;
}

#iteminput div {
	display: flex;
	width: 95%;
	margin: 0 auto;
}

#iteminput label {
	flex: 1;
	text-align: right;
	padding: 8px;
	margin: 5px;
}

#iteminput div.hidden {
	display: none;
}

#iteminput input, #iteminput select {
	flex: 5;
	border: 1px solid #ddd;
	margin: 5px;
	padding: 8px;
}

#iteminput fieldset {
	border: 1px solid rgb(0, 100, 200);
	border-radius: 10px;
	padding: 20px;
}

#iteminput fieldset legend {
	padding: 3px 30px;
	color: brown;
	font-size: 20px;
	font-weight: bold;
	border-radius: 50px;
	transition: all 0.7s;
	color: brown;
	font-size: 20px;
	font-weight: bold;
	border-radius: 50px;
}

#iteminput fieldset legend:hover {
	background-color: black;
	color: white;
	font-weight: bold;
}

#iteminput #title {
	width: 70%;
}

#iteminput div.btn-box {
	justify-content: flex-end;
}

#iteminput button {
	border: none;
	outline: 0;
	padding: 0.5rem 12px;
	border-radius: 5px;
}

#iteminput button#btn-save {
	background-color: black;
	color: white;
	padding: 0.5rem 25px;
	margin-left: 10px;
	transition: all 0.3s;
}

#btn-save:hover {
	box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.3);
	background-color: cornflowerblue;
	font-weight: bold;
}

#btn-list {
	background-color: gray;
	color: wheat;
	padding: 0.5rem 25px;
	margin-left: 10px;
	transition: all 0.3s;
}

#btn-list:hover {
	box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.3);
	background-color: coral;
	font-weight: bold;
}

</style>

<form:form id="iteminput" modelAttribute="IOVO">
	<fieldset>
		<legend>매입매출 기록 입력</legend>

		<div class="hidden">
			<label for="seq"></label>
			<form:input path="seq" type="hidden" />
		</div>

		<div class="hidden">
			<label for="io_date"></label>
			<form:input path="io_date" type="hidden" />
		</div>

		<div class="hidden">
			<label for="io_time"></label>
			<form:input path="io_time" type="hidden" />
		</div>

		<div>
			<label for="io_pname">상품명</label>
			<form:input path="io_pname" placeholder="상품명" />
		</div>

		<div>
			<label for="io_input">구분</label>
			<form:select path="io_input">
				<option value="1">매입</option>
				<option value="2">매출</option>
			</form:select>
		</div>

		<div>
			<label for="io_price">단가</label>
			<form:input path="io_price" placeholder="단가" />
		</div>

		<div>
			<label for="io_quan">수량</label>
			<form:input path="io_quan" placeholder="수량" />
		</div>

		<div class="btn-box">
			<button id="btn-list">리스트로</button>
			<button id="btn-save">저장</button>
		</div>
	</fieldset>
</form:form>

<script>
	document.addEventListener("DOMContentLoaded", function() {
		document.querySelector("#btn-save").addEventListener("click",
				function() {
					document.location.href("/iolist/write");
				});
	});
</script>