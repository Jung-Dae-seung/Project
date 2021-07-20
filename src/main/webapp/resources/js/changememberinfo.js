/**
 * changememberinfo 유효성 검증
 */
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

//패스워드 클릭시 유효성 검증 후 form data 전송
$(function() {
	$("#changePassword").validate({

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
				equalTo: "#new_password"
			}
		},
		messages: {
			new_password: {
				required: "비밀번호를 입력해 주세요",
			},
			confirm_password: {
				required: "비밀번호를 입력해 주세요",
				equalTo: "입력하신 비밀번호와 다릅니다."
			}
		},
		submitHandler: function() {
			$("#passwordChangeButton").click(function(e) {
				e.preventDefault();

				let param = {
					userid: $("input[name='userid']").val(),
					current_password: $("#current_password").val(),
					new_password: $("#new_password").val(),
					confirm_password: $("#confirm_password").val()
				}

				$.ajax({
					url: "/changepassword",
					type: "put",
					contentType: "application/json",
					data: JSON.stringify(param),
					success: function(data) {
						if (data == 'passwordsuccess') {
							alert('비밀번호 변경에 성공 하였습니다.\n 다시 로그인해 주세요');
							location.href = "login";
						}

					},
					error: function(xhr, textStatus, error) {
						if (xhr.responseText === 'not-equal') {
							alert("입력하신 새 비밀번호가 일치하지 않습니다.");
							$("#new_password").val("");
							$("#confirm_password").val("");
						} else {
							alert('비밀번호가 변경에 실패 하였습니다.');
						}
					}
				})
			})
		}
	})
})

//이메일 클릭시 유효성 검증 후 form data 전송
$(function() {
	$("#changeEmail").validate({

		errorPlacement: function(error, element) {
			$(element)
				.closest("form")
				.find("small[id='" + element.attr("id") + "']")
				.append(error);
		},
		rules: {
			new_email: {
				required: true,
				email: true
			}
		},
		messages: {
			new_email: {
				required: "이메일을 입력해 주세요"
			}
		},
		submitHandler: function() {
			$("#emailChangeButton").click(function(e) {
				e.preventDefault();

				let param = {
					userid: $("input[name='userid']").val(),
					current_password: $("#current_password").val(),
					new_email: $("#new_email").val()
				}

				$.ajax({
					url: "/changeemail",
					type: "put",
					contentType: "application/json",
					data: JSON.stringify(param),
					success: function(data) {
						if (data == 'emailsuccess') {
							alert('이메일 변경에 성공 하였습니다.\n 다시 로그인해 주세요');
							location.href = "login";
						}

					}
				})
			})
		}
	})
})

//모바일 클릭시 유효성 검증 후 form data 전송
$(function() {
	$("#changeMobile").validate({

		errorPlacement: function(error, element) {
			$(element)
				.closest("form")
				.find("small[id='" + element.attr("id") + "']")
				.append(error);
		},
		rules: {
			new_mobile: {
				required: true,
				mobile: true
			}
		},
		messages: {
			new_mobile: {
				required: "모바일 번호를 입력해 주세요"
			}
		},
		submitHandler: function() {
			$("#mobileChangeButton").click(function(e) {
				e.preventDefault();

				let param = {
					userid: $("input[name='userid']").val(),
					current_password: $("#current_password").val(),
					new_mobile: $("#new_mobile").val()
				}

				$.ajax({

					url: "/changemobile",
					type: "put",
					contentType: "application/json",
					data: JSON.stringify(param),
					success: function(data) {

						if (data == 'mobilesuccess') {
							alert('모바일 번호 변경에 성공 하였습니다.\n 다시 로그인해 주세요');
							location.href = "login";
						}
					}
				})
			})
		}
	})
})

//회원 탈퇴 클릭시 form data 전송
$(function() {
	$("#memberleaveButton").click(function(e) {
		e.preventDefault();

		if (confirm("정말 탈퇴 하시겠습니까?") == true) {
			let param = {
				userid: $("input[name='userid']").val(),
				current_password: $("#current_password").val()
			}

			$.ajax({
				url: "/memberleave",
				type: "delete",
				contentType: "application/json",
				data: JSON.stringify(param),
				success: function(data) {
					if (data === 'leavesuccess') {
						alert("회원 탈퇴 하였습니다.")
						location.href = "/";
					}
				}
			})

		} else {
			return;
		}
	})
})





