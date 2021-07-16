/**
 * changememberinfo 유효성 검증
 */
$(function() {
  $("#changeMemberInfo").validate({
    errorPlacement: function(error, element) {
      $(element)
        .closest("form")
        .find("small[id='" + element.attr("id") + "']")
        .append(error);
    },
    rules: {
      new_password: {
        required: true,
        validPwd: true,
      },
      confirm_password: {
        required: true,
        validPwd: true,
        equalTo:"#new_password"
      },
	  new_mobile:{
        required: true,
        mobile: true
	  },
      new_email: {
        required: true,
        email: true
      }
    },
    messages: {
      new_password: {
        required: "비밀번호를 입력해 주세요",
      },
      confirm_password: {
        required: "비밀번호를 입력해 주세요",
        equalTo:"입력하신 비밀번호와 다릅니다."
      },
	  new_mobile:{
        required: "핸드폰 번호를 입력해 주세요",
	  },
      new_email: {
        required: "이메일을 입력해 주세요"
      }
    }
  });
});
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
