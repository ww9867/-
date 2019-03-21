<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"/>
<jsp:include page="nav.jsp"/>
	<h3>지점별 매출 현황</h3>
	<table id ="table_set2">
		<tr>
			<th>지점코드</th>
			<th>지점 명</th>
			<th>총매출액</th>
		</tr>
		<tr>
			<td>S001</td>
			<td>강남점</td>
			<td id="take">1,010,000</td>
		</tr>
	</table>
<jsp:include page="footer.jsp"/>