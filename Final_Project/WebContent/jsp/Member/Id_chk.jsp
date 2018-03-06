<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script
  src="http://code.jquery.com/jquery-2.2.4.js"
  integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
  crossorigin="anonymous"></script> 
  <link rel="stylesheet" href="//fonts.googleapis.com/earlyaccess/hanna.css" />
<link rel="stylesheet" href="jsp/Member/css/IdCheck.css">
<script>
$(document).ready(function(){
	$('#alertMsg').hide();
 	$('#flag').hide();
	
	$('duform').on('submit', function() {       
        if(!$('#search').val()){
        	$('#alertMsg').show().text('아이디를 입력하세요!');
        	console.log('실패');
            return false;
        }else{
        	$('#alertMsg').hide().text('');
        	
        	console.log('성공');
        	return true;
        }
    });
	
	$('#useId').click(function() {       
		if($('#flag').val()=="false"||$('#flag').val()==""){
			alert('아이디 사용여부를 확인하세요.');
		}else{
			$("#idval", parent.opener.document).val($('#search').val());
			console.log($('#search').val());
 			self.close();
		}
	});
	
	$('#closeWin').click(function(){
		window.close();
	});
	
});

</script>
</head>
<body>
<div class="srch_box">
<div class="srch_title">
<h1>중복검사</h1>
</div>
<div class="box">
  <div class="container-4">
  	<form action="duplChk.do" name="duform">
    <input type="search" id="search" name="m_id" value="${m_id}" placeholder="아이디를 입력하세요." required />
    
    <button class="icon" type="submit"><i class="fa fa-search"></i></button>
    </form>
  </div>
</div>
	<p id="alertMsg" class="resultBox"></p>
	<p id="msg" class="resultBox">${msg}</p>
 	<input id="flag" class="resultBox" value="${flag}">
 	
 	
 	<div class="btn_Box" id="">
 	<button id="useId">사용하기</button>	
 	<button id="closeWin">취소</button>
 	</div>
 	
</div>

</body>
</html>