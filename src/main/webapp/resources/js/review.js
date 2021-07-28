/**
 * 댓글 스크립트 - 자바스크립트 모듈(관련 있는 함수 모임) 구성
 */

var replyService=(function(){
	//private
	function getList(param,callback){
		
		var storeid = param.storeid;
		var page = param.page || 1;
		
		$.getJSON({
			url:'/food/pages/'+storeid+'/'+page,
			success:function(data){
				if(callback){
					callback(data.list);
				}
			}
		})
	} //getList 종료
	
	
	function remove(rno,replyer,callback){
		
		$.ajax({
			url:'/replies/'+rno,
			type:'delete',
			beforeSend:function(xhr){
				xhr.setRequestHeader(csrfHeaderName,csrfTokenValue);
			},
			contentType:"application/json",
			data:JSON.stringify({
				replyer:replyer
			}),
			success:function(result){
				if(callback){
					callback(result);
				}
			}
		})
	} //remove 종료
	
	
	function update(reply,callback){
		
		$.ajax({
			url:'/replies/'+reply.rno,
			type:'put',
			beforeSend:function(xhr){
				xhr.setRequestHeader(csrfHeaderName,csrfTokenValue);
			},
			data:JSON.stringify(reply),
			contentType:'application/json',
			success:function(result){
				if(callback){
					callback(result);
				}
			}
		})
		
	} //update 종료
	
	
	function get(rno,callback){
		$.getJSON({
			url:'/replies/'+rno,
			success:function(data){
				if(callback){
					callback(data);
				}
			}
		})
	} // get 종료

	//public
	return{
		getList:getList,
		remove:remove,
		update:update,
		get:get,
	}
})();