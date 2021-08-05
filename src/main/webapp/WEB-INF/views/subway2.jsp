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
    <div class="subway-map" data-columns="13" data-rows="8" data-cellSize="60" 
    	data-legendId="legend" data-textClass="textSubway" 
    	data-gridNumbers="true" data-grid="false" data-lineWidth="15">
        <ul data-color="#33a23d">
            <li data-coords="8.5,1"></li>   
            <li data-coords="9,1 " data-marker="@station"><a href="#">신설동</a></li>
            <li data-coords="9.5,1"></li>   
            <li data-coords="10,1 " data-marker="@station" data-labelpos="N"><a href="#">용두</a></li>
            <li data-coords="10.5,1"></li>   
            <li data-coords="11,1 " data-marker="@station"><a href="#">신답</a></li>
            <li data-coords="11.5,1"></li>   
            <li data-coords="12,1 " data-marker="@station" data-labelpos="N"><a href="#">용답</a></li>
            <li data-coords="12.5,1"></li>
            
            <li data-coords="12.5,2.5"></li>   
            <li data-coords="12.5,2.5" data-marker="@station" data-labelpos="E"><a href="#">성수</a></li>
            <li data-coords="12.2,2.5"></li>   
            <li data-coords="11.9,2.5" data-marker="@station"><a href="#">뚝섬</a></li>
            <li data-coords="11.6,2.5"></li>   
            <li data-coords="11.3,2.5" data-marker="@station" data-labelpos="N"><a href="#">한양대</a></li>
            <li data-coords="11,2.5"></li>   
            <li data-coords="10.7,2.5" data-marker="@station"><a href="#">왕십리</a></li>
            <li data-coords="10.4,2.5"></li>   
            <li data-coords="10.1,2.5" data-marker="@station" data-labelpos="N"><a href="#">상왕십리</a></li>
            <li data-coords="9.8,2.5"></li>   
            <li data-coords="9.5,2.5" data-marker="@station"><a href="#">신당</a></li>
            <li data-coords="9,2.5"></li>   
            <li data-coords="8.6,2.5" data-marker="@station" data-labelpos="N"><a href="#">동대문역사문화공원</a></li>
            <li data-coords="8.1,2.5"></li>   
            <li data-coords="7.6,2.5" data-marker="@station"><a href="#">을지로4가</a></li>
            <li data-coords="7.3,2.5"></li>   
            <li data-coords="7,2.5" data-marker="@station" data-labelpos="N"><a href="#">을지로3가</a></li>
            <li data-coords="6.7,2.5"></li>   
            <li data-coords="6.4,2.5" data-marker="@station"><a href="#">을지로입구</a></li>
            <li data-coords="6.1,2.5"></li>   
            <li data-coords="5.8,2.5" data-marker="@station" data-labelpos="N"><a href="#">시청</a></li>
            <li data-coords="5.5,2.5"></li>   
            <li data-coords="5.2,2.5" data-marker="@station"><a href="#">충정로</a></li>
            <li data-coords="4.9,2.5"></li>   
            <li data-coords="4.6,2.5" data-marker="@station" data-labelpos="N"><a href="#">아현</a></li>
            <li data-coords="4.3,2.5"></li>   
            <li data-coords="4,2.5" data-marker="@station"><a href="#">이대</a></li>
            <li data-coords="3.7,2.5"></li>   
            <li data-coords="3.4,2.5" data-marker="@station" data-labelpos="N"><a href="#">신촌</a></li>
            <li data-coords="3.1,2.5"></li>   
            <li data-coords="2.9,2.5" data-marker="@station"><a href="#">홍대입구</a></li>
            <li data-coords="2.6,2.5"></li>   
            <li data-coords="2.3,2.5" data-marker="@station" data-labelpos="N"><a href="#">합정</a></li>
            <li data-coords="2,2.5"></li>   
            <li data-coords="1.7,2.5" data-marker="@station"><a href="#">당산</a></li>
            <li data-coords="1.4,2.5"></li>
            
            <li data-coords="1,2.5"></li>   
            <li data-coords="1,3" data-marker="@station" data-labelpos="W"><a href="#">영등포구청</a></li>
            <li data-coords="1,3.5"></li>   
            <li data-coords="1,4" data-marker="@station" data-labelpos="W"><a href="#">문래</a></li>
            <li data-coords="1,4.5"></li>   
            <li data-coords="1,5.2" data-marker="@station" data-labelpos="W"><a href="#">신도림</a></li>
            
            <li data-coords="1,5.2"></li>   
            <li data-coords="1.7,5.2" data-marker="@station"><a href="#">대림</a></li>
            <li data-coords="2,5.2"></li>   
            <li data-coords="2.5,5.2" data-marker="@station" data-labelpos="N"><a href="#">구로디지털단지</a></li>        
            <li data-coords="3,5.2"></li>   
            <li data-coords="3.3,5.2" data-marker="@station"><a href="#">신대방</a></li>
            <li data-coords="3.7,5.2"></li>   
            <li data-coords="4,5.2" data-marker="@station"><a href="#">신림</a></li>
            <li data-coords="4.3,5.2"></li>   
            <li data-coords="4.6,5.2" data-marker="@station"><a href="#">봉천</a></li>
            <li data-coords="4.9,5.2"></li>   
            <li data-coords="5.2,5.2" data-marker="@station" data-labelpos="N"><a href="#">서울대입구</a></li>
            <li data-coords="5.5,5.2"></li>   
            <li data-coords="5.8,5.2" data-marker="@station"><a href="#">낙성대</a></li>
            <li data-coords="6.1,5.2"></li>   
            <li data-coords="6.4,5.2" data-marker="@station" data-labelpos="N"><a href="#">사당</a></li>
            <li data-coords="6.7,5.2"></li>   
            <li data-coords="7,5.2" data-marker="@station"><a href="#">방배</a></li>
            <li data-coords="7.3,5.2"></li>   
            <li data-coords="7.6,5.2" data-marker="@station" data-labelpos="N"><a href="#">서초</a></li>
            <li data-coords="7.9,5.2"></li>   
            <li data-coords="8.2,5.2" data-marker="@station"><a href="#">교대</a></li>
            <li data-coords="8.5,5.2"></li>   
            <li data-coords="8.8,5.2" data-marker="@station" data-labelpos="N"><a href="#">강남</a></li>
            <li data-coords="9.1,5.2"></li>   
            <li data-coords="9.4,5.2" data-marker="@station"><a href="#">역삼</a></li>
            <li data-coords="9.7,5.2"></li>   
            <li data-coords="10,5.2" data-marker="@station" data-labelpos="N"><a href="#">선릉</a></li>
            <li data-coords="10.3,5.2"></li>   
            <li data-coords="10.6,5.2" data-marker="@station"><a href="#">삼성</a></li>
            <li data-coords="10.9,5.2"></li>   
            <li data-coords="11.2,5.2" data-marker="@station" data-labelpos="N"><a href="#">종합운동장</a></li>
            <li data-coords="11.5,5.2"></li>   
            <li data-coords="11.8,5.2" data-marker="@station"><a href="#">신천</a></li>
            <li data-coords="12.1,5.2"></li>   
            <li data-coords="12.5,5.2" data-marker="@station"><a href="#">잠실</a></li>
            
            <li data-coords="12.5,5.2"></li>   
            <li data-coords="12.5,4.6" data-marker="@station" data-labelpos="E"><a href="#">잠실나루</a></li>
            <li data-coords="12.5,4.3"></li>   
            <li data-coords="12.5,4.1" data-marker="@station" data-labelpos="E"><a href="#">강변</a></li>
            <li data-coords="12.5,3.7"></li>   
            <li data-coords="12.5,3.5" data-marker="@station" data-labelpos="E"><a href="#">구의</a></li>
            <li data-coords="12.5,3.2"></li>   
            <li data-coords="12.5,3" data-marker="@station" data-labelpos="E"><a href="#">건대입구</a></li>
            <li data-coords="12.5,2.5"></li>   
           	
        </ul>  
        <ul data-color="#33a23d">
        	<li data-coords="1,5.2"></li>  
        	<li data-coords="1,7"></li>   
            <li data-coords="2,7" data-marker="@station"><a href="#">도림천</a></li>
            <li data-coords="2.5,7"></li>
            <li data-coords="3,7" data-marker="@station" data-labelpos="N"><a href="#">양천구청</a></li>
            <li data-coords="3.5,7"></li>
            <li data-coords="4,7" data-marker="@station"><a href="#">신정네거리</a></li>
            <li data-coords="4.5,7"></li>
            <li data-coords="5,7" data-marker="@station" data-labelpos="N"><a href="#">까치산</a></li>
            <li data-coords="5.5,7"></li>
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