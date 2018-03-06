<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
  src="https://code.jquery.com/jquery-2.2.4.js"
  integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
  crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	readlist(1);
	minecheck();
});
function sysout(V){
	var tost="";
	for(var a in V){
		tost+=a;
	}
	return 
}

function minecheck(){
	var sessionId = "<%= (String)session.getAttribute("id")%>";
	var writer =$("#writer").text();
	if(sessionId==writer){
		$(".mine").css({"visibility":"visible","display":"block"});
		console.log('보여');;
	}else{
		$(".mine").css({"visibility":"hidden","display":"none"});
		console.log('사라져');;
	}
}

function dorefrence(id,REC_APPLY_NO,page){
	var rec_no = $('#rec_no').val();
	$.ajax({
		type:'get',
		url:'doRefrence.do',
		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
		dataType:'text',
		data:page="REC_APPLY_NO="+REC_APPLY_NO+"&REC_NO="+rec_no+"&M_ID="+id+"&page="+page,
		success:function(data){
			var datas= JSON.parse(data);
			console.log(datas.result);
			readlist(datas.page[0]);
		}
	
	
});
}


function readlist(page){
	var rec_no = $('#rec_no').val();
	
	$.ajax({
		type:'get',
		url:'getRefrenceList.do',
		dataType:'text',
		data:page="page="+page+"&REC_NO="+rec_no,
		
		success:function(data){
			var datas= JSON.parse(data);
			var result = datas.result[0];
			
			console.log(datas.result[0]);
			console.log(datas.result[0]["RefrenceList"])
			var refrenceList=datas.result[0]["RefrenceList"];
			
		   	$("#list").empty();
		   	$("#pages").empty();
		   	
			if(refrenceList.length== 0){
	       		$("#list").append("<td colspan=4 style='padding:30px;'>데이터가 없습니다.</td>");
			}else{ 
				$("#list").append("<tr><th>번호</th><th>이름</th><th>확정여부</th></tr>");
				
	          for(var i =0; i<refrenceList.length; i++){
	        	  var msg='확정';
	        	  if(refrenceList[i].REC_APPLY_CONFIRM=='Y')
	        		  msg='확정취소';
	        	  $("#list").append("<tr>"
	        			  +"<td>"+refrenceList[i].RN+"</td>"
	        			  +"<td>"+refrenceList[i].M_ID+"</td>"
	        			  +"<td>"+refrenceList[i].REC_APPLY_CONFIRM+"</td>"
	        			  +"<td><button class='mine' onclick=\"dorefrence('"+refrenceList[i].M_ID+"',"+refrenceList[i].REC_APPLY_NO+","+result.page+")\">"+msg+"</button>"+"</td>"
	        			  +"</tr>");       	  
	          }
	        $('#page').val(result.page);
	          	var begin=result.START;
	          	var current= result.current;
	          	console.log('current:'+current)
				if(result.END<result.END)
					var end=result.END;
				else
					var end=result.LAST;
				var str='';
				for(var i=begin;i<=end;i++){
					if(i==current){
						str=">"+i;
					}else
						str="  onclick='readlist("+i+")'>"+i;
					$('#pages').append("<td"+str+"</td>");
				}
				
	          
	      };
				minecheck();
		}
		
	});
}

</script>
</head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
모집 뷰페이지
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
href="location.href='plan_main.do'"
</c:if>
 >계획게시판</a></li>
</ul>
</div>

<%boolean mine=(boolean)request.getAttribute("ismine"); %>

<table border=1>
<tr>
<th>번호</th>
<th>제목</th>
<th>작성날짜</th>
<th>작성자</th>
<th>인원수</th>
<th>조회수</th>
<th>원하는성별<th>
<th>파일</th>
<th></th>
</tr>
<input type="text" style="display: none;" value="${page }" id="page">
<input type="text" style="display: none;" value="${rec.REC_NO }" id="rec_no">
<tr align="center" style="font-family:'monaco';" bgcolor="white">
<td>${rec.REC_NO}</td>
<td>${rec.REC_TITLE}</td>
<td><fmt:formatDate value="${rec.REC_CREATE_DATE}" pattern="yyyy-MM-dd"/></td>
<td id="writer">${rec.m_ID}</td>
<td>${rec.REC_MEMBER_COUNT}</td>
<td>${rec.REC_VIEWS}</td>
<td>${rec.REC_GENDER}</td>
<td><a href="recruitdownload.do?num=${rec.REC_NO}">${rec.REC_FILE}</a></td>
<tr>

<tr><td style="color:white;" bgcolor="pink" align="center" colspan="7">내용</td></tr>

<tr><td align="center" colspan="7" height="500"><img alt="이미지없음<br>" src="recruitdownload.do?num=${rec.REC_NO}">${rec.REC_CONTENT}</td></tr>

<tr>

<%if(mine){%>
<td>
<span id="list1"></span>
</td>
<%}else{ %>
<td colspan="6"><span id="list1">
</span></td>
</tr><tr>
<td ><input  type="button" value="신청하기" onclick="location.href='recruit_refrence.do?REC_NO=${rec.REC_NO}'">
<%} %>
<%if(mine){ %>
<td colspan="1"><input type="button" value="수정" onclick="location.href='recruit_updateForm.do?num=${rec.REC_NO}'"></td>
<td colspan="1"><input type="button" value="삭제" onclick="location.href='recruit_delete.do?num=${rec.REC_NO}'"></td>
<%} %>
<td colspan="1"><input type="button" value="전체목록" onclick="location.href='recruit_main.do'"></td> 
</tr></table>



<table>
	<tr id="list">
	</tr>
</table>
<table>
	<tr id="pages"></tr>
</table>







</body>
</html>