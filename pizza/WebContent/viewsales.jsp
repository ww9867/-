<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<jsp:include page="header.jsp"/>
	<jsp:include page="nav.jsp"/>

	<h3>통합 매출 현황 조회</h3>
	<table id="table_set">
		<tr>
			<th>매출전표번호</th>
			<th>지점</th>
			<th>판매일자</th>
			<th>피자코드</th>
			<th>피자명</th>
			<th>판매수량</th>
			<th>매출액</th>
		</tr>
		
		<tr>
			<td>100001</td>
			<td>S001-강남점</td>
			<td>2018-12-02</td>
			<td>AA01</td>
			<td>고르골졸라피자</td>
			<td>50</td>
			<td id="take">300,000</td>
		</tr>
		
		<tr>
			<td>100001</td>
			<td>S001-강남점</td>
			<td>2018-12-02</td>
			<td>AA01</td>
			<td>고르골졸라피자</td>
			<td>50</td>
			<td id="take">300,000</td>
		</tr>
		
		
	</table>

	<jsp:include page="footer.jsp"/>