/**
 * 댓글 스크립트 - 자바스크립트 모듈(관련 있는 함수 모임) 구성
 */

var reviewService=(function(){
	//private
	
		function add(review,callback){
		console.log("add method 호출");	
		
		$.ajax({
			type:'post',
			beforeSend:function(xhr){
				xhr.setRequestHeader(csrfHeaderName,csrfTokenValue);
			},
			url:'/food/new',
			contentType:'application/json',
			data:JSON.stringify(review),
			success:function(result){
				if(callback){
					callback(result);
				}
			}
		})
	}
	
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
	
	
	function remove(bno,reviewer,callback){
		
		$.ajax({
			url:'/food/'+bno,
			type:'delete',
			beforeSend:function(xhr){
				xhr.setRequestHeader(csrfHeaderName,csrfTokenValue);
			},
			contentType:"application/json",
			data:JSON.stringify({
				reviewer:reviewer
			}),
			success:function(result){
				if(callback){
					callback(result);
				}
			}
		})
	} //remove 종료
	
	
	function update(review,callback){
		
		$.ajax({
			url:'/food/'+review.bno,
			type:'put',
			beforeSend:function(xhr){
				xhr.setRequestHeader(csrfHeaderName,csrfTokenValue);
			},
			data:JSON.stringify(review),
			contentType:'application/json',
			success:function(result){
				if(callback){
					callback(result);
				}
			}
		})
		
	} //update 종료
	
	
	function get(bno,callback){
		$.getJSON({
			url:'/food/'+bno,
			success:function(data){
				if(callback){
					callback(data);
				}
			}
		})
	} // get 종료

	//public
	return{
		add:add,
		getList:getList,
		remove:remove,
		update:update,
		get:get,
	}
})();