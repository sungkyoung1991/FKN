<!doctype html>

<html lang='ko'>

<head>
<!-- encoding -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- bootstrap 4.1v  -->

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
	integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
	crossorigin="anonymous"></script>


<!-- jquery  -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

<!-- node server lib -->
<!-- <script src="http://127.0.0.1:3000/socket.io/socket.io.js"></script> -->
<script src="http://192.168.0.211:3000/socket.io/socket.io.js"></script>
<script>
	/* node socket server init */
	/* var socket = io('http://127.0.0.1:3000'); */
	var socket = io('http://192.168.0.211:3000');

	socket.on('connect', function() {
		console.log('서버와 연결jsp');
	});

	$(function() {
		var socket = io('http://192.168.0.211:3000');
		$('form').submit(function() {
			socket.emit('chat message', $('#m').val());
			$('#m').val('');
			return false;
		});

		socket.on('chat message', function(msg) {
			$('#messages').append($('<li>').text(msg));
		});

	});

	$(function() {
		$('#inputName').keyup(function(e) {
			var content = $(this).val();

			$(this).height(((content.split('\n').length + 1) * 1.5) + 'em');

			$('#currentNameLength').val(content.length);
		});
		$('#inputName').keyup();
	});

	$(function() {
		$('#inputUserId').keyup(function(e) {
			var content = $(this).val();

			$(this).height(((content.split('\n').length + 1) * 1.5) + 'em');

			$('#currentUserIdLength').val(content.length);
		});
		$('#inputUserId').keyup();
	});

	$(function() {
		$('#inputPhone').keyup(function(e) {
			var content = $(this).val();

			$(this).height(((content.split('\n').length + 1) * 1.5) + 'em');

			$('#currentPhoneLength').val(content.length);
		});
		$('#inputPhone').keyup();
	});

	$(function() {
		$('#inputEmail').keyup(function(e) {
			var content = $(this).val();

			$(this).height(((content.split('\n').length + 1) * 1.5) + 'em');

			$('#currentEmailLength').val(content.length);
		});
		$('#inputEmail').keyup();
	});
</script>

<style>
/*  {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font: 18px Helvetica, Arial;
}

form {
	background: #000;
	padding: 3px;
	position: fixed;
	bottom: 0;
	width: 100%;
}

form input {
	border: 0;
	padding: 10px;
	width: 90%;
	margin-right: .5%;
}

form button {
	width: 9%;
	background: rgb(130, 224, 255);
	border: none;
	padding: 10px;
}

#messages {
	list-style-type: none;
	margin: 0;
	padding: 0;
}

#messages li {
	padding: 5px 10px;
}

#messages li:nth-child(odd) {
	background: #eee;
}

.section1 {
	margin-top: 200px;
} */
.circle {
	margin-left: 0;
	margin-right: 0;
	/* margin: 3em; */
	background-color: #fff;
	border: 2px #000000 solid;
	width: 200px;
	height: 200px;
	padding-top: 20px;
	-webkit-border-radius: 100px;
	-moz-border-radius: 100px;
	vertical-align: top;
	font-size: 15px;
}

#circle2 {
	border: 5px solid black;
}

#circle3 {
	background-color: black;
	color: white;
}

.s1 {
	display: inline-block;
	text-align: center;
}

.multi {
	line-height: 25px;
}

.rect {
	/* border:5px solid black; */
	display: inline-block;
	margin-right: 50px;
	margin-left: 50px;
}

img {
	height: 50px;
	width: 50px;
	margin-top: 150px;
	s
}

/* .split {
	margin-top: 100px;
	margin-bottom: 100px;
	margin-left: 10%;
	height: 5px;
} */
.textArea {
	margin-left: 300px;
}

.info {
	margin-left: 300px;
}
</style>

</head>

<h1>css</h1>

<ul id="messages"></ul>
<form action="">
	<input id="m" autocomplete="off" />
	<button>Send</button>
</form>

<body>
	<div style="width: 1200px; margin: auto;">

		<div class="section1">
			<div class="texta s1" id="text">개설절차</div>

			<div class="rect">
				1
				<div class="circle s1" id="circle1">
					<span class=""> 개설 상담 <br /> <br /> 홈페이지 상담 게시판을 통해 개설 상담
						진행
					</span>
				</div>
			</div>



			<img
				src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOxoJ9XDanCYYNQ5dJJVH0pxgzFcAW-XkwZp9Eo-As48s6szQlAg" />


			<div class="rect">
				2
				<div class="circle s1" id="circle2">
					<span class="multi"> 계약서류 발송<br /> <br /> 등기우편을 통한 1차 계약서류
						발송
					</span>
				</div>
			</div>

			<img
				src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOxoJ9XDanCYYNQ5dJJVH0pxgzFcAW-XkwZp9Eo-As48s6szQlAg" />

			<div class="rect">
				3
				<div class="circle s1" id="circle3">
					<span class="multi"> 최종 서류 등록<br /> <br /> 1차 계약 완료 후
						홈페이지를 통한 내 외부사진,영업신고증, 사업자등록증 등록진행
					</span>
				</div>
			</div>
		</div>

		<hr class="split" />

		<div class="section2">
			<div class="texta s1" id="text">
				개설서류<br />등록하기
			</div>

			<div class="rect">
				<span class=""> 케어셀라 브랜드샵 개설을 위한 서류등록 페이지 입니다.<br /> 인적사항과
					지역을 입력하신 후 서류 등록을 부탁드립니다.
				</span>
			</div>

		</div>
		<hr class="split" />




		<!--  -->

		<div class="section3">

			<div class="form-group row">
				<label for="inputName" class="col-md-2 col-form-label">이름</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="inputName"
						maxlength="20" />
				</div>
				<div class="col-sm-12" style="text-align: right" id="nameLength">
					<input type="text" id="currentNameLength" placeholder="0"
						readonly="readonly"
						style="text-align: right; border: 0; font-style: bold;" />/20
				</div>



			</div>

			<hr class="split" />

			<div class="form-group row">
				<label for="inputUserId" class="col-md-2 col-form-label">회원번호</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="inputUserId"
						maxlength="20" />
				</div>

				<div class="col-sm-12" style="text-align: right">
					<input type="text" id="currentUserIdLength" placeholder="0"
						readonly="readonly"
						style="text-align: right; border: 0; font-style: bold;" />/20
				</div>
			</div>

			<hr class="split" />

			<div class="form-group row">
				<label for="inputPhone" class="col-md-2 col-form-label">전화번호</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="inputPhone"
						maxlength="20" />
				</div>

				<div class="col-sm-12" style="text-align: right">
					<input type="text" id="currentPhoneLength" placeholder="0"
						readonly="readonly"
						style="text-align: right; border: 0; font-style: bold;" />/20
				</div>

			</div>

			<hr class="split" />

			<div class="form-group row">
				<label for="inputEmail" class="col-md-2 col-form-label">메일주소</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="inputEmail"
						maxlength="60" />
				</div>

				<div class="col-sm-12" style="text-align: right">
					<input type="text" id="currentEmailLength" placeholder="0"
						readonly="readonly"
						style="text-align: right; border: 0; font-style: bold;" />/60
				</div>

			</div>

			<hr class="split" />

			<div class="form-group row">
				<label for="inputAddr" class="col-md-2 col-form-label">개설지역</label>
				<span class="col-form-label col-md-2">우편번호</span>
				<div class="col-md-5">
					<input type="text" class="form-control" id="inputAddr1" />
				</div>

				<div class="col-form-label btn btn-outline-dark" role="button">
					검색</div>
			</div>

			<div class="form-group row">
				<label for="inputAddr" class="col-md-2 col-form-label"></label> <label
					for="inputAddr" class="col-md-2 col-form-label">주소</label>
				<div class="col-md-8">
					<input type="text" class="form-control" id="inputAddr1" />
				</div>
			</div>

			<div class="form-group row">
				<label for="inputAddr" class="col-md-2 col-form-label"></label> <label
					for="inputAddr" class="col-md-2 col-form-label">상세주소</label>
				<div class="col-md-8">
					<input type="text" class="form-control" id="inputAddr1" />
				</div>
			</div>

			<div class="form-group row">
				<label for="inputAddr" class="col-md-2 col-form-label"></label> <label
					for="inputAddr" class="col-md-10 col-form-label"> 임대차 계약서 상
					동일 주소로 입력해 주시기 바랍니다. </label>

			</div>

			<hr class="split" />

		</div>

		<div class="section4">

			<div class="form-group row">
				<label for="inputAddr" class="col-md-2 col-form-label">파일첨부</label>
				<div class="col-md-8">
					<input type="text" placeholder="zip 파일 형식으로 압축하여 업로드 해주시기 바랍니다."
						readonly="readonly" class="form-control" id="inputAddr1" />
				</div>
				<div class="col-form-label col-md-2 btn btn-outline-dark"
					role="button" id="btn_file" onClick="javascript:kimsk();">검색</div>
			</div>

			<div class="form-group row">
				<label for="inputAddr" class="col-md-2 col-form-label"></label> <label
					for="inputAddr" class="col-md-10 col-form-label"> <span>

						필수 첨부 파일 안내 <br /> 1. 내 외부 사진(간판 시안 식별 가능하도록)<br /> 2. 사업자등록증<br />
						3. 영업신고증<br /> 4. 해당 파일을 압축하여 zip형식으로 업로드<br /> 첨부파일의 용량은 20mb
						까지입니다. <input type="file" class="form-control" id="file"
						style="display: none" />

				</span>
				</label>
			</div>
			<hr class="split" />
		</div>
		
		
		<div class="section5">
				<div class="">
				[필수] 개인정보 수집 및 이용동의 <br/>
				케어셀라샵은 아래의 목적으로 개인정보를 수집 및 이용하며, 회원의 개인정보를 안전하게 취급하는데 최선을 다합니다.
				</div>
					<textarea rows="8" cols="120" style="resize:none;"></textarea>
						<div style="margin-left:50%;">
							<span>개인정보 수집 및 이용에 동의합니다.</span> <input type="checkbox">
						</div>
			</div>
			
			
			<br/><br/><br/><br/>
			
			<div class="section6">

				<div class="">
				[필수]개설서류 등록에 관한 유의사항
				
				</div>
			
					<textarea rows="8" cols="120" style="resize:none;"></textarea>
					
						<div style="margin-left:40%;">
							<span style="text-align:right;">상기 유의사항을 확인하였으며, 이에 동의합니다.</span> <input type="checkbox">
						</div>
					

			</div>
			
			<hr class="split" />
		</div>
		
				
		<div style="width:1200px; margin-left:50%;">
			<input class="btn" type="button" value="등록하기">
			<input class="btn" type="button" value="취소하기">
		</div>





</body>

</html>
