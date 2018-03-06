<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
한게시물 의 상세페이지

${REV_NO}
${REV_TITLE}<br>
${REV_CONTENT}<br>
${REV_FILE}<br>


<input type="button" value="뒤로가기" onclick="javascript:history.back()">
<input type="button" value="메인" onclick="location.href='review_Main.do'">
</body>
</html>