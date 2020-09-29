<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />

<style>
#isertset {
	display: inline-block;
	text-align: left;
	padding: 8px;
	height: 100%;
	width: 80%;
	align-items: center;
	justify-content: center;
	margin: 30px 0px;
	text-align: left;
	border-radius: 10px;
}

#isertset section {
	text-align: center;
	display: inline-block;
	width: 100%;
}

#insertlegend {
	margin-left: 30px;
}

.insertinput {
	display: inline-block;
	width: 70%;
	height: 40px;
	padding: 10px;
	border: 2px solid blue;
}
</style>

<form>
	<fieldset id="isertset">
		<legend id="insertlegend">새롭고 신선한 상품정보!!!</legend>
		<section>
			<div class="insertinput">
				<label>상품명</label> <input name="io_pname" />
			</div>
			<div class="insertinput">
				<label>단가</label> <input name="io_price" />
			</div>
			<div class="insertinput">
				<label>수량</label> <input name="io_quan" />
			</div>
		</section>
	</fieldset>
</form>
