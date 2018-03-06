<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>서비스센터</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script type="text/javascript" src="jsp/FAQ/jquery.js"></script>
<script type="text/javascript">

$(document).ready(function(){
    var url = "FAQ_Main.jsp";
    $.get(url, {page:1}, function(args) {
        $("#FAQ_Main").html(args);
    });
});
function get_page(no) {
	$("#FAQ_Main").html("<img src='indicator.gif'>");
    var url = "FAQ_Main.jsp";
    $.get(url, {page:no}, function(args) {
        $("#FAQ_Main").html(args);
    });	
}
function get_content(no) {
	$("#FAQ_View").html("<img src='indicator.gif'>");
    var url = "FAQ_View.jsp";
    $.get(url, {no:no}, function(args) {
        $("#FAQ_View").html(args);
    });	
}

</script>


</head>
<body>
<table width="800" border="0">
<tr bgcolor="white">
<td valign="top" width="400">
	<div id="FAQ_View"><font color="red">AJAX 게시판 내용이 들어가는 곳<p>오른쪽 목록에 있는 게시물을 클릭하면 내용이 이곳에 보여집니다.</font></div>
</td>
<td valign="top" width="400">
	<div id="FAQ_Main">AJAX 게시판 목록이 들어가는 곳</div>
</td>
</tr>
</table>
</body>
</html>