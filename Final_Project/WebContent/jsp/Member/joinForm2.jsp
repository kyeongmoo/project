<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script
  src="http://code.jquery.com/jquery-2.2.4.js"
  integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
  crossorigin="anonymous"></script>  
<style type="text/css">
@font-face {
  font-family: 'LotteMartDream';
  font-style: normal;
  font-weight: 700;
  src: url('//cdn.jsdelivr.net/korean-webfonts/1/corps/lottemart/LotteMartDream/LotteMartDreamMedium.woff2') format('woff2'), url('//cdn.jsdelivr.net/korean-webfonts/1/corps/lottemart/LotteMartDream/LotteMartDreamMedium.woff') format('woff');
}
body{
 font-family: 'LotteMartDream';
	margin:0;
	padding:0;
}
.whole{
	width:100%;
	height:100%;
	font-family: 'LotteMartDream';
}
.join_form{
	max-width:700px;
 	border: 1px solid #D8D8D8; 
	max-height : 2300px;
	text-align:center;
	margin:0 auto;
	padding:10px;
}

.title h1{
	text-align: center;
	letter-spacing: 4px;
}
.prof_section{
min-height: 220px;
padding:10px;
display: block;
}

.prof_section .imagePreview {
  	content:url("image/sample.png"); 
 	width:183px;
 	height:183px;
 	display: block;
 	margin:0 auto;
 	border: 0; border-radius: 7.5em;
}


.prof_section .imgLabel{
    margin:10px auto 25px auto;
    padding: 10px 20px;
    background-color: #2c3338;
    display: table;
    color: #fff;
    font-size: 12px;
    border-radius:5px;
   font-weight:900;
   letter-spacing:2px;
   
     }

input[type="file"] {
    display: none;
}

#stylized{
	display: block;
/* 	border: 2px solid #D8D8D8; */
	max-height:100px;
	margin : 0 auto;
	max-width:700px;
	min-width:300px;
}

#stylized label{
	display:inline-block;
	font-weight:bold;
	text-align:left;
	width:20%;
  	float:left; 
	margin: 10px 2px 10px 60px;
}

#stylized button{
margin-left:40px;
text-align:center;
color:#FFFFFF;
   font-size: 12px;
   font-weight:900;
   text-decoration: none;
   padding: 3px 25px;
   border: 2px solid #2c3338;
   border-radius:5px;
   background-color: #2c3338;
}

#stylized .alert{
	color:#FE2E2E;
	display:inline-block;
	margin: 10px 10px;
	width:60%;
	text-align:left;
	font-size:15px;
}

.input_line{
	border-bottom: 1px solid #D8D8D8;
	width:400px;
	min-height: 25px;
	margin:10px 60px;
}

.input_line input{
font-size:15px;
padding:0px 26px;
outline: none;
display: block;
width:200px;
border: 0;
float : left;
}

#gen{
display:inline-block;
	margin: 10px 10px;
	width:6%;
	text-align:left;
	font-size:15px;
		font-weight:bold;
}

.select{
	width:20%;

}


.birthday{
 border-radius: 5px;
 width:30%;
 margin-right: 10px;
}

.birthday_box{
width:80%;
font-size:15px;
padding:0px 26px;
display: flex;
margin:0 auto;

}

#extra{
   display: block;
/* 	border: 2px solid #D8D8D8; */
	min-height:90px;
	margin : 0 auto;
	max-width:700px;
	min-width:300px;
}

#extra input{
	width:30%;
	border-radius: 5px;
	border-bottom-color: none;
}

#extra label{
    display:inline-block;
	font-weight:bold;
	text-align:left;
	width:20%;
  	float:left; 
	margin: 12px 2px 15px 60px;
}

#bi{
	display: inline-block;
	margin:0;
	width:20%;
	margin: 12px 60px 15px 2px;
}

.select_line{
	border-bottom: 1px solid #D8D8D8;
	width:400px;
	min-height: 25px;
}

.select_line input{
font-size:15px;
padding:0px 26px;
outline: none;
display: block;
width:200px;
border: 0;
float : left;
}

#bar{
margin : 0 5px;
}

.phn-select{
	border-radius: 5px;
 width:30%;
}


.btn_box{
width:100%;
margin:10px;
}

.btn_box button,#sub_btn{
margin:10px;
padding:10px;
width:100px;
background-color: #2c3338;
border-style: none;
color: #fff;
font-weight: 900;
}

.btn_box button:focus{
outline:none;
}

select {

    -webkit-appearance: none;  /* 네이티브 외형 감추기 */
    -moz-appearance: none;
    appearance: none;
    background: url(이미지 경로) no-repeat 95% 50%;  /* 화살표 모양의 이미지 */
}

/* IE 10, 11의 네이티브 화살표 숨기기 */
select::-ms-expand {
    display: none;
}

select {

    width: 180px; 
    padding: .6em .3em; /* 여백으로 높이 설정 */
    font-family: inherit;  /* 폰트 상속 */
    background: url('이미지 경로') no-repeat 95% 50%; /* 네이티브 화살표를 커스텀 화살표로 대체 */
    border: 1px solid #999;
    border-radius: 0px; /* iOS 둥근모서리 제거 */
    -webkit-appearance: none; /* 네이티브 외형 감추기 */
    -moz-appearance: none;
    appearance: none;
}


</style>

  
  <script type="text/javascript">
  $(document).ready(function(){
	 $('#pw_chk').keyup(function(){
		 if($('#pw').val() != $('#pw_chk').val()){
			 $('#po_check').text('');
			 $('#po_check').html('비밀번호가 틀렸습니다. 다시 입력해 주세요.');
		 }
		 else {
			 $('#po_check').text('');
			 $('#po_check').css('color','green');
			 $('#po_check').html('비밀번호가 일치합니다.');
		 }
	 });
	 
	 $('#back').click(function(){
		 window.history.back();
	 });
	 
	 $('#reset').click(function(){
		 location.reload();
	 });
	
	 
	 $('#chkForm').click(function(){
		 var url = "idChkForm.do"
		window.open(url,"ckeck","width=500 height=400 status=no")
	 });
		
	 $(function() {

		    $("#uploadFile").on("change", function(){

		        var files = !!this.files ? this.files : [];

		        if (!files.length || !window.FileReader) return; 

		 

		        if (/^image/.test( files[0].type)){ 

		            var reader = new FileReader(); 

		            reader.readAsDataURL(files[0]); 

		 

		            reader.onloadend = function(){ 

		             $('.imagePreview').css("content", "url("+this.result+")"); 

		            };

		        }

		    });

		});
	
		
  });
  
  </script>
</head>
<body>		
<form action="join.do" method="get" enctype="multipart/form-data" id="form" name="frm">
<div class="whole"> <!-- 전체 감싸고 있는 -->
<div class="title"><h1>회원가입</h1> </div> <!-- 타이틀 -->
<div class="join_form">
<div class="prof_section">
<img class="imagePreview">
 <label class="imgLabel"> 이미지 등록
<input type="file" name="M_PROFILE" value="이미지등록" id="uploadFile"></label>
</div> <!-- 이미지 섹션 끝 -->

<div id="stylized" > <!-- 아이디 입력폼 -->
<label>*아이디</label>
<span class="alert" id="valid_id">영어 소문자+숫자 혼합 가능. 12자 이내.</span>
<div class="input_line">
<input type="text" name="M_ID" id="idval" value="${M_ID}" readonly required>
<button id="chkForm" >중복 검사</button>
</div>
</div>

<div id="stylized" > <!-- 이름,성별 입력폼 -->
<label>*이름</label>
<span id="gen">*성별</span>
<select class="select" name="M_GENDER" required>
<option value="" selected disabled>선택하세요</option>
<option value="1">여자</option>
<option value="2">남자</option>
<option value="3">기타</option>
</select>
<div class="input_line">
<input type="text" name="M_NAME" placeholder="이름을 입력하세요" required>
</div>
</div>

<div id="stylized" > <!-- 비밀번호 입력폼 -->
<label>*비밀번호</label>
<span class="alert">영어+숫자1자이상+특수문자 1자 이상.  8자리~16자리</span>
<div class="input_line" id="">
<input type="password" placeholder="비밀번호를 입력하세요" id="pw" name="M_PASSWORD"required>
</div>
</div>

<div id="stylized" > <!-- 비밀번호 확인 -->
<label>*비밀번호 확인</label>
<span class="alert" id="po_check">일치 여부</span>
<div class="input_line">
<input type="password" placeholder="비밀번호를 입력하세요" id="pw_chk" required>
</div>
</div>

<div id="extra" > <!-- 생년월일 -->
<label>*생년월일</label>
<div class="birthday_box">
<select class="birthday" name="M_AGE" id="m_age1"required>
<option value="1990">1990년</option>
<option>2월</option>
<option>3월</option>
<option>4월</option>
</select>

<select class="birthday" name="M_AGE" id="m_age2" required>
<option value="01">1월</option>
<option value="02">2월</option>
<option value="03">3월</option>
<option value="04">4월</option>
<option value="05">5월</option>
<option value="06">6월</option>
<option value="07">7월</option>
<option value="08">8월</option>
<option value="09">9월</option>
<option value="10">10월</option>
<option value="11">11월</option>
<option value="12">12월</option>
</select>

<select class="birthday" name="M_AGE" id="m_age3" required>
<option value="01">1월</option>
<option value="02">2월</option>
<option value="03">3월</option>
<option value="04">4월</option>
</select>
</div>
</div>

<div id="extra"> <!-- 전화번호 -->
<label>*전화번호</label>
<span id=bi><input type="checkbox" name="M_PRIVATE" id="m_private" value="Y">비공개</span>
<div class="birthday_box">
<!-- <span class="alert" id=""> </span> -->
<select class="phn-select" name="M_PHONE" id="birth" required>
<option value="010">010</option>
<option value="011">011</option>
<option value="019">019</option>
</select>
<span id="bar">-</span>
<input type="text" name="M_PHONE" required>
<span id="bar">-</span>
<input type="text" name="M_PHONE" required>
</div>
</div>

<div id="extra" > <!-- 거주 국가  -->
<label>*거주국가</label>
<select class="birthday_box" name="M_NATION" required>
<option value="대한민국">대한민국(South Korea)</option>
<option value="일본">일본(Japan)</option>
<option value="미국">미국(Unite States)</option>
</select>
</div>


<div id="stylized" > <!-- 주소 -->
<label>*주소</label>
<span class="alert" >상세주소 제외 동까지만 입력하세요.</span>
<div class="input_line" id="">
<input type="text" placeholder="입력하세요" name="M_ADDRESS" required>
</div>
</div>

<div id="extra" > <!-- 이메일 -->
<label>*이메일 주소</label>
<div class="birthday_box">
<!-- <span class="alert" id=""> </span> -->
<input type="text" name="M_EMAIL" required>
<span id="bar">@</span>
<input type="text" name="M_EMAIL" required>
<span id="bar"> </span>
<select class="phn-select" name="M_EMAIL" required>
<option>직접 입력</option>
<option value="gmail.com">gmail.com</option>
<option value="naver.com">naver.com</option>
</select>
</div>
</div>


<div class="btn_box">
<!-- <button id="submit" id="sub_btn">가입</button> -->
<input type="submit" value="가입" id="sub_btn">
<button id="reset">다시 작성</button>
<button id="back">뒤로</button>
</div>
</div>
</div>
</form>


</body>
</html>

