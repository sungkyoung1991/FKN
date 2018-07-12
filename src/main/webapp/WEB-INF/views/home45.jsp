* <
<!DOCTYPE style PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript">
	$(function() {
		$('#content').keyup(function(e) {
			var content = $(this).val();
			$(this).height(((content.split('\n').length + 1) * 1.5) + 'em');
			$('#counter').html(content.length + '/300');
		});
		$('#content').keyup();
	});
</script>
<style>
.circle {
	margin-left: 0;
	margin-right: 0; /* margin: 3em; */
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

.rect { /* border:5px solid black; */
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

table.type05 {
	border-collapse: separate;
	border-spacing: 1px;
	text-align: left;
	line-height: 1.5;
	border-top: 1px solid #ccc;
	margin: 20px 10px;
	width: 100%;
}

table.type05 th {
	width: 150px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
	background: #efefef;
}

table.type05 td { /* width: 350px; */
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
} /* 약관동의 */
.agreeBox {
	overflow-y: scroll;
	color: #555;
	height: 190px;
	padding: 10px;
	margin-bottom: 8px;
	border: 1px solid #ccc;
}

.agreeBox p {
	margin-bottom: 15px;
	line-height: 17px;
}

.agree_check label {
	color: #6e6e6e;
}

.btn {
	float: right;
}

.span01 {
	color: #FF0000;
}

.section:after {
	content: "";
	clear: both;
	display: block;
}

.left {
	float: left;
	/* display: table-cell; vertical-align: middle; height: 100%;*/
}

.right {
	float: right;
}

.subject {
	width: 25%;
	outline: 1px red solid;
}

.info {
	width: 75%;
	outline: 1px blue solid;
}
</style>
<body>
	<div style="width: 1200px; margin: auto;">
		<div class="section">
			<div class="subject texta s1 left" id="text">개설절차</div>
			<div class="info right">
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
						<span class="multi"> 계약서류 발송<br /> <br /> 등기우편을 통한 1차
							계약서류 발송
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
		</div>
		<div class="section">
			<div class="subject left texta s1" id="text">
				개설서류<br />등록하기
			</div>
			<div class="info right">
				<table class="type05">
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
						<td>우편번호<input type="text"><input type="button"
							value="검색" /><br /> <br /> 주소<input type="text"><br />
							<br /> 상세주소<input type="text">
						</td>
					</tr>
					<tr>
						<th scope="row"><span class="span01">*</span>&nbsp;파일첨부</th>
						<td><input type="text"><input type="button"
							value="검색" />
							<div>
								필수 첨부 파일 안내<br />1. 내 외부 사진(간판 시안 식별 가능하도록)<br />2. 사업자등록증<br />3.
								영업신고증<br />해당 파일을 압축하여 zip형식으로 업로드<br />첨부파일의 용량은 20mb 까지입니다.
							</div></td>
					</tr>
				</table>
				<hr>
				<div>
					<div>[필수] 개인정보 수집 및 이용동의</div>
					<div>케어셀라샵은 아래의 목적으로 개인정보를 수집 및 이용하며, 회원의 개인정보를 안전하게 취급하는데
						최선을 다합니다.</div>
					<div class="agree_wrap">
						<div name="contentTxt" class="agreeBox" tabindex="0">
							<b>Article 1 Application of the Terms and Conditions</b></br> Members
							that participate in Autoship of GCOOP USA by automatic purchase
							method of credit card, debit card (hereafter, "payment method")
							(hereinafter referred to as "automatic purchase") are applicable
							to the Terms and Conditions.</br> </br> <b>Article 2 Withdrawal</b></br>
							Automatic purchases occur every 4 weeks, and if the member is
							participating in Autoship, the payment will be made on the
							member's designated payment method without further notice.</br> </br> <b>Article
								3 Liability</b></br> If the funds of the payment method are insufficient
							as of the payment date, or if payment is not possible due to
							payment limitation, delinquency, etc., the member shall be
							liable. In addition, all personal and criminal legal liabilities
							arising from theft of cards, the use of lost cards, and payment
							of a card by someone else are the responsibility of the member
							and the company is not liable.</br> </br> <b>Article 4 Date of payment</b></br>
							For new participants in the Autoship services, the date of
							payment will be determined based on the date of registration and
							will occur every 4 weeks.</br> </br> <b>Article 5 Application and
								Cancellation</b></br> By accepting the terms and conditions and
							purchasing Autoship Products, the member will automatically be
							registered into the Autoship service. Cancellation or change must
							be made through My Office 24 hours before the expiration date of
							the purchased products.</br> </br> <b>Article 6 Payment Standards and
								Appeals</b></br> Payments for automatic purchases are based on the
							charges that the company places. The amount includes the
							purchased item (s), the shipping cost, and the sales tax, which
							may change due to changes in the products or the change of
							shipping address. If there is an objection to the charge, the
							member and the company must make adjustments.</br> </br> <b>Article 7
								Third Parties and Personal information</b></br> The Company may provide
							customer information (credit card information, debit card
							information) to third parties and related merchant services. The
							Company will not use the information provided for any other
							purposes than related business.</br> </br> <b>Article 8 Application of
								Terms</b></br> Members that register for Autoship services through My
							Office must comply to these Terms and Conditions.
						</div>
						<div style="float: right;">
							개인정보 수집 및 이용에 동의합니다.<input type="checkbox" name="chk_info"
								value="HTML">
						</div>
					</div>
					<br /> <br />
					<div>[필수] 개설서류 등록에 관한 유의사항</div>
					<div class="agree_wrap">
						<div name="contentTxt" class="agreeBox" tabindex="0">
							Members that participate in Autoship of GCOOP USA by automatic
							purchase method of credit card, debit card (hereafter, "payment
							method") (hereinafter referred to as "automatic purchase") are
							applicable to the Terms and Conditions.</br> </br> Automatic purchases
							occur every 4 weeks, and if the member is participating in
							Autoship, the payment will be made on the member's designated
							payment method without further notice.</br> </br> If the funds of the
							payment method are insufficient as of the payment date, or if
							payment is not possible due to payment limitation, delinquency,
							etc., the member shall be liable. In addition, all personal and
							criminal legal liabilities arising from theft of cards, the use
							of lost cards, and payment of a card by someone else are the
							responsibility of the member and the company is not liable.</br> </br> For
							new participants in the Autoship services, the date of payment
							will be determined based on the date of registration and will
							occur every 4 weeks.</br> </br> By accepting the terms and conditions and
							purchasing Autoship Products, the member will automatically be
							registered into the Autoship service. Cancellation or change must
							be made through My Office 24 hours before the expiration date of
							the purchased products.</br> </br> Payments for automatic purchases are
							based on the charges that the company places. The amount includes
							the purchased item (s), the shipping cost, and the sales tax,
							which may change due to changes in the products or the change of
							shipping address. If there is an objection to the charge, the
							member and the company must make adjustments.</br> </br> The Company may
							provide customer information (credit card information, debit card
							information) to third parties and related merchant services. The
							Company will not use the information provided for any other
							purposes than related business.</br> </br> Members that register for
							Autoship services through My Office must comply to these Terms
							and Conditions.
						</div>
					</div>
					<div style="float: right;">
						상기 유의사항을 확인하였으며, 이에 동의합니다.<input type="checkbox" name="chk_info"
							value="HTML">
					</div>
				</div>
				<br /> <br /> <br /> <input class="btn" type="button"
					value="등록하기">
				<!-- 취소 -->
				<input class="btn" type="button" value="취소하기">
				<!-- 등록 -->
				<br /> <br /> <br />
			</div>
		</div>
		<br />
	</div>
</body>
</html>
