<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
모집수정폼

<div class="sidevar">
<ul>
<li>통합검색</li>
<li>
<a href="recruit_main.do">모집게시판</a>
</li>
<li><a href="plan_main.do">계획게시판</a>
</li>
</ul>
</div>
<form action="recruit_update.do" enctype="multipart/form-data" method="post">
<dl>
<dt>글번호</dt><dd><input type="text" name="REC_NO" value="${recruit.REC_NO}" readonly="readonly"></dd>
<dt>내용</dt><dd><input type="text" name="REC_CONTENT" value="${recruit.REC_CONTENT}"></dd>
<dt>첨부파일</dt><dd><input type="file" name="ufile"></dd>
<dt>작성자</dt><dd><input type="text" name="M_ID" value="${recruit.m_ID}"></dd>
<dt>장소</dt><dd><input type="text" name="REC_DESTINATION" value="${recruit.REC_DESTINATION}"></dd>
<dt>인원수</dt><dd><input type="number" name="REC_MEMBER_COUNT" value="${recruit.REC_MEMBER_COUNT}"></dd>
<dt>원하는 성별</dt><dd><input type="radio" name="REC_GENDER" value="M" value="${recruit.REC_GENDER }">남자만 <input type="radio" name="REC_GENDER" value="W" value="${recruit.REC_GENDER }">여자만 <input type="radio" name="REC_GENDER" value="F"value="${recruit.REC_GENDER }">무관</dd>
<dt>시작일</dt><dd><input type="date" name="REC_START" value="${recruit.REC_START}"></dd>
<dt>종료일</dt><dd><input type="date" name="REC_END" value="${recruit.REC_END}"></dd>
</dl>
<input type="submit" value="작성하기">
</form>


</body>
</html>