<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<%@page import="java.util.Date"%>
<%@page import="DBPKG.dbconn"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	
	Date date = new Date();
	
		ResultSet rs = null;
		String qurey = null;

		Connection conn = dbconn.getConnection();
		String code = request.getParameter("code");
		qurey = "select a.code, a.pname, a.cost, a.pnum, a.jnum, a.sale, b.gname from product a, groupcode b where code = '"+code+"' and a.gcode = b.gcode order by a.code desc";

		rs = dbconn.exec_sql(qurey);

		System.out.print("sql :" + rs);
	%>
	<form action="">
		<h1>제품조회</h1>
		<table>
			<tr>
				<th>제품코드</th>
				<th>제품이름</th>
				<th>제품원가</th>
				<th>목표수량</th>
				<th>재고수량</th>
				<th>출고가</th>
				<th>그룹이름</th>
			</tr>
			<%
				while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getString(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				<td><%=rs.getString(5)%></td>
				<td><%=rs.getString(6)%></td>
				<td><%=rs.getString(7)%></td>
			</tr>

			<%
				}
			%>
		</table>
	</form>
</body>
</html>