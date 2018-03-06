<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>OMSReviewWriteForm</title>
</head>
<body>
<center>
<form action="review_Write.do" enctype="multipart/form-data" method="post">
			제목 : <input type="text" name="REV_TITLE"> <br>
		 
			<table>
			<tr>
			<td>이미지파일</td><td><input type="file" name="ufile"></td>
			</tr>
			<tr><td>장소</td><td><input type="text" name="REV_DESTINATION"></td></tr>
			<tr>
			<td>내용 </td>
			<td><textarea rows="20" cols="50" name="REV_CONTENT"></textarea></td>
			</tr>
			<tr>
			<td>
			</td>
			</tr>
			</table>
			<center>
			<table>
			<tr>
			<td>
			<input type="submit" value="글쓰기">	
			<input type="button" value="뒤로가기" onclick="javascript:history.back()">
			<input type="button" value="메인" onclick="location.href='review_Main.jsp'">
			</td>
			</tr>
			</table>
			</center>
		</form>


</center>

</body>
</html>