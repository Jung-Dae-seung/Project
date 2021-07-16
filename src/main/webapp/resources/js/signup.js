/**
 * signup 페이지 유효성 검사
 */
$(function() {
  $("#signup").validate({
    errorPlacement: function(error, element) {
      $(element)
        .closest("form")
        .find("small[id='" + element.attr("id") + "']")
        .append(error);
    },
    rules: {
      userid: {
        required: true,
        validId: true,
        remote:{
					url:"/checkId",
					type:"post",
					data:{
						userid:function(){
							return $('#userid').val();
						}
					}
				}	
      },
      password: {
        required: true,
        validPwd: true
      },
      confirm_password: {
        required: true,
        validPwd: true,
        equalTo:"#password"
      },
      name: {
        required: true,
        minlength: 2
      },
      gender: {
        required: true
      },
	  age:{
		required: true
	  },
	  mobile:{
        required: true,
        mobile: true
	  },
      email: {
        required: true,
        email: true
      },
/*회원가입 약관 체크 확인*/
	  tac:{
        required: true
	  }
    },
    messages: {
      userid: {
        remote: "아이디가 중복되었습니다.",
        required: "아이디를 입력해 주세요"
      },
      password: {
        required: "비밀번호를 입력해 주세요"
      },
      confirm_password: {
        required: "비밀번호를 입력해 주세요",
        equalTo:"이전 비밀번호와 다릅니다."
      },
      name: {
        required: "이름을 입력해 주세요",
        minlength: "이름은 최소 2자리는 입력해야 합니다"
      },
      gender: {
        required: "성별을 선택해 주세요"
      },
	  age:{
		required: "나이를 입력해 주세요"
	  },
	  mobile:{
        required: "핸드폰 번호를 입력해 주세요",
	  },
      email: {
        required: "이메일을 입력해 주세요"
      },
	  tac:{
        required: "회원가입 약관을 동의해주세요"
	  }
    }
  });
});
$.validator.addMethod(
  "validId",
  function(value) {
    var regId = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{5,12}$/;
    return regId.test(value);
  },
  "아이디는 영문 대소문자,숫자를 포함하여 5~12자리 사이로 입력해야 합니다."
);
$.validator.addMethod(
  "validPwd",
  function(value) {
    var regPwd = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,15}$/;
    return regPwd.test(value);
  },
  "비밀번호는 숫자와 영문자와 특수문자의 조합으로 8~15자리를 사용해야 합니다."
);
$.validator.addMethod(
  "email",
  function(value) {
    var regEmail = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    return regEmail.test(value);
  },
  "이메일 형식을 확인해 주세요"
);
$.validator.addMethod(
  "mobile",
  function(value) {
    var regMobile = /01[016789]-[^0][0-9]{2,3}-[0-9]{3,4}/;
    return regMobile.test(value);
  },
  "핸드폰 번호 형식을 확인해 주세요"
);
