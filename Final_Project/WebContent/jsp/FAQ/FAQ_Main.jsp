<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-2.2.4.js"
	integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
	crossorigin="anonymous"></script>

</head>
<body>
	<div class="nav_left">
	<div class="nav_menu">
	<ul>
	<li onclick="location.href='service_center_main.do'">고객센터</li>
	<li onclick="location.href='faq_main.do'">FAQ</li>
	</ul>
	</div>
	<div id="faq_board">
	<table width="400" border="0" cellspacing="1" bgcolor="#999999">
		<tr bgcolor="white">
			<th width="70" scope="col" align="center">번호</th>
			<th width="171" scope="col">제목</th>
			<th width="111" scope="col">글쓴이</th>
			<th width="130" scope="col">글쓴날짜</th>
		</tr>
		
		<c:forEach items="${faqList}" var="fList">
			<tr>
				<td align="center">${fList.FAQ_NO }</td>
				<td align="center">${fList.FAQ_TITLE }</td>
				<td align="center">${fList.m_ID }</td>
				<td align="center">${fList.FAQ_CREATE_DATE }</td>
			</tr>
		</c:forEach>
	</table>
	</div>
	<div id="faq_board_index">
	<table width="400" border="0">
		<tr bgcolor="white">
			<td align="center"><c:if test="${start != 1}">
					<a href="faq_main.do?page=1">처음</a>
					<a href="faq_main.do?page=${current-1 }">이전</a>
				</c:if> <c:forEach begin="${start}" end="${end<last? end:last}" var="i">
					<c:choose>
						<c:when test="${i==current}">
							<b>[${i }]</b>
						</c:when>
						<c:otherwise>
							<a href="faq_main.do?page=${i }">${i }</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				</td>
				<td align="center">
				<c:if test="${end<last}">
					<a href="faq_main.do?page=${end+1 }">다음</a>
					<a href="faq_main.do?page=${last }">마지막</a>
				</c:if><td>
			<td align="right"><input type="button" value="글쓰기"
				onclick="location.href='faq_writeForm.do'"></td>
		</tr>
	</table>
	</div>
	</div>
</body>
</html>