/**
 * 
 */
$(function(){
	//리뷰가 보여질 영역 가져오기
	let reviewUl = $("#reviews");
	showList(1);
	
	
		//모달 영역 가져오기
	let modal = $(".modal");
	
		//food.jsp 리뷰 입력 받은 값
	let review = $("#review");
	
	//한개의 리뷰 보여지는 모달창에 있는 값 가져오기
	let modalReview = modal.find("");
	let modalReviewer = modal.find("");
	let modalReviewDate = modal.find("");
	let modalStar = modal.find("");

	
	//모달 영역 안에 있는 button 가져오기
	let RegisterBtn = $("#RegisterBtn");
	let modalModifyBtn = $("#modalModifyBtn");
	let modalRemoveBtn = $("#modalRemoveBtn");
	
	function showList(page){
		//리뷰 목록 가져오기
		reviewService.getList({storeid:storeid,page:page||1},function(total,data){
			console.log(total);
			console.log(data);
			
			if(page==-1){
				//마지막 페이지 계산
				pageNum=Math.ceil(total/10.0);
				showList(pageNum);
				return;
			}
			
			//리뷰 없는 경우
			if(data==null||data.length==0){
				reviewUl.html("");
				return;
			}
			
			
			
			//댓글이 있는 경우
			var str="";
			for(var i=0,len=data.length||0;i<len;i++){
				str += "<li class='left clearfix' data-bno='"+data[i].bno+"'>";
				str += "<div>";
				str += "<div class='header'>";
				str += "<strong class='primary-font'>"+data[i].reviewer+"</strong>";
				str += "<small class='pull-right text-muted'>"+replyService.displayTime(data[i].replydate)+"</small>";
				str += "<p>"+data[i].review+"</p>";
				str += "</div></div></li>";
			}
			reviewUl.html(str);
			showReviewPage(total);
			
		})
	}
	
	//페이지 나누기
	//댓글 페이지 영역 가져오기
	var reviewPageFooter=$(".panel-footer");
	var pageNum = 1;
	function showReviewPage(total){
		//마지막 페이지 계산
		var endPage = Math.ceil(pageNum/10.0)*10;
		//시작 페이지 계싼
		var startPage = endPage-9;
		//이전 버튼
		var prev = startPage!=1;
		//다음 버튼
		var next = false;
		
		if(endPage * 10 >= total){
			endPage = Math.ceil(total/10.0);
		}
		if(endPage * 10 <total){
			next = true;
		}
		
		var str = "<ul class='pagination pull-right'>";
		if(prev){
			str += "<li class='page-item'><a class='page-link' href='"+(startPage-1)+"'>Prev</a></li>";
		}
		for(var i=startPage;i<=endPage;i++){
			var active = pageNum == i?"active":"";
			str += "<li class='page-item "+active+"'>";
			str += "<a class='page-link' href='"+i+"'>"+i;
			str += "</a></li>";
		}
		
		if(next){
			str += "<li class='page-item'><a class='page-link' href='"+(endPage+1)+"'>Next</a></li>"
		}
		
		str += "</ul>";
		reviewPageFooter.html(str);
	}
	
	//댓글 페이지 번호 클릭시
	reviewPageFooter.on("click","li a",function(e){
		e.preventDefault(); //a 태그 동작 막기
		
		pageNum = $(this).attr("href");
		showList(pageNum);
	})

		//댓글 삽입 - bno, reply(댓글 내용), replyer(작성자)
	$("#RegisterBtn").click(function(){
		
		//모달 안에 잇는 댓글 작성자, 댓글 내용 가져오기
		var review = {
			bno:bno,
			review:reivew.val(),
			reviewer:reivewer
		};
		
		reviewService.add(review,function(result){
			
			/*if(result){
				alert(result);
			}*/
			showList(-1);
			
		}); //add 종료
	}) //modalRegisterBtn 종료
	
	
	
	//댓글 수정
	$("#modalModifyBtn").click(function(){
		
		//로그인 여부 확인
		if(!reviewer){
			alert("로그인 한 후 수정이 가능합니다");
			modal.modal("hide");
			return;
		}
		
		//현재 모달창에 있는 작성자와 로그인 사용자가 같은지 확인
		
		//현재 모달창 작성자 가져오기
		var oriReviewer = modalReviewer.val();
		//비교
		if(oriReviewer!=reviewer){
			alert("자신의 댓글만 수정이 가능합니다.");
			modal.modal("hide");
			return;
		}
		
		var review = {
			rno:modal.data("bno"),
			reply:modalReview.val(),
			replyer:modalReviewer.val()
		};
		
		
		reviewService.update(review,function(result){
			/*if(result){
				alert(result);
			}*/
			
			//모달창닫기, showList호출
			modal.modal("hide");
			showList(pageNum);
			
		});
	}) //#modalModifyBtn 종료
	
	
	//댓글 삭제
	$("#modalRemoveBtn").click(function(){
		
		//로그인 여부 확인
		if(!reviewer){
			alert("로그인 한 후 삭제가 가능합니다");
			modal.modal("hide");
			return;
		}
		
		//현재 모달창에 있는 작성자와 로그인 사용자가 같은지 확인
		
		//현재 모달창 작성자 가져오기
		var oriReviewer = modalReviewer.val();
		//비교
		if(oriReviewer!=reviewer){
			alert("자신의 댓글만 삭제가 가능합니다.");
			modal.modal("hide");
			return;
		}
		
		//rno가져오기
		var bno = modal.data("bno");
		
		reviewService.remove(bno,oriReviewer,function(result){
			//alert(result);
			
			//모달창 닫기
			modal.modal("hide");
			showList(pageNum);
		});
		
	}) //#modalRemoveBtn 종료
	
	
	//이벤트 위임 : li 태그는 나중에 생기는 요소이기 떄문에 ul에 먼저 이벤트를 건 후 li에게 넘겨주는 방식
	 $(reviewUl).on("click","li",function(){
		
		//현재 클릭된 li요소의 rno 가져오기
		var bno = $(this).data("bno");
		
		reviewService.get(bno,function(data){
			console.log(data);
			
			//댓글 모달창에 보여주기
			modalReview.val(data.review);
			modalReviewer.val(data.reviewer);
			modalReviewDate.val(reviewService.displayTime(data.reviewdate)).prop("readonly","readonly");
			//rno값 필수로 담기(pk)
			modal.data("bno",data.bno);
			
			//작성 날짜 영역 보여주기 => 등록 후 댓글을 보는 작업
			modalReviewDate.closest("div").show();
			modal.find('button').show();
			modal.find("button[id='modalRegisterBtn']").hide();
			
			modal.modal("show");
		
	})
	
	})
	
})