/**
 * 
 */
$(function(){
	//리뷰 정렬 보여줄 영역
	let reviewarray = $("#reviewarray");
	
	//별점 평균 보여줄 영역 가져오기
	let staraverage = $("#staraverage");
	staraver();
		
	//리뷰가 보여질 영역 가져오기
	let reviewUl = $(".reviews");
	showList(1);
	$("#newarray").css("color","red");
	
	//모달 영역 가져오기
	let modal = $(".modal");
	
	//한개의 리뷰 보여지는 모달창에 있는 값 가져오기
	let modalReview = modal.find("textarea[name='review']");
	let modalStar = modal.find("input[name='star']");
	let modalReviewer = modal.find("input[name='reviewer']");
	let modalStoreid = modal.find("input[name='storeid']");
	
	//모달 영역 안에 있는 button 가져오기
	let RegisterBtn = $("#RegisterBtn");
	let ModifyBtn = $("#ModifyBtn");
	let RemoveBtn = $("#RemoveBtn");
	
	//최신순 정렬 클릭시
	$("#newarray").click(function(e){
		e.preventDefault();
		$(this).css("color","red");
		$("#highstararray").css("color","");
		$("#lowstararray").css("color","");
		staraver();
		showList(1);
	})
	
	//평점 높은순 정렬 클릭시
	$("#highstararray").click(function(e){
		e.preventDefault();
		$(this).css("color","red");
		$("#newarray").css("color","");
		$("#lowstararray").css("color","");
		staraver();
		highStarArrayList(1);

	})
	
	//평점 낮은순 정렬 클릭시
	$("#lowstararray").click(function(e){
		e.preventDefault();
		$(this).css("color","red");
		$("#highstararray").css("color","");
		$("#newarray").css("color","");
		staraver();
		lowStarArrayList(1);

	})
	
	//전체 별점 평균 구하기
	function staraver(){
		reviewService.getStar({storeid:storeID},function(total,data){
			
			if(data==null||data.length==0){
				staraverage.html("<h5>리뷰가 아직 없습니다! 첫 리뷰를 작성해보세요!</h5>");
				return;
			}
			var str2="";
			var star2=0;
			for(var i=0,len=data.length;i<len;i++){
					//console.log("스타 : "+data[i].star)
					star2 += data[i].star			
			}
			//console.log("스타 ++++: "+star2);
			//console.log("스타 평균: "+star2/total);
			
			var star3 = Math.round(star2/total);
			var star2 = (star2/total).toFixed(2);
			//console.log(star2)
			//console.log("스타 평균 정수 반올림: "+star3);
			
			if(star3 == 1){
				str2 +="<p>총 "+total+"개 리뷰 ("+star2+"/5.0)</p>"
				str2 +="<span class='fa fa-star star-active mx-1'></span>"
				str2 +="<span class='fa fa-star star-inactive mx-1'></span>"
				str2 +="<span class='fa fa-star star-inactive mx-1'></span>"
				str2 +="<span class='fa fa-star star-inactive mx-1'></span>"
				str2 +="<span class='fa fa-star star-inactive mx-1'></span>"
			} else if(star3 == 2){
				str2 +="<p>총 "+total+"개 리뷰 ("+star2+"/5.0)</p>"
				str2 +="<span class='fa fa-star star-active mx-1'></span>"
				str2 +="<span class='fa fa-star star-active mx-1'></span>"
				str2 +="<span class='fa fa-star star-inactive mx-1'></span>"
				str2 +="<span class='fa fa-star star-inactive mx-1'></span>"
				str2 +="<span class='fa fa-star star-inactive mx-1'></span>"
			} else if(star3 == 3) {
				str2 +="<p>총 "+total+"개 리뷰 ("+star2+"/5.0)</p>"
				str2 +="<span class='fa fa-star star-active mx-1'></span>"
				str2 +="<span class='fa fa-star star-active mx-1'></span>"
				str2 +="<span class='fa fa-star star-active mx-1'></span>"
				str2 +="<span class='fa fa-star star-inactive mx-1'></span>"
				str2 +="<span class='fa fa-star star-inactive mx-1'></span>"
			} else if(star3 == 4) {
				str2 +="<p>총 "+total+"개 리뷰 ("+star2+"/5.0)</p>"
				str2 +="<span class='fa fa-star star-active mx-1'></span>"
				str2 +="<span class='fa fa-star star-active mx-1'></span>"
				str2 +="<span class='fa fa-star star-active mx-1'></span>"
				str2 +="<span class='fa fa-star star-active mx-1'></span>"
				str2 +="<span class='fa fa-star star-inactive mx-1'></span>"
			} else if(star3 == 5) {
				str2 +="<p>총 "+total+"개 리뷰 ("+star2+"/5.0)</p>"
				str2 +="<span class='fa fa-star star-active mx-1'></span>"
				str2 +="<span class='fa fa-star star-active mx-1'></span>"
				str2 +="<span class='fa fa-star star-active mx-1'></span>"
				str2 +="<span class='fa fa-star star-active mx-1'></span>"
				str2 +="<span class='fa fa-star star-active mx-1'></span>"
			}
			//console.log(str2);
			staraverage.html(str2);
		})
	}
	function lowStarArrayList(page){
		
		//리뷰 목록 낮은 평점 순으로 가져오기
		reviewService.lowStarList({storeid:storeID,page:page||1},function(total,data){
			var check = "lowStar";
			console.log(total);
			console.log(data);
			
			if(page==-1){
				//마지막 페이지 계산
				pageNum=Math.ceil(total/5.0);
				lowStarArrayList(pageNum);
				return;
			}
			
			if(page==1) {
				//첫페이지
				pageNum=1;
			}
			
			//리뷰 없는 경우
			if(data==null||data.length==0){
				reviewUl.html("");
				return;
			}
			
			
			//리뷰 있는 경우
			var str="";
			for(var i=0,len=data.length||0;i<len;i++){
				
				str +="<li data-bno='"+data[i].bno+"'>";
				str +="<div class='card'>";
				str +="<div class='row d-flex'>";
				str +="<div class='d-flex flex-column'>";
				str +="<h3 class='mt-2 mb-0'>"+data[i].reviewer+"</h3>";
				str +="<div>";
				if(data[i].star == 1){
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-inactive mx-1'></span>"
					str +="<span class='fa fa-star star-inactive mx-1'></span>"
					str +="<span class='fa fa-star star-inactive mx-1'></span>"
					str +="<span class='fa fa-star star-inactive mx-1'></span>"
				} else if(data[i].star == 2){
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-inactive mx-1'></span>"
					str +="<span class='fa fa-star star-inactive mx-1'></span>"
					str +="<span class='fa fa-star star-inactive mx-1'></span>"
				} else if(data[i].star == 3) {
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-inactive mx-1'></span>"
					str +="<span class='fa fa-star star-inactive mx-1'></span>"
				} else if(data[i].star == 4) {
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-inactive mx-1'></span>"
				} else if(data[i].star ==5) {
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-active mx-1'></span>"
				}
				str +="</div>";
				str +="</div>";
				str +="<div class='ml-auto'>";
				str +="<p class='text-muted pt-5 pt-sm-3'>"+reviewService.displayTime(data[i].reviewDate)+"</p>";
				str +="</div>";
				str +="</div>";
				str +="<div class='row text-left'>";
				str +="<p class='content mt-3'>"+data[i].review+"</p>";
				str +="</div>";
				str +="</div>";
				str +="</li>";
			}
			
			reviewUl.html(str);
			showReviewPage(total,check);
			
		})
	}
	
	function highStarArrayList(page){
		
		//리뷰 목록 높은 평점 순으로 가져오기
		reviewService.highStarList({storeid:storeID,page:page||1},function(total,data){
			var check = "highStar";
			console.log(total);
			console.log(data);
			
			if(page==-1){
				//마지막 페이지 계산
				pageNum=Math.ceil(total/5.0);
				highStarArrayList(pageNum);
				return;
			}
			
			if(page==1) {
				pageNum=1;
			}
			
			//리뷰 없는 경우
			if(data==null||data.length==0){
				reviewUl.html("");
				return;
			}
			
			
			//리뷰 있는 경우
			var str="";
			for(var i=0,len=data.length||0;i<len;i++){
				
				str +="<li data-bno='"+data[i].bno+"'>";
				str +="<div class='card'>";
				str +="<div class='row d-flex'>";
				str +="<div class='d-flex flex-column'>";
				str +="<h3 class='mt-2 mb-0'>"+data[i].reviewer+"</h3>";
				str +="<div>";
				if(data[i].star == 1){
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-inactive mx-1'></span>"
					str +="<span class='fa fa-star star-inactive mx-1'></span>"
					str +="<span class='fa fa-star star-inactive mx-1'></span>"
					str +="<span class='fa fa-star star-inactive mx-1'></span>"
				} else if(data[i].star == 2){
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-inactive mx-1'></span>"
					str +="<span class='fa fa-star star-inactive mx-1'></span>"
					str +="<span class='fa fa-star star-inactive mx-1'></span>"
				} else if(data[i].star == 3) {
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-inactive mx-1'></span>"
					str +="<span class='fa fa-star star-inactive mx-1'></span>"
				} else if(data[i].star == 4) {
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-inactive mx-1'></span>"
				} else if(data[i].star ==5) {
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-active mx-1'></span>"
				}
				str +="</div>";
				str +="</div>";
				str +="<div class='ml-auto'>";
				str +="<p class='text-muted pt-5 pt-sm-3'>"+reviewService.displayTime(data[i].reviewDate)+"</p>";
				str +="</div>";
				str +="</div>";
				str +="<div class='row text-left'>";
				str +="<p class='content mt-3'>"+data[i].review+"</p>";
				str +="</div>";
				str +="</div>";
				str +="</li>";
			}
			
			reviewUl.html(str);
			showReviewPage(total,check);
			
		})
	}
	
	//리뷰 기본(평점 높은순) 리스트
	function showList(page){
		
		//리뷰 목록 최신순으로 가져오기
		reviewService.getList({storeid:storeID,page:page||1},function(total,data){
			var check = "list";
			console.log(total);
			console.log(data);
			
			if(page==-1){
				//마지막 페이지 계산
				pageNum=Math.ceil(total/5.0);
				showList(pageNum);
				return;
			}
			
			if(page==1) {
				pageNum=1;
			}
			
			//리뷰 없는 경우
			if(data==null||data.length==0){
				reviewUl.html("");
				return;
			}
			
			
			//리뷰 있는 경우
			var str="";
			for(var i=0,len=data.length||0;i<len;i++){
				
				str +="<li data-bno='"+data[i].bno+"'>";
				str +="<div class='card'>";
				str +="<div class='row d-flex'>";
				str +="<div class='d-flex flex-column'>";
				str +="<h3 class='mt-2 mb-0'>"+data[i].reviewer+"</h3>";
				str +="<div>";
				if(data[i].star == 1){
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-inactive mx-1'></span>"
					str +="<span class='fa fa-star star-inactive mx-1'></span>"
					str +="<span class='fa fa-star star-inactive mx-1'></span>"
					str +="<span class='fa fa-star star-inactive mx-1'></span>"
				} else if(data[i].star == 2){
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-inactive mx-1'></span>"
					str +="<span class='fa fa-star star-inactive mx-1'></span>"
					str +="<span class='fa fa-star star-inactive mx-1'></span>"
				} else if(data[i].star == 3) {
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-inactive mx-1'></span>"
					str +="<span class='fa fa-star star-inactive mx-1'></span>"
				} else if(data[i].star == 4) {
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-inactive mx-1'></span>"
				} else if(data[i].star ==5) {
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-active mx-1'></span>"
					str +="<span class='fa fa-star star-active mx-1'></span>"
				}
				str +="</div>";
				str +="</div>";
				str +="<div class='ml-auto'>";
				str +="<p class='text-muted pt-5 pt-sm-3'>"+reviewService.displayTime(data[i].reviewDate)+"</p>";
				str +="</div>";
				str +="</div>";
				str +="<div class='row text-left'>";
				str +="<p class='content mt-3'>"+data[i].review+"</p>";
				str +="</div>";
				str +="</div>";
				str +="</li>";
			}
			
			reviewUl.html(str);
			showReviewPage(total,check);
			
			//console.log(check);
			//console.log(str);
			//console.log(data);
			
		})
	}

	//페이지 나누기
	//리뷰 페이지 영역 가져오기
	var reviewPageFooter=$("#panel-footer");
	var pageNum = 1;
	function showReviewPage(total,check){
		//console.log("페이지 나누기 체크체크 : "+check);
		//마지막 페이지 계산
		console.log("페이지 나누기 페이지 넘버 확인 : "+pageNum);
		var endPage = Math.ceil(pageNum/5.0)*5;
		//시작 페이지 계
		var startPage = endPage-4;
		//이전 버튼
		var prev = startPage!=1;
		//다음 버튼
		var next = false;
		
		if(endPage * 5 >= total){
			endPage = Math.ceil(total/5.0);
		}
		if(endPage * 5 <total){
			next = true;
		}
		var str = "<input type='hidden' value="+check+" id='check'/>";
			str += "<ul class='pagination pull-right'>";
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
	
	
	//리뷰 페이지 번호 클릭시
	reviewPageFooter.on("click","li a",function(e){
		e.preventDefault(); //a 태그 동작 막기
		var check = $("#check").val(); // 정렬별 리뷰페이지 호출 구분
		
		console.log("하단 페이지 나누기 클릭시 체크 : "+check);
		pageNum = $(this).attr("href");
		
		if(check == "list"){
			showList(pageNum);
		}else if(check == "lowStar") {
			lowStarArrayList(pageNum);
		}else if(check == "highStar"){
			highStarArrayList(pageNum);
		}
	})




	//리뷰삽입 - bno, review(리뷰 내용), reviewer(작성자)
	$("#RegisterBtn").click(function(){
		
		//food.jsp 리뷰 입력 받은 값!
		var form = $("form");	
		
			
		let review_text = form.find("textarea[name='review']").val();
		let star = form.find("input[name='star']:checked").last().val();
		
		
		
		//리뷰작성자, 리뷰 내용, 별점 가져오기
		var review = {
			review:review_text,
			reviewer:reviewer,
			star:star,
			storeid:storeID
		};
		
		reviewService.add(review,function(result){
			
			/*if(result){
				alert(result);
			}*/
			showList(1);
			staraver();
			
			
		}); //add 종료
		
		form.find("textarea[name='review']").val("");
		form.find("input[name='star']").prop('checked',false);
		
	}) //modalRegisterBtn 종료
	
	
	
	//리뷰 수정
	$("#ModifyBtn").click(function(){
		
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
			alert("자신의 리뷰만 수정이 가능합니다.");
			modal.modal("hide");
			return;
		}
		
		var review = {
			bno:modal.data("bno"),
			review:modalReview.val(),
			reviewer:modalReviewer.val(),
			star:modal.find("input[name='star']:checked").last().val(),
			storeid:modalStoreid.val()
		};
		
		
		reviewService.update(review,function(result){
			/*if(result){
				alert(result);
			}*/
			
			//모달창닫기, showList호출
			modal.modal("hide");
			
			var check = $("#check").val(); // 정렬별 리뷰페이지 호출 구분
			//console.log("수정 후 정렬 호출 체크 : "+check);
			if(check == "list"){
				showList(pageNum);
			}else if(check == "lowStar") {
				lowStarArrayList(pageNum);
			}else if(check == "highStar"){
				highStarArrayList(pageNum);
			}
			
			staraver();
			
		});
	}) //#modalModifyBtn 종료
	
	
	//리뷰 삭제
	$("#RemoveBtn").click(function(){
		
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
			alert("자신의 리뷰만 삭제가 가능합니다.");
			modal.modal("hide");
			return;
		}
		
		//rno가져오기
		var bno = modal.data("bno");
		
		reviewService.remove(bno,oriReviewer,function(result){
			//alert(result);
			
			//모달창 닫기
			modal.modal("hide");
			
			var check = $("#check").val(); // 정렬별 리뷰페이지 호출 구분
			//console.log("삭제 후 정렬 호출 체크 : "+check);
			if(check == "list"){
				showList(pageNum);
			}else if(check == "lowStar") {
				lowStarArrayList(pageNum);
			}else if(check == "highStar"){
				highStarArrayList(pageNum);
			}
					
			staraver();
		});
		
	}) //#modalRemoveBtn 종료
	
	
	//이벤트 위임 : li 태그는 나중에 생기는 요소이기 떄문에 ul에 먼저 이벤트를 건 후 li에게 넘겨주는 방식
	 $(reviewUl).on("click","li",function(){
		
		//현재 클릭된 li요소의 rno 가져오기
		var bno = $(this).data("bno");
		
		reviewService.get(bno,function(data){
			console.log(data);
			
			//리뷰 모달창에 보여주기
			modalReview.val(data.review);
			modalReviewer.val(data.reviewer);	
			modalStoreid.val(data.storeid);		
					
			$.each(modalStar,function(idx,item){
				if(idx<data.star){	
					$(this).prop("checked","true");
				}
			})
			
			modal.data("bno",data.bno);
			//작성 날짜 영역 보여주기 => 등록 후 댓글을 보는 작업
			//modalReviewDate.closest("div").show();
			modal.find('button').show();
			
			modal.modal("show");
	})
	})
	
})
