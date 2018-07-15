<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>

<head>

<script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>
  
<script src="http://127.0.0.1:3000/socket.io/socket.io.js"></script>

<script type="text/javascript">



/* node socket server init */
var socket = io('http://127.0.0.1:3000');


socket.on('connect',function(){
  console.log('서버와 연결jsp');
});
  
$(function () {
	var socket = io('http://127.0.0.1:3000');
    $('form').submit(function(){
      socket.emit('chat message', $('#m').val());
      $('#m').val('');
      return false;
    });
    
    socket.on('chat message', function(msg){
      $('#messages').append($('<li>').text(msg));
      
    });
    
    socket.on('disconnect',function(req,res){// ping timeout error check..
    	
    	$('#messages').append($('<li>').text('client 가 나감..'));
    	
    });
    
  });
  
  /* socket disconnect emit */

</script>

<style>

.left{
	float:left;
}
	
.right{
	float:right;
}

.subject{

	width:25%;
	text-align:center;
	
	outline:blue solid 1px;
}


.info{
	width:75%;
	outline:red solid 1px;	
}

.info2{
	width:37%;
	outline:red solid 1px;
}

.info3{
	width:38%;
	outline:red solid 1px;
}

.info4{
	width:25%;
	outline:red solid 1px;
}

.info5{
	width:50%;
	outline:red solid 1px;
}


.see{
	
	 text-align:center;
	
	outline:orange solid 1px;
}

.circle {
   margin-left: 2em;
   margin-right: 2em; 
   background-color: #fff;
   border: 2px #000000 solid;
   width: 200px;
   height: 200px;
   padding-top: 20px;
   -webkit-border-radius: 100px;
   -moz-border-radius: 100px;
   font-size: 15px;
   vertical-align:top;
   
   display:inline-block; /* 원을 한줄로..  없으면3개의 원이 하나로 겹침.*/
   
}

.section:after {

	 content: "";
	 clear: both;
	 display: block;
   
}

/* 
#chatB * { margin: 0; padding: 0; box-sizing: border-box; }
      #chatB { font: 13px Helvetica, Arial; }
      .chatName { background: #000; padding: 3px; position: fixed; bottom: 0; width: 100%; }
      .chatName input { border: 0; padding: 10px; width: 90%; margin-right: .5%; }
      .chatName button { width: 9%; background: rgb(130, 224, 255); border: none; padding: 10px; }
      #messages { list-style-type: none; margin: 0; padding: 0; }
      #messages li { padding: 5px 10px; }
      #messages li:nth-child(odd) { background: #eee; }
 */

</style>

</head>

 
    

<body id="chatB">

<div class= "section">

	<div class= "left subject">
		채팅.
	</div>
	
	<div class="right info">
		<ul id="messages"></ul>
		    <form action="" class = "chatName">
		      <input id="m" autocomplete="off" /><button>Send</button>
		    </form>
	</div>
	
</div>
</body>

<body id = "pub">	    

	<div class="section">
			<div class="left subject">
				개설절차
			</div>
			
				<!--Q. 1,2,3인데 화면에 3,2,1 로 나옴 . 왜?  -->
			<div class="right info">
				<div class="circle">
					1
					<!--Q. circle class에 넣은 div가 왜 원밖으로 삐져나오는지? position relative 줘도 변화는 없음.  -->
					<div class="innerRect see">
						text Area
					</div>
				</div>
				<div class="circle">
					2
					<div class="innerRect see">
							text Area
					</div>
				</div>
				<div class="circle">
					3
					<div class="innerRect see">
							text Area
					</div>
				</div>
			</div>	
	</div>

<div class="section">
	<div class="left subject">
		개설서류 <br/> 등록하기
	</div>
	
	<div class="right info2" style="display:inline-block;">
		text Area
	</div>
	
	<div class="right info3">
		*필수
	</div>
	
		
</div>


<div class="section">

	<div class="left subject"></div>
	
	<div class="userForm">
	
		 <table class="right info type05">
               <tr>
                  <th scope="row"><span class="span01">* </span>&nbsp;이름</th>
                  <td><input class="formInput" type="text" style="width: 100%;">
                     <div class="" style="font-size: 15px; float: right;">0/20</div></td>
               </tr>
               <tr>
                  <th scope="row"><span class="span01">*</span>&nbsp;회원번호</th>
                  <td><input class="formInput" type="text" style="width: 100%;">
                     <div class="" style="font-size: 15px; float: right;">0/20</div></td>
               </tr>
               <tr>
                  <th scope="row"><span class="span01">*</span>&nbsp;전화번호</th>
                  <td><input class="formInput" type="text" style="width: 100%;">
                     <div class="" style="font-size: 15px; float: right;">0/20</div></td>
               </tr>
               <tr>
                  <th scope="row">&nbsp;&nbsp;메일주소</th>
                  <td><input type="text" style="width: 100%;">
                     <div class="" style="font-size: 15px; float: right;">0/20</div></td>
               </tr>
               <tr>
                  <th scope="row"><span class="span01">*</span>&nbsp;개설지역</th>
                  <td>우편번호<input type="text"><input type="button" value="검색" /><br />
                  <br /> 주소<input type="text"><br />
                  <br /> 상세주소<input type="text">
                  </td>
               </tr>
               <tr>
                  <th scope="row"><span class="span01">*</span>&nbsp;파일첨부</th>
                  <td><input type="text"><input type="button" value="검색" />
                     <div>
                        필수 첨부 파일 안내<br />1. 내 외부 사진(간판 시안 식별 가능하도록)<br />2. 사업자등록증<br />3.
                        영업신고증<br />해당 파일을 압축하여 zip형식으로 업로드<br />첨부파일의 용량은 20mb 까지입니다.
                     </div></td>
   
               </tr>
            </table>
		
		
	</div>
		
</div>

<div class="section">

<div class="left subject"></div>
	 <div class="right info">[필수] 개인정보 수집 및 이용동의</div>
        <div class="right info">케어셀라샵은 아래의 목적으로 개인정보를 수집 및 이용하며, 회원의 개인정보를 안전하게 취급하는데 최선을 다합니다.</div>
      		<div class="right info agreeBox" tabindex="0">
                        <b>Article 1 Application of the Terms and Conditions</b></br>
                        Members that participate in Autoship of GCOOP USA by automatic
                        purchase method of credit card, debit card (hereafter, "payment
                        method") (hereinafter referred to as "automatic purchase") are
                        applicable to the Terms and Conditions.</br>
                        </br> <b>Article 2 Withdrawal</b></br> Automatic purchases occur
                        every 4 weeks, and if the member is participating in Autoship, the
                        payment will be made on the member's designated payment method
                        without further notice.</br>
                        </br> <b>Article 3 Liability</b></br> If the funds of the payment
                        method are insufficient as of the payment date, or if payment is
                        not possible due to payment limitation, delinquency, etc., the
                        member shall be liable. In addition, all personal and criminal
                        legal liabilities arising from theft of cards, the use of lost
                        cards, and payment of a card by someone else are the responsibility
                        of the member and the company is not liable.</br>
                        <br/> <b>Article 4 Date of payment</b></br> For new participants in
                        the Autoship services, the date of payment will be determined based
                        on the date of registration and will occur every 4 weeks.</br>
                        <br/> <b>Article 5 Application and Cancellation</b></br> By
                        accepting the terms and conditions and purchasing Autoship
                        Products, the member will automatically be registered into the
                        Autoship service. Cancellation or change must be made through My
                        Office 24 hours before the expiration date of the purchased
                        products.<br/>
                        <br/> <b>Article 6 Payment Standards and Appeals</b></br> Payments
                        for automatic purchases are based on the charges that the company
                        places. The amount includes the purchased item (s), the shipping
                        cost, and the sales tax, which may change due to changes in the
                        products or the change of shipping address. If there is an
                        objection to the charge, the member and the company must make
                        adjustments.<br/>
                        <br/> <b>Article 7 Third Parties and Personal information</b></br>
                        The Company may provide customer information (credit card
                        information, debit card information) to third parties and related
                        merchant services. The Company will not use the information
                        provided for any other purposes than related business.</br>
                        <br/> <b>Article 8 Application of Terms</b></br> Members that
                        register for Autoship services through My Office must comply to
                        these Terms and Conditions.
                     </div>  
                     
                     <div class="right info" style="text-align:right;">
                        개인정보 수집 및 이용에 동의합니다.<input type="checkbox" name="chk_info"
                           value="HTML">
                     </div>

</div>

<div class="section">

<div class="left subject"></div>
	 <div class="right info">[필수] 개설서류 등록에 관한 유의사항</div>
      		<div class="right info agreeBox" tabindex="0">
                        <b>Article 1 Application of the Terms and Conditions</b></br>
                        Members that participate in Autoship of GCOOP USA by automatic
                        purchase method of credit card, debit card (hereafter, "payment
                        method") (hereinafter referred to as "automatic purchase") are
                        applicable to the Terms and Conditions.</br>
                        </br> <b>Article 2 Withdrawal</b></br> Automatic purchases occur
                        every 4 weeks, and if the member is participating in Autoship, the
                        payment will be made on the member's designated payment method
                        without further notice.</br>
                        </br> <b>Article 3 Liability</b></br> If the funds of the payment
                        method are insufficient as of the payment date, or if payment is
                        not possible due to payment limitation, delinquency, etc., the
                        member shall be liable. In addition, all personal and criminal
                        legal liabilities arising from theft of cards, the use of lost
                        cards, and payment of a card by someone else are the responsibility
                        of the member and the company is not liable.</br>
                        <br/> <b>Article 4 Date of payment</b></br> For new participants in
                        the Autoship services, the date of payment will be determined based
                        on the date of registration and will occur every 4 weeks.</br>
                        <br/> <b>Article 5 Application and Cancellation</b></br> By
                        accepting the terms and conditions and purchasing Autoship
                        Products, the member will automatically be registered into the
                        Autoship service. Cancellation or change must be made through My
                        Office 24 hours before the expiration date of the purchased
                        products.<br/>
                        <br/> <b>Article 6 Payment Standards and Appeals</b></br> Payments
                        for automatic purchases are based on the charges that the company
                        places. The amount includes the purchased item (s), the shipping
                        cost, and the sales tax, which may change due to changes in the
                        products or the change of shipping address. If there is an
                        objection to the charge, the member and the company must make
                        adjustments.<br/>
                        <br/> <b>Article 7 Third Parties and Personal information</b></br>
                        The Company may provide customer information (credit card
                        information, debit card information) to third parties and related
                        merchant services. The Company will not use the information
                        provided for any other purposes than related business.</br>
                        <br/> <b>Article 8 Application of Terms</b></br> Members that
                        register for Autoship services through My Office must comply to
                        these Terms and Conditions.
                     </div>  
                     
                     <div class="right info" style="text-align:right;">
                         상기 유의사항을 확인하였으며, 이에 동의합니다.<input type="checkbox" name="chk_info"
                           value="HTML">
                     </div>

</div>

<div class="right info" role="button" style="text-align:right; width:34%; cursor:pointer;">취소하기</div>
<div class="right info" role="button" style="text-align:right; width:35%; cursor:pointer;">등록하기</div>


   
</body>

</html>
