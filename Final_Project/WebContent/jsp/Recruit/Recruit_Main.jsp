<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	모집게시판 메인
	
<div class="sidevar">
<ul>
<li>통합검색</li>
<li>
<a <c:if test="${Recruit}==null">
href="location.href='recruit_main.do'"
</c:if>
>
모집게시판
</a>
</li>
<li><a
href="plan_main.do"
 >계획게시판</a></li>
</ul>
</div>


	<button onclick="location.href='recruit_writeForm.do'">글쓰기</button>
	<table>
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>조회수</th>
			<th>작성자</th>
			<th>작성일</th>
		</tr>
		<c:forEach var="r" items="${Recruit}">
			<tr>
				<td>${r.REC_NO}</td>
				<td><a href="recruit_view.do?num=${r.REC_NO}">${r.REC_TITLE }</a></td>
				<td>${r.REC_VIEWS}</td>
				<td>${r.m_ID }</td>
				<td><fmt:formatDate value="${r.REC_CREATE_DATE}"
						pattern="yyyy-MM-dd" /></td>
			</tr>
		</c:forEach>
		</table>
		<c:if test="${START!=1}">
			<a href="recruit_main.do?page=1&type=${type}&keyword=${keyword}">[처음]</a>
			<a href="recruit_main.do?page=${PAGE-1}&type=${type}&keyword=${keyword}">[이전]</a>
		</c:if>
		<c:forEach begin="${START}" end="${END<LAST? END:LAST}" var="i">
			<c:choose>
				<c:when test="${i==current}"> <b>[${i}]</b> </c:when>
				<c:otherwise>
					<a href="recruit_main.do?page=${i }&type=${type}&keyword=${keyword}">${i}</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:if test="${END<LAST}">
			<a href="recruit_main.do?page=${END+1}&type=${type}&keyword=${keyword}">[다음]</a>
			<a href="recruit_main.do?page=${LAST}&type=${type}&keyword=${keyword}">[마지막]</a>
		</c:if>
		
		<form action="recruit_main.do">
		<select name="type">
		<option value="1">제목</option>
		<option value="2">내용</option>
		<option value="3">제목+내용</option>
		<option value="4">작성자</option>
		</select>
		<input type="text" name="keyword" value="${keyword}"><br>
		<input type="date" name="startdate">
		<input type="date" name="enddate"><br>
		장소<input type="text" name="REC_DESTINATION"> <br>
		남성<input type="radio" name="REC_GENDER" value="M">
		여성<input type="radio" name="REC_GENDER" value="W">
		무관<input type="radio" name="REC_GENDER" value="F"><br>
		진행중<input type="radio" name="REC_STATE" value="ing">
		끝남<input type="radio" name="REC_STATE" value="end"><br>
		<input type="submit" value="검색">
		</form>


</body>
</html>