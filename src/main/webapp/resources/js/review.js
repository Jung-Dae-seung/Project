/**
 * 댓글 스크립트 - 자바스크립트 모듈(관련 있는 함수 모임) 구성
 */

var reviewService=(function(){
	//private1
	
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
	
	function getStar(param,callback){
		
		var storeid = param.storeid;
		
		$.getJSON({
			url:'/food/pages/'+storeid,
			success:function(data){
				if(callback){
					callback(data.reviewCnt,data.list);
				}
			}
		})
	} //getStar 종료
	
	
	function getList(param,callback){
		
		var storeid = param.storeid;
		var page = param.page || 1;
		
		$.getJSON({
			url:'/food/pages/'+storeid+'/'+page,
			success:function(data){
				if(callback){
					callback(data.reviewCnt,data.list);
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
	
		function displayTime(timeValue){
		var today = new Date();
		
		var gap = today.getTime() - timeValue;
		var dateObj = new Date(timeValue);
		
		if(gap<(1000*60*60*24)){ //댓글 단 날짜가 오늘이면 시분초
			var hh = dateObj.getHours();
			var mi = dateObj.getMinutes();
			var ss = dateObj.getSeconds();
			
			return [(hh>9?'':'0')+hh, ':', (mi>9?'':'0')+mi,':',(ss>9?'':'0')+ss].join('');
		}else{ //오늘이 아닌 경우 년/월/일
			var yy = dateObj.getFullYear();
			var mm = dateObj.getMonth()+1;
			var dd = dateObj.getDate();
			
			
			return [yy,'/',(mm>9?'':'0')+mm,'/',(dd>9?'':'0')+dd].join('');
		}
	}
	
	
	
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
		displayTime:displayTime,
		getStar:getStar
	}
})();