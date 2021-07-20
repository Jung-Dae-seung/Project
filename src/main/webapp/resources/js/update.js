/**
 * modify.jsp 스크립트
 */
$(function(){
	
	
	//remove와 list를 위한 form 가져오기
	var operForm = $("#operForm");
	
	
	$("button").click(function(e){
		//버튼의 submit 기능 제거
		e.preventDefault();
		
		var oper = $(this).data("oper");
		
		if(oper=="update"){
			operForm.attr('action','/update');
			
		}else if(oper=="remove"){
			operForm.attr('action','/remove');
		}else if(oper=="list"){
			operForm.find("input[name='bno']").remove();
			operForm.attr('method','get');
			operForm.attr('action','/freeBoard');
		}
		operForm.submit();
	})
})