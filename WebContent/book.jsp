<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/dbconn.jsp" %>
<%
table = "book";
query = "select * from "+table;
pstmt = conn.prepareStatement(query);
res = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>library</title>
</head>
<style>
*{margin:0; padding:0;}
#wrap{height:1200px; width:100%; }
a{text-decoration:none;}
#header{height:100px;width:100%; background: #686868;}
h1{text-align: center;  line-height: 100px; color:#ffffff;}
nav{height:50px; width:100%; background:#4d4d4d; margin:0 auto;}
ul{width: 875px;margin: 0 auto;}
ul>li{float:left; list-style:none; width:125px; height:50px;line-height:50px; text-align:center;}
ul>li>a{color:#ffffff;}
.search{width:100%;height:1200px; padding-top:30px;  margin: 0 auto;}
.search_serve{ width:929px; height:120px; margin:0 auto; text-align:center;}
.book_search{width:800px;  height:50px; font-size:30px; float:left; border: solid 2px #4d4d4d;}
.submit_search{float:left;width:115px;  height:54px; margin-left:10px; background-color:#4d4d4d; color:#ffffff ;font-size:40px; text-align:center; line-height:40px; border:0px;}
.popularity{width:100%;height:50px; margin:0 auto;background:#ffffff;}
.popularity>ul{width:750px; margin:0 auto;}
.popularity>ul>li>a{color:#000000;}
.search .popularity .main_menu .popularity {font-weight:bold;}
.search_2 {width:100%; height:1200px;margin:0 auto;}
h2{font-size:40px; padding-bottom:10px;}
.book_result{border-bottom:solid 3px #686868; margin-bottom:20px;}
.search_2 ul>li>a{color:black; float:left;}
.search_2 ul>li{clear: both; height:24px; line-height:30px; }
.contents{border:solid 2px #e8e8e8;height:120px; width:800px; margin:0 auto; padding:30px; margin-top:10px; margin-bottom:15px;}
.book_result_contents{ float:left;}
.book_contents{float:left; width:600px; height:120px; padding-left:15px;}
.selection{float:right; height:120px; text-align:center; color : #ffffff; background-color:#4d4d4d; border:0px;}
.between{marign:12px;}
</style>
<body>
<div id="wrap">
	<header id="header">
		<h1>강서 도서관</h1>
	</header>
	<nav>
		<ul>
			<li class="main_menu"><a href="#">통합검색</a></li>
			<li class="main_menu"><a href="#">전자도서관</a></li>
			<li class="main_menu"><a href="#">이용안내</a></li>
			<li class="main_menu"><a href="#">독서,문화 교육</a></li>
			<li class="main_menu"><a href="#">열린공간</a></li>
			<li class="main_menu"><a href="#">도서관 소개</a></li>
			<li class="main_menu"><a href="#">나만의 도서관</a></li>
		</ul>
	</nav>
	<div class="search">
		<div class="search_serve">
			<input type="text" name="book_search" class="book_search" placeholder="도서 또는 자료를 입력하세요"/>
			<input type="submit"class="submit_search" value="검색"/>
		<div class="popularity">
			<ul>
				<li class="main_menu"><a href="#" class="popularity">인기검색어</a></li>
				<li class="main_menu"><a href="#">해리포터</a></li>
				<li class="main_menu"><a href="#">삼국지</a></li>
				<li class="main_menu"><a href="#">이호수</a></li>
				<li class="main_menu"><a href="#">박지영</a></li>
				<li class="main_menu"><a href="#">심상우</a></li>
			</ul>
		</div>
		</div>
	<div class="search_2">
		<div class="book_result">
			<h2>검색 결과</h2>
		</div>
			<%while(res.next()){ %>
		<div class="between">
			<div class="contents">
				<div class="book_result_contents">
					<img src="img/book_img.jpg" alt="책이미지" class="book_img" />
				</div>
			
				<ul class="book_contents">
					<li><a href="#"><%=res.getString("title")%></a></li>
					<li><a href="#"><%=res.getString("id") %></a></li>
					<li><a href="#"><%=res.getString("year") %></a></li>
					<li><a href="#"><%=res.getString("booknum") %></a></li>
					<li><a href="#"><%=res.getString("kinds") %></a></li>
				</ul>
					<input type="submit"class="selection" value="선택"/>	
					
			</div>
		</div>
		<%} %>	
	</div>
		
	</div>
</div>
</body>
</html>