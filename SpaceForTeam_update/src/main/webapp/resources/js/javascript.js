// $.test = function(){
//	var val = $(this).attr('id');
//	console.log(val);
//}

// 상단바 드롭다운
$('#navDropdown').on({
	mouseenter: function(){
		$('#navDropdownMenu').attr('class','dropdown-menu dropdown-menu-end d-inline');
	},
	mouseleave: function(){
		$('#navDropdownMenu').attr('class','dropdown-menu dropdown-menu-end');
	}
});

// 게스트 아이디 중복 확인
$('#id').on('focusout', function(){
	if($('#id').val().trim()==''){
		$('#idFeedback').html('<div class="text-danger">아이디를 입력해주세요.</div>');
	}else{
		$.ajax({
			type:'POST',
			url :'/myapp/dupChk',
			data: {'id':$('#id').val().trim()},
			success : function(result){
				if(result.trim()=='OK'){
					$('#idFeedback').html('');
				}else{
					$('#idFeedback').html('<div class="text-danger">중복된 아이디 입니다.</div>');
				}
			},
			error : function (jqXHR, textStatus, errorThrown){
				console.log(jqXHR);
				console.log(textStatus);
				console.log(errorThrown);
			}
		});
	}
});
	
// 게스트 이메일 중복 확인
$('#email').on('focusout', function(){
	if($('#email').val().trim()==''){
		$('#emailFeedback').html('<div class="text-danger">이메일을 입력해주세요.</div>');
	}else{
		$.ajax({
			type:'POST',
			url :'/myapp/dupChk',
			data: {'email':$('#email').val().trim()},
			success : function(result){
				if(result.trim()=='OK'){
					$('#emailFeedback').html('');
				}else{
					$('#emailFeedback').html('<div class="text-danger">이미 가입된 이메일입니다.</div>');
				}
			},
			error : function (jqXHR, textStatus, errorThrown){
				console.log(jqXHR);  //응답 메시지
				console.log(textStatus); //"error"로 고정인듯함
				console.log(errorThrown);
			}
		});
	}
});
	
// 비밀번호 조건확인
$('#pass').on('focusout', function(){
	const regNum = /[0-9]/;
	const regEng = /[a-z]/;
	if(regNum.test($('#pass').val())==true && regEng.test($('#pass').val())==true){
		$('#passFeedback').html('');
	}else{
		$('#passFeedback').html('<div class="text-danger">비밀번호는 소문자와 숫자의 조합이어야합니다.</div>');				
	}
});

// 이름 입력 여부
$('#name').on('focusout', function(){
	if($('#name').val().trim()==''){
		$('#nameFeedback').html('<div class="text-danger">이름을 입력해주세요.</div>'); 		
	}else{
		$('#nameFeedback').html(''); 		
	}
});

//가입버튼
$('#joinBtn').on('click', function(){
	$('#joinForm').submit(function(){
		//아이디 빈칸 중복확인 여부
		if($('#id').val().trim()==''){
			$('#id').focus();
			return false;				
		}else if($('#idFeedback').text() != ''){
			$('#id').focus();
			return false;
		}
		//비밀번호 빈칸 조건
		if($('#pass').val().trim()==''){
			$('#pass').focus();
			return false;				
		}else if($('#passFeedback').text() !=''){
			$('#pass').focus();
			return false;
		}
		// 비밀번호 재확인
		if($('#pass').val()!=$('#pass_re').val()){
			$('#passReFeedback').html('<div class="text-danger">비밀번호가 일치하지 않습니다.</div>');
			return false;
		}else{
			$('#passReFeedback').html('');				
		}
		// 이름
		if($('#name').val().trim()==''){
			$('#nameFeedback').html('<div class="text-danger">이름을 입력해주세요.</div>');
			$('#name').focus();
			return false;
		}
		// 이메일
		if($('#email').val().trim()==''){
			$('#email').focus();
			return false;				
		}else if($('#emailFeedback').text() != ''){
			$('#email').focus();
			return false;
		}
	});
});