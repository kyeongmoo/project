<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
계획수정폼

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
<c:if test="${plan}==null">
href='plan_main.do'
</c:if>
 >계획게시판</a></li>
</ul>
</div>
<form action="plan_update.do" enctype="multipart/form-data" method="post">
<dl>
<dt>글번호</dt><dd><input type="text" name="PLAN_NO" value="${plan.PLAN_NO}" readonly="readonly"></dd>
<dt>제목</dt><dd><input type="text" name="PLAN_TITLE" value="${plan.PLAN_TITLE}"></dd>
<dt>내용</dt><dd><input type="text" name="PLAN_CONTENT" value="${plan.PLAN_CONTENT}"></dd>
<dt>첨부파일</dt><dd><input type="file" name="ufile"></dd>
<dt>작성자</dt><dd><input type="text" name="M_ID" value="${plan.m_ID}" readonly="readonly"></dd>
<dt>장소</dt><dd><input type="text" name="PLAN_DESTINATION" value="${plan.PLAN_DESTINATION}"></dd>
<dt>인원수</dt><dd><input type="number" name="PLAN_MEMBER_COUNT" value="${plan.PLAN_MEMBER_COUNT}"></dd>
<dt>원하는 성별</dt><dd><input type="radio" name="PLAN_GENDER" value="M" value="${plan.PLAN_GENDER }">남자만 <input type="radio" name="PLAN_GENDER" value="W" value="${plan.PLAN_GENDER }">여자만 <input type="radio" name="PLAN_GENDER" value="F"value="${plan.PLAN_GENDER }">무관</dd>
<dt>시작일</dt><dd><input type="date" name="PLAN_START" value="${plan.PLAN_START}"></dd>
<dt>종료일</dt><dd><input type="date" name="PLAN_END" value="${plan.PLAN_END}"></dd>
</dl>
<input type="submit" value="작성하기">
</form>


</body>
</html>