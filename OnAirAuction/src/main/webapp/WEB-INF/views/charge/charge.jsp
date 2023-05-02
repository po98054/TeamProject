<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<!-- jQuery -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
    <!-- iamport.payment.js -->
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<style>
	.card-body{
		width: 1000px; height:1000px; margin-left: auto; margin-right: auto; margin-top: 50px;	
	}
	.card-footer{
		width: 600px; margin-left: auto; margin-right: auto; text-align: center;
	}
	.form-group{
		float: right;
	}
	.radio-group{
		display: flex; flex-wrap: wrap;
 	}
	.img-kakao{
		width:600px;
	}
	.box-radio-input {
  		float: left; width: 25%; box-sizing: border-box; padding: 10px;
	}
	.btn-custom{
		margin-top: 20px;	
	}
	.p{
		margin-top: 10px;	
	}	
	.form-control{
		width: 100px; height:100px;
	}
</style>    
 <div class="card-body bg-white">
 	<div class="card-footer">
	 	<div class="form-group">
			<a href="#">
				<button class="btn btn-outline-primary">현재금액</button>
			</a>
			<div class="form-control">${ch_amount}</div>
		</div>
	 	<a href="#">
	 		<img class="img-kakao" src="<c:url value='/resources/img/kakao.jpg'></c:url>" alt="logo">
	 	</a> <br>
		<p style="font-weight: bold" class="p">카카오페이 현재 사용가능</p>
		<div class="radio-group">
			<label class="box-radio-input"><input type="radio" name="cp_item" value="5000"><span>5,000원</span></label>
			<label class="box-radio-input"><input type="radio" name="cp_item" value="10000"><span>10,000원</span></label>
			<label class="box-radio-input"><input type="radio" name="cp_item" value="20000"><span>20,000원</span></label>
			<label class="box-radio-input"><input type="radio" name="cp_item" value="50000"><span>50,000원</span></label>
			<label class="box-radio-input"><input type="radio" name="cp_item" value="100000"><span>100,000원</span></label>
			<label class="box-radio-input"><input type="radio" name="cp_item" value="200000"><span>200,000원</span></label>
			<label class="box-radio-input"><input type="radio" name="cp_item" value="500000"><span>500,000원</span></label>
			<label class="box-radio-input"><input type="radio" name="cp_item" value="1000000"><span>1,000,000원</span></label>
		</div>
		<p  style="color: #ac2925; margin-top: 30px">카카오페이의 최소 충전금액은 5,000원이며 <br/>최대 충전금액은 1,000,000원 입니다.</p>
		<button type="button" class="btn btn-custom" id="charge_kakao">충 전 하 기</button>
 	</div>
 </div>

<script>
    $('#charge_kakao').click(function () {
        // getter
        var IMP = window.IMP;
        IMP.init('imp20544548');
        var money = $('input[name="cp_item"]:checked').val();
        IMP.request_pay({
            pg: 'kakao',
            merchant_uid: 'merchant_' + new Date().getTime(),
            name: '포인트 충전',
            amount: money,
            buyer_email: 'iamport@siot.do',
            buyer_name: '구매자이름',
            buyer_tel: '010-1234-5678',
            buyer_addr: '인천광역시 부평구',
            buyer_postcode: '123-456'
        }, function (rsp) {
            console.log(rsp);
            if (rsp.success) {
                var msg = '결제가 완료되었습니다.';
                msg += '고유ID : ' + rsp.imp_uid;
                msg += '상점 거래ID : ' + rsp.merchant_uid;
                msg += '결제 금액 : ' + rsp.paid_amount;          
                $.ajax({
                    type: "POST", 
                    async: false,
                    url: "<c:url value='/charge/point'></c:url>",
                    data: {
                    	"ch_amount" : money,
                    	"ch_method" : "kakao"
                    },
                    success:function(data){
                    	$.ajax({
                    		type: "GET", 
                            async: false,
                            url: "<c:url value='/select/point'></c:url>",
                            data: {
                            	"ch_amount" : money
                            },
                            success: function(data) {
                            	$('.form-control').html(data);
                            },
                            error: function() {
                                var msg = '두 번째 AJAX 요청에 실패하였습니다.';
                                alert(msg);
                            }
                    	})
                    },
                    error: function() {
                        var msg = '첫 번째 AJAX 요청에 실패하였습니다.';
                        alert(msg);
                    }
                });
            } else {
                var msg = '결제에 실패하였습니다.';
                msg += '에러내용 : ' + rsp.error_msg;
            }
            alert(msg);
            document.location.href="/onAirAuction"; //alert창 확인 후 이동할 url 설정
        });
    });
</script>
