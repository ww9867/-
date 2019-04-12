<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="action.jsp">
		<h1>생산관리 등록화면</h1>
		<h3>생산관리 등록화면</h3>

		<ul>
			<li>제품코드 <input type="text" name="code" id=""></li>
			<li>제품이름 <input type="text" name="name" id=""></li>
			<li>제품원가 <input type="text" name="cost" id=""></li>
			<li>목표수량 <input type="text" name="goal" id=""></li>
			<li>재고수량 <input type="text" name="stock" id=""></li>
			<li>출고가 <input type="text" name="release" id=""></li>
			<li>그룹이름 <select>
					<option value="">선택</option>
					<option value="A">컴퓨터</option>
					<option value="B">냉장고</option>
					<option value="C">냉장소품</option>
			</select>
			</li>
		</ul>
		<ul>
			<li><input type="submit" value="등록"></li>
			<li><input type="button" value="메인화면" onClick="location.href='index.jsp'"></li>
		</ul>
	</form>
</body>
</html>