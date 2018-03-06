<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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

function dorefrence(id,PLAN_APPLY_NO,page){
	var plan_no = $('#plan_no').val();
	$.ajax({
		type:'get',
		url:'doPlanRefrence.do',
		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
		dataType:'text',
		data:page="PLAN_APPLY_NO="+PLAN_APPLY_NO+"&PLAN_NO="+plan_no+"&M_ID="+id+"&page="+page,
		success:function(data){
			var datas= JSON.parse(data);
			console.log(datas.result);
			readlist(datas.page[0]);
		}
	
	
});
}


function readlist(page){
	var plan_no = $('#plan_no').val();
	
	$.ajax({
		type:'get',
		url:'getPlanRefrenceList.do',
		dataType:'text',
		data:page="page="+page+"&PLAN_NO="+plan_no,
		
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
	        	  if(refrenceList[i].PLAN_APPLY_CONFIRM=='Y')
	        		  msg='확정취소';
	        	  $("#list").append("<tr>"
	        			  +"<td>"+refrenceList[i].RN+"</td>"
	        			  +"<td>"+refrenceList[i].M_ID+"</td>"
	        			  +"<td>"+refrenceList[i].PLAN_APPLY_CONFIRM+"</td>"
	        			  +"<td><button class='mine' onclick=\"dorefrence('"+refrenceList[i].M_ID+"',"+refrenceList[i].PLAN_APPLY_NO+","+result.page+")\">"+msg+"</button>"+"</td>"
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
계획 뷰페이지
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
<input type="text" style="display: none;" value="${plan.PLAN_NO }" id="plan_no">
<tr align="center" style="font-family:'monaco';" bgcolor="white">
<td>${plan.PLAN_NO}</td>
<td>${plan.PLAN_TITLE}</td>
<td><fmt:formatDate value="${plan.PLAN_CREATE_DATE}" pattern="yyyy-MM-dd"/></td>
<td id="writer">${plan.m_ID}</td>
<td>${plan.PLAN_MEMBER_COUNT}</td>
<td>${plan.PLAN_VIEWS}</td>
<td>${plan.PLAN_GENDER}</td>
<td><a href="plandownload.do?num=${plan.PLAN_NO}">${plan.PLAN_FILE}</a></td>
<tr>

<tr><td style="color:white;" bgcolor="pink" align="center" colspan="7">내용</td></tr>

<tr><td align="center" colspan="7" height="500"><img alt="이미지없음" src="plandownload.do?PLAN_NO=${plan.PLAN_NO}">${plan.PLAN_CONTENT}</td></tr>

<tr>

<%if(mine){%>
<td>
<span id="list1"></span>
</td>
<%}else{ %>
<td colspan="6"><span id="list1">
</span></td>
</tr><tr>
<td ><input  type="button" value="신청하기" onclick="location.href='plan_refrence.do?PLAN_NO=${plan.PLAN_NO}'">
<%} %>
<%if(mine){ %>
<td colspan="1"><input type="button" value="수정" onclick="location.href='plan_updateForm.do?PLAN_NO=${plan.PLAN_NO}'"></td>
<td colspan="1"><input type="button" value="삭제" onclick="location.href='plan_delete.do?PLAN_NO=${plan.PLAN_NO}'"></td>
<%} %>
<td colspan="1"><input type="button" value="전체목록" onclick="location.href='plan_main.do'"></td> 
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