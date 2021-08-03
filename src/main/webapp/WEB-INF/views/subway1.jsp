<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<html>
<head>
<meta charset="utf-8">
<title>travel</title>
	<style type="text/css">
    /* The main DIV for the map */
    .subway-map
    {
        margin: 0;
        width: 780px;
        height: 500px;
    }
    
    #legend span
    {
        margin: 5px 5px 5px 0;
    }
    .subway-map span
    {
        margin: 5px 5px 5px 0;
    }
    </style>
</head>
<body id="subwayBody">
    <div class="subway-map" data-columns="15" data-rows="9" data-cellSize="60" 
    	data-legendId="legend" data-textClass="textSubway" 
    	data-gridNumbers="true" data-grid="false" data-lineWidth="15">
        <ul data-color="#0052A4">
            <li data-coords="1,0.5" data-marker="@station"><a href="#">소요산</a></li>
            <li data-coords="1.5,0.5"></li>   
            <li data-coords="2,0.5" data-marker="@station"><a href="#">동두천</a></li>
            <li data-coords="2.5,0.5"></li>
            <li data-coords="3,0.5" data-marker="@station"><a href="#">보산</a></li>
            <li data-coords="3.5,0.5"></li> 
            <li data-coords="4,0.5" data-marker="@station"><a href="#">동두천중앙</a></li>
            <li data-coords="4.5,0.5"></li> 
            <li data-coords="5,0.5" data-marker="@station"><a href="#">지행</a></li>
            <li data-coords="5.5,0.5"></li> 
            <li data-coords="5.7,0.5" data-marker="@station"><a href="#">덕정</a></li>
            <li data-coords="6,0.5"></li> 
            <li data-coords="6.3,0.5" data-marker="@station"><a href="#">덕계</a></li>
            <li data-coords="6.6,0.5"></li> 
            <li data-coords="6.9,0.5" data-marker="@station" ><a href="#">양주</a></li>
            <li data-coords="7.2,0.5"></li>
            <li data-coords="7.5,0.5" data-marker="@station"><a href="#">녹양</a></li>
            <li data-coords="7.8,0.5"></li>
            <li data-coords="8.1,0.5" data-marker="@station"><a href="#">가능</a></li>
            <li data-coords="8.4,0.5"></li>
            <li data-coords="8.8,0.5" data-marker="@station"><a href="#">의정부</a></li>
            <li data-coords="9.2,0.5"></li>
            <li data-coords="9.5,0.5" data-dir="E"><a href="#">회룡</a></li>
            <li data-coords="9.9,0.5"></li>
            <li data-coords="10.3,0.5" data-dir="E"><a href="#">망월사</a></li>
            
            <li data-coords="10.7,0.5"></li>
            <li data-coords="11.1,0.5"><a href="#">도봉산</a></li>
            <li data-coords="11.5,0.5"></li>
            <li data-coords="11.8,0.5"><a href="#">도봉</a></li>
            <li data-coords="12.1,0.5"></li>
            <li data-coords="12.4,0.5"><a href="#">방학</a></li>
            <li data-coords="12.7,0.5"></li>
            <li data-coords="13,0.5" data-labelpos="E"><a href="#">창동</a></li>
            
            <li data-coords="13,1"></li>
            <li data-coords="13,1.5" data-labelpos="E"><a href="#">녹천</a></li>
            
            <li data-coords="13,2"></li>
            <li data-coords="13,2.5" data-labelpos="E"><a href="#">월계</a></li>
            
            <li data-coords="12.7,2.5"></li>
            <li data-coords="12.4,2.5"><a href="#">광운대</a></li>
            <li data-coords="12.1,2.5"></li>
            <li data-coords="11.8,2.5" data-labelpos="N"><a href="#">석계</a></li>
            <li data-coords="11.5,2.5"></li>
            <li data-coords="11.2,2.5"><a href="#">신이문</a></li>
            <li data-coords="10.9,2.5"></li>
            <li data-coords="10.6,2.5" data-labelpos="N"><a href="#">외대앞</a></li>
            <li data-coords="10.3,2.5"></li>
            <li data-coords="10,2.5"><a href="#">회기</a></li>
            <li data-coords="9.7,2.5"></li>
            <li data-coords="9.4,2.5" data-labelpos="N"><a href="#">청량리</a></li>
            <li data-coords="9.1,2.5"></li>
            <li data-coords="8.8,2.5"><a href="#">제기동</a></li>
            <li data-coords="8.5,2.5"></li>
            <li data-coords="8.2,2.5" data-labelpos="N"><a href="#">신설동</a></li>
            <li data-coords="7.9,2.5"></li>
            <li data-coords="7.6,2.5"><a href="#">동묘앞</a></li>
            <li data-coords="7.3,2.5"></li>
            <li data-coords="7,2.5" data-labelpos="N"><a href="#">동대문</a></li>
            <li data-coords="6.7,2.5"></li>
            <li data-coords="6.4,2.5" ><a href="#">종로5가</a></li>
            <li data-coords="6.1,2.5"></li>
            <li data-coords="5.8,2.5" data-labelpos="N"><a href="#">종로3가</a></li>
            <li data-coords="5.5,2.5"></li>
            <li data-coords="5.2,2.5"><a href="#">종각</a></li>
            <li data-coords="4.9,2.5"></li>
            <li data-coords="4.6,2.5" data-labelpos="N"><a href="#">시청</a></li>
            <li data-coords="4.3,2.5"></li>
            <li data-coords="4.0,2.5"><a href="#">서울</a></li>
            <li data-coords="3.7,2.5"></li>
            <li data-coords="3.4,2.5" data-labelpos="N"><a href="#">남영</a></li>
            <li data-coords="3.1,2.5"></li>
            <li data-coords="2.8,2.5"><a href="#">용산</a></li>
            <li data-coords="2.5,2.5"></li>
            <li data-coords="2.2,2.5" data-labelpos="N"><a href="#">노량진</a></li>
            <li data-coords="1.9,2.5"></li>
            <li data-coords="1.6,2.5"><a href="#">대방</a></li>
            <li data-coords="1.3,2.5"></li>
            <li data-coords="1,2.5" data-labelpos="N"><a href="#">신길</a></li>
            
            <li data-coords="1,2.8"></li>
            <li data-coords="1,3.3" data-labelpos="W"><a href="#">영등포</a></li>
            <li data-coords="1,3.5"></li>
            <li data-coords="1,4" data-labelpos="W"><a href="#">신도림</a></li>
            <li data-coords="1,4.3"></li>
            <li data-coords="1,4.6" data-labelpos="W"><a href="#">구로</a></li>
            
            <!-- 신창행 -->
            <li data-coords="1.2,4.6"></li>
            <li data-coords="1.5,4.6"><a href="#">가산디지털단지</a></li>
            <li data-coords="1.7,4.6"></li>
            <li data-coords="2,4.6" data-labelpos="N"><a href="#">독산</a></li>
            <li data-coords="2.5,4.6"></li>
            <li data-coords="3,4.6"><a href="#">금천구청</a></li>
            <li data-coords="3.2,4.6"></li>
            <li data-coords="3.6,4.6"></li>
       </ul>
       
       <!-- 광명 -->
       <ul data-color="#0052A4">
       		<li data-coords="3.3,4.6"></li>
            <li data-coords="3.3,4.3"></li>
            <li data-coords="3.3,4" data-labelpos="E"><a href="#">광명</a></li>      
       </ul>
       
       <ul data-color="#0052A4">      		
       		<li data-coords="3.5,4.6"></li>
            <li data-coords="3.8,4.6"><a href="#">석수</a></li>
            <li data-coords="4.1,4.6"></li>
            <li data-coords="4.4,4.6"><a href="#">관악</a></li>
            <li data-coords="4.6,4.6"></li>
            <li data-coords="4.9,4.6" data-labelpos="N"><a href="#">안양</a></li>
            <li data-coords="5.1,4.6"></li>
            <li data-coords="5.4,4.6"><a href="#">명학</a></li>
            <li data-coords="5.6,4.6"></li>
            <li data-coords="5.9,4.6" data-labelpos="N"><a href="#">금정</a></li>
            <li data-coords="6.1,4.6"></li>
            <li data-coords="6.4,4.6"><a href="#">군포</a></li>
            <li data-coords="6.6,4.6"></li>
            <li data-coords="6.9,4.6" data-labelpos="N"><a href="#">당정</a></li>
            <li data-coords="7.1,4.6"></li>
            <li data-coords="7.4,4.6"><a href="#">의왕</a></li>
            <li data-coords="7.6,4.6"></li>
            <li data-coords="7.9,4.6" data-labelpos="N"><a href="#">성균관대</a></li>
            <li data-coords="8.1,4.6"></li>
            <li data-coords="8.4,4.6"><a href="#">화서</a></li>
            <li data-coords="8.6,4.6"></li>
            <li data-coords="8.9,4.6" data-labelpos="N"><a href="#">수원</a></li>
            <li data-coords="9.1,4.6"></li>
            <li data-coords="9.4,4.6"><a href="#">세류</a></li>
            <li data-coords="9.6,4.6"></li>
            <li data-coords="9.9,4.6"><a href="#">병점</a></li>
            <li data-coords="10.1,4.6"></li>
            <li data-coords="10.4,4.6"><a href="#">세마</a></li>
            <li data-coords="10.6,4.6"></li>
            <li data-coords="10.9,4.6" data-labelpos="N"><a href="#">오산대</a></li>
            <li data-coords="11.1,4.6"></li>
            <li data-coords="11.4,4.6"><a href="#">오산</a></li>
            <li data-coords="11.6,4.6"></li>
            <li data-coords="11.9,4.6" data-labelpos="N"><a href="#">진위</a></li>
            <li data-coords="12.1,4.6"></li>
            <li data-coords="12.4,4.6"><a href="#">송탄</a></li>
            <li data-coords="12.6,4.6"></li>
            <li data-coords="12.9,4.6" data-labelpos="N"><a href="#">서정리</a></li>
            <li data-coords="13.1,4.6"></li>
            <li data-coords="13.4,4.6" data-labelpos="E"><a href="#">지제</a></li>
            
            <li data-coords="13.4,5"></li>
            <li data-coords="13.4,5.3" data-labelpos="E"><a href="#">평택</a></li>
            <li data-coords="13.4,5.6"></li>
            <li data-coords="13.4,5.9" data-labelpos="E"><a href="#">성환</a></li>
            <li data-coords="13.4,6.2"></li>
            <li data-coords="13.4,6.5" data-labelpos="E"><a href="#">직산</a></li>
            
            <li data-coords="13.1,6.5"></li>
            <li data-coords="12.8,6.5"><a href="#">두정</a></li>
            <li data-coords="12.5,6.5"></li>
            <li data-coords="12.2,6.5" data-labelpos="N"><a href="#">천안</a></li>
            
            <li data-coords="12.2,6.7"></li>
            <li data-coords="12.2,7" data-labelpos="W"><a href="#">천안</a></li>
            <li data-coords="12.2,7.2"></li>
            <li data-coords="12.2,7.5"><a href="#">봉명</a></li>
            
            <li data-coords="12,7.5"></li>
            <li data-coords="11.5,7.5"><a href="#">쌍용</a></li>
            <li data-coords="11.2,7.5"></li>
            <li data-coords="10.9,7.5"><a href="#">아산</a></li>
            <li data-coords="10.5,7.5"></li>
            <li data-coords="10.1,7.5"><a href="#">배방</a></li>
            <li data-coords="9.5,7.5"></li>
            <li data-coords="9.2,7.5"><a href="#">온양온천</a></li>
            <li data-coords="8.7,7.5"></li>
            <li data-coords="8.3,7.5"><a href="#">신창</a></li>
            
                 
       </ul>
       
       <ul data-color="#0052A4">
       		<li data-coords="9.9,4.6"></li>
            <li data-coords="9.9,3.8" data-labelpos="E"><a href="#">서동탄</a></li>
       </ul>
       
       <ul data-color="#0052A4">
            <!-- 인천행 -->
            <li data-coords="1,4"></li>
            <li data-coords="1,4.3"></li>
            <li data-coords="1,5.5"></li>
            <li data-coords="1,6.5" data-labelpos="W"><a href="#">구일</a></li>
            
            <li data-coords="1.2,6.5"></li>
            <li data-coords="1.5,6.5"><a href="#">개봉</a></li>
            <li data-coords="1.7,6.5"></li>
            <li data-coords="2,6.5" data-labelpos="N"><a href="#">오류동</a></li>
            <li data-coords="2.2,6.5"></li>
            <li data-coords="2.5,6.5"><a href="#">온수</a></li>
            <li data-coords="2.7,6.5"></li>
            <li data-coords="3,6.5" data-labelpos="N"><a href="#">역곡</a></li>
            <li data-coords="3.2,6.5"></li>
            <li data-coords="3.5,6.5"><a href="#">소사</a></li>
            <li data-coords="3.7,6.5"></li>
            <li data-coords="4,6.5" data-labelpos="N"><a href="#">부천</a></li>
            <li data-coords="4.2,6.5"></li>
            <li data-coords="4.5,6.5"><a href="#">중동</a></li>
            <li data-coords="4.7,6.5"></li>
            <li data-coords="5,6.5" data-labelpos="N"><a href="#">송내</a></li>
            <li data-coords="5.2,6.5"></li>
            <li data-coords="5.5,6.5"><a href="#">부개</a></li>
            <li data-coords="5.7,6.5"></li>
            <li data-coords="6,6.5" data-labelpos="N"><a href="#">부평</a></li>
            <li data-coords="6.2,6.5"></li>
            <li data-coords="6.5,6.5"><a href="#">백운</a></li>
            <li data-coords="6.7,6.5"></li>
            <li data-coords="7,6.5" data-labelpos="N"><a href="#">동암</a></li>
            <li data-coords="7.2,6.5"></li>
            <li data-coords="7.5,6.5"><a href="#">간석</a></li>
            <li data-coords="7.7,6.5"></li>
            <li data-coords="8,6.5" data-labelpos="N"><a href="#">주안</a></li>
            <li data-coords="8.2,6.5"></li>
            <li data-coords="8.5,6.5"><a href="#">도화</a></li>
            <li data-coords="8.7,6.5"></li>
            <li data-coords="9,6.5" data-labelpos="N"><a href="#">제물포</a></li>
            <li data-coords="9.2,6.5"></li>
            <li data-coords="9.5,6.5"><a href="#">도원</a></li>
            <li data-coords="9.7,6.5"></li>
            <li data-coords="10,6.5" data-labelpos="N"><a href="#">동인천</a></li>
            <li data-coords="10.2,6.5"></li>
            <li data-coords="10.5,6.5"><a href="#">인천</a></li>
           
            
                       
        </ul>     
    </div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script type="text/javascript" src="/resources/js/jquery.subwayMap-0.5.3.js"></script>
<script type="text/javascript">
	$(".subway-map").subwayMap({
		debug : true
	});
	
	//지하철 역 이름 클릭시
	$("div.subway-map").on("click", "a", function(e) {
		e.preventDefault();
		console.log($(this).html());
		let subway_name = ($(this).html());
		var link = "/foodlist?subway_name=" + subway_name;
		window.location.herf = link;
		window.open(link, "_self");
	})
</script>