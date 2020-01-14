<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도토리 충전소</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
$(function(){
	
	$("#check_module").click(function(){
		
		var price = $("input:radio[name=dotory]:checked").val();

		IMP.init('imp71312172');
		IMP.request_pay({
			merchant_uid : 'merchant_' + new Date().getTime(),
			name : '도토리',
			amount : price,
			buyer_email : '${login.email}',
			buyer_name : '${login.username}',
			//buyer_tel : '010-4994-6280',
			buyer_addr : '${login.addr}',
			//buyer_postcode : '456-456'
		}, function(rsp) {
			if ( rsp.success ) {
				var msg = '결제가 완료되었습니다.';
				msg += '고유ID : ' + rsp.imp_uid;
				msg += '상점 거래ID : ' + rsp.merchant_uid;
				msg += '결제 금액 : ' + rsp.paid_amount;
				msg += '카드 승인번호 : ' + rsp.apply_num;
				
				var dotory_amount = price/100;
				
				alert("도토리 구매 성공 :)");
				$(opener.document).find("#addcoin").val(dotory_amount);
				close();
				
			} else {
				var msg = '결제에 실패하였습니다.';
				msg += '에러내용 : ' + rsp.error_msg;
			}
		});
	})	
});

</script>
<style type="text/css">
/* width */
::-webkit-scrollbar {
  width: 5px;
  height: 5px;
}

/* Handle */
::-webkit-scrollbar-thumb {
  background: #888;
  border-radius: 2px;
}

/* Handle on hover */
::-webkit-scrollbar-thumb:hover {
	background: #555;
	border-radius: 2px;

}
	body{
		background-image: url("../img/checkbox.PNG");
		padding: 14px;
		display: flex;
		align-items: flex-start;
	}
	#left_wrapper1{
    	flex: 0 0 auto;
		order : 2;
		background-color: #56B3D5;
		border-radius : 10px 15px 15px 10px;
		border: 0.5px solid #000100;
		width: 400px;
		height: 400px;
	}
	#left_wrapper2{
		margin: 8px;
		border-radius : 10px 15px 15px 10px;
		border: 1px dashed #ffffff;
		width: 95%;
		height: 87%;
	}
	#left_wrapper3{
		margin: 5px;
		border-radius : 10px 15px 15px 10px;
		border-right: 0;
		background-color: #f2f2f2;
		border: 1px solid black;
		width: 96%;
		height: 87%;
	}
	#left_wrapper4{
		margin-top: 3px;
		display: flex;
		align-items: center;
    	justify-content: space-between;
		flex-direction: column;
		border-radius : 10px 15px 15px 10px;
		background-color: #ffffff;
		width: 99%;
		height: 94%;
	}
	#left_wrapper5_1{
	  	order: 1;
	    height: 100%;
	    width: 91%;
	    display: flex;
	    flex-direction: column;
	    align-items: flex-start;
	    justify-content: space-around;
	}
	#left_wrapper5_1>div{
		display: flex;
		align-items: center;
	}
	.texts{
		padding :7px;
		border-radius : 7px;
		width: 300px;
	}
	.btns{
		margin-left: 10px;
		border-radius : 20px;
		width: 130px;
		background-color: #9ed2e7;
		height: 27px;
		border: 1px dashed #000000;
	}
</style>
</head>
<body>

<%-- <p>도토리 결제창</p>
<button id="check_module">충전</button>
<input type="radio" name="dotory" value="1000"/>10개(1000원)
<input type="radio" name="dotory" value="2000"/>20개(2000원)
<input type="radio" name="dotory" value="3000"/>30개(3000원)

<a>내가가진 도토리 갯수 : ${login.coinno }</a> --%>

		<div id="left_wrapper1">
	<div id="left_wrapper2">
	<div id="left_wrapper3">
	<div id="left_wrapper4">
	<div id="left_wrapper5_1">
		<div>
			<h4>내가 가진 도토리 갯수 : ${login.coinno }</h4>
			<input type="hidden" readonly="readonly" id="randomcode"/>
		</div>
			<input type="radio" name="dotory" value="1000"/>10개(1000원)
			<input type="radio" name="dotory" value="2000"/>20개(2000원)
			<input type="radio" name="dotory" value="3000"/>30개(3000원)
		
			<button class="btns" id="check_module">충전</button>
	</div>
	<!-- left_wrapper5 end -->
	</div>
	<!-- left_wrapper4 end(white box) -->
	</div>
	<!-- left_wrapper3 end(gray box) -->
	</div>
	<!-- left_wrapper2 end(dashed box) -->
	</div>
	<!-- left_wrapper1 end(blue box) -->
</body>
</html>