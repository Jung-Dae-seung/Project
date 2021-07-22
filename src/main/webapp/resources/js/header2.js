/**
 * header2.jsp
 */
$(function(){	
	var actionForm = $("#logoutForm");
	$("#logout").click(function(e){
		e.preventDefault(); // a속성 중지

		//actionForm 보내기
		actionForm.submit();
	})
})