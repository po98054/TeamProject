<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.min.css'></c:url>">

<link href="<c:url value='/resources/css/star-rating.css'></c:url>" media="all" rel="stylesheet" type="text/css" />

<link href="<c:url value='/resources/css/summernote-bs4.css'></c:url>" rel="stylesheet">

<script src="<c:url value='/resources/js/jquery.min.js'></c:url>"></script>

<script src="<c:url value='/resources/js/jquery-3.3.1.slim.min.js'></c:url>"></script>

<script src="<c:url value='/resources/js/bootstrap.bundle.min.js'></c:url>"></script>

<script src="<c:url value='/resources/js/summernote-bs4.js'></c:url>"></script>

<script src="<c:url value='/resources/js/star-rating.js'></c:url>" type="text/javascript"></script>

<style>

	.body{
        height: 700px; width: 1900px;
	}
	.body .body-left{
		float:left; width: 250px; height:700px; border-right: 1px solid black;
	}
	.body .body-left .nav-ul{
		margin-top: 5px;
	}
    .body .body-left .nav-ul .list-li:nth-child(1){
        width: 250px; height: 180px; margin-bottom: 3px; font-weight: bold; border-bottom: 1px solid black;
    }
    .body .body-left .nav-ul .list-li:nth-child(2){
        width: 250px; height: 120px; margin-bottom: 3px; font-weight: bold; border-bottom: 1px solid black;
    }
    .body .body-left .nav-ul .list-li:nth-child(3){
        width: 250px; height: 90px; margin-bottom: 3px; font-weight: bold; border-bottom: 1px solid black;
    }
    .body .body-left .nav-ul .list-li:nth-child(4){
        width: 250px; height: 100px; margin-bottom: 3px; font-weight: bold; border-bottom: 1px solid black;
    }
    .body .body-left .nav-ul .list-li:nth-child(5){
        width: 250px; height: 100px; margin-bottom: 3px; font-weight: bold; border-bottom: 1px solid black;
    }
    .body .body-left .nav-ul .list-li:nth-child(6){
        width: 250px; height: 100px; margin-bottom: 3px; font-weight: bold;
    }
	.body .body-left .nav-ul .list-li .item-a{
		display: inline-block; padding-top: 2px; color:black; margin-top: 6px; font-weight: normal;
	}
    .star_rating {
        font-size:0; letter-spacing:-4px;
    }
    .star_rating a {
        font-size:22px;
        letter-spacing:0;
        display:inline-block;
        margin-left:5px;
        color:#ccc;
        text-decoration:none;
    }
    .star_rating a:first-child {
        margin-left:25px;
    }
    .star_rating a.on {
        color:#777;
    }
    .body .body-middle{
        float:left; width: 1150px; height:700px;
    }
    .file-box{
	width : 100px;
	
	height : 200px;
	
	border : 1px solid black;
	
	font-size : 50px;
	
	text-align : center;
	
	line-height : 200px;
	
	font-weight : bold;
	
	border-radius: 5px;
	
	float : left;
	
	cursor: pointer;
	}
	#image > div::after{
	display: block;
	
	content: '';
	
	clear: both;
	}
	#image [type=file]{
	display: none;
	}
	#image > div > div{
	float : left;
	
	margin-right : 20px;
	}

</style>

<!-- 후기 등록 -->

<div class="body">
		<div class="body-left">		
			<ul class="nav-ul">		
				<li class="list-li">구매자<br>
					<a href="./마이페이지_구매자_경매참가내역.html" class="item-a">경매 참가 내역(일반/실시간 경매)</a><br>
                    <a href="./마이페이지_구매자_경매참가내역2.html" class="item-a">경매 참가 내역(인원수 제한 경매)</a><br>
                    <a href="./마이페이지_구매자_경매개최내역.html" class="item-a">경매 개최 내역</a><br>
                    <a href="./마이페이지_구매자_주문내역.html" class="item-a">주문 내역</a><br>
                    <a href="./마이페이지_구매자_환불내역.html" class="item-a">환불 내역</a>
				</li>
				<li class="list-li">판매자<br>
					<a href="./마이페이지_판매자_경매참가내역.html" class="item-a">경매 참가 내역</a><br>
                    <a href="./마이페이지_판매자_경매개최내역.html" class="item-a">경매 개최 내역</a><br>
                    <a href="./마이페이지_판매자_판매내역.html" class="item-a">판매 내역</a>
				</li>	
				<li class="list-li">후기<br>
                    <a href="./마이페이지_후기조회.html" class="item-a">후기 조회</a>	
				</li>	
				<li class="list-li">신고<br>
					<a href="./마이페이지_신고작성.html" class="item-a">신고 작성</a><br>
                    <a href="./마이페이지_신고조회.html" class="item-a">신고 조회</a>	
				</li>	
				<li class="list-li">문의 사항<br>	
					<a href="./마이페이지_상품문의등록.html" class="item-a">문의 사항 등록</a><br>
                    <a href="./마이페이지_상품문의조회.html" class="item-a">문의 사항 조회</a>
				</li>
				<li class="list-li">회원<br>
					<a href="./마이페이지_회원정보수정.html" class="item-a">회원 정보 수정</a><br>
                    <a href="./마이페이지_회원탈퇴.html" class="item-a">회원 탈퇴</a>
				</li>		
			</ul>		
		</div>
        <div class="body-middle">
        
           <form action="<c:url value='/MyPage/ReviewInsert'></c:url>" method="post" enctype="multipart/form-data">
           
           	<input type="hidden" name="re_ar_num" value="${re_ar_num}">
           
           	 <div class="form-group" style="margin-left: 10px">
		
				<label for="title">제목:</label>
			
				<input type="text" class="form-control" id="title" name="re_title">
			
			 </div>
			 
			 <div class="form-group">
			
				<select class="form-control" name="re_level" id="type">
			
					<option value="0">평점을 선택하세요.</option>
				
					<option value="1">★☆☆☆☆</option>
					
					<option value="2">★★☆☆☆</option>
					
					<option value="3">★★★☆☆</option>
					
					<option value="4">★★★★☆</option>
					
					<option value="5">★★★★★</option>
				
				</select>
			
			</div>
			
			<div id="common" style="margin-left: 10px">
		
				<div class="form-group" style="margin-left: 10px">
			
					<label for="content">내용:</label>
					
					<textarea id="content" name="re_content"></textarea>
				
				</div>
			
			</div>
			
			<div id="image" style="margin-left: 10px">
		
			<label>이미지:</label>
			
			<div class="form-group mt-3" style="margin-left: 10px">
			
				<div>
				
					<div class="file-box">+</div>
					
					<input type="file" class="form-control" name="files" accept="image/*" onchange="readURL(this);">
					
					<img class="preview" height="200" width="auto">
				
				</div>
				
				<div>
				
					<div class="file-box">+</div>
					
					<input type="file" class="form-control" name="files" accept="image/*" onchange="readURL(this);">
					
					<img class="preview" height="200" width="auto">
				
				</div>
				
				<div>
				
					<div class="file-box">+</div>
					
					<input type="file" class="form-control" name="files" accept="image/*" onchange="readURL(this);">
					
					<img class="preview" height="200" width="auto">
				
				</div>
				
			</div>
			
		</div>
		
		<button class="btn btn-outline-success col-12 mb-2" style="margin-left: 10px">후기 등록</button>
		
       </form>
       
     </div>
     
   </div>
   
   <script>
   
	$('#content').summernote({
	
		placeholder: '내용을 입력하세요.',
	
		tabsize: 2,
	
		height: 120
	
	});
	
	$('form').submit(function(){
		
		let re_level = $('[name=re_level]').val();
		
		if(re_level  == 0){
			
			alert('별점을 선택하세요.');
			
			$('[name=re_level]').focus();
			
			return false;
			
		}
		
		let re_title = $('[name=re_title]').val();
		
		if(re_title.trim().length  == 0){
			
			alert('제목을 입력하세요.');
			
			$('[name=re_title]').focus();
			
			return false;
			
		}
		
		let re_content = $('[name=re_content]').val();
		
		if(re_content.trim().length  == 0){
			
			alert('내용을 입력하세요.');
			
			return false;
			
		}
		
		//이미지 게시판에서 이미지가 1개이상 선택이 되어야 전송되도록 유효성 검사 
		if(common.indexOf($('#type').val()) < 0){
			
			let images = image.querySelectorAll('[type=file]');
			
			for(i = 0; i<images.length; i++){
				
				if(images[i].files && images[i].files[0])
					
					return true;
				
			}
			
			alert('이미지를 1개이상 선택하세요.');
			
			return false;
			
		}
		
	});
	
	$('.file-box,.preview').click(function(){
		
		$(this).siblings('input').click();
		
	});
	
	function readURL(input){
		
		if(!input.files || !input.files[0]){
			
			input.nextElementSibling.src ='';
			
			input.previousElementSibling.style.display = 'block';
			
			return;
			
		}
		
		let reader = new FileReader();
		
		reader.onload = function(e){
			
			input.previousElementSibling.style.display = 'none';
			
			input.nextElementSibling.src = e.target.result;
			
		}
		
		reader.readAsDataURL(input.files[0]);
		
	}

</script>