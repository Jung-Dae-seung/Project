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
        <ul data-color="#EF7C1C">
            <li data-coords="1,1" data-marker="@station"><a href="#">대화</a></li>
            <li data-coords="1.5,1"></li>   
            <li data-coords="2,1 " data-marker="@station"><a href="#">주엽</a></li>
            <li data-coords="2.5,1"></li>
            <li data-coords="3,1 " data-marker="@station"><a href="#">장발산</a></li>
            <li data-coords="3.5,1"></li> 
            <li data-coords="4,1 " data-marker="@station"><a href="#">마두</a></li>
            <li data-coords="4.5,1"></li> 
            <li data-coords="5,1 " data-marker="@station"><a href="#">백석</a></li>
            <li data-coords="5.5,1"></li> 
            <li data-coords="6,1 " data-marker="@station"><a href="#">대곡</a></li>
            <li data-coords="6.5,1"></li> 
            <li data-coords="7,1 " data-marker="@station"><a href="#">화정</a></li>
            <li data-coords="7.5,1"></li> 
            <li data-coords="8,1 " data-marker="@station" data-labelpos="N"><a href="#">원당</a></li>
            <li data-coords="8.5,1"></li>
            <li data-coords="9,1 " data-marker="@station"><a href="#">원흥</a></li>
            <li data-coords="9.5,1"></li>
            <li data-coords="10,1 " data-marker="@station" data-labelpos="N"><a href="#">삼송</a></li>
            <li data-coords="10.5,1"></li>
            <li data-coords="11,1 " data-marker="@station"><a href="#">지축</a></li>
            <li data-coords="12,1"></li>
            <li data-coords="12,3" data-dir="E"></li>
            
            <li data-coords="12,3" ></li>
            <li data-coords="12,3" data-marker="@station"><a href="#">구파발</a></li>
            <li data-coords="11.5,3" ></li>
            <li data-coords="11.2,3" data-marker="@station" data-labelpos="N"><a href="#">연신내</a></li>
            <li data-coords="10.5,3" ></li>
            <li data-coords="10,3" data-marker="@station"><a href="#">불광</a></li>
            <li data-coords="9.5,3" ></li>
            <li data-coords="8.8,3" data-marker="@station" data-labelpos="N"><a href="#">녹번</a></li>
            <li data-coords="8.5,3" ></li>
            <li data-coords="8,3" data-marker="@station"><a href="#">홍제</a></li>
            <li data-coords="7.5,3" ></li>
            <li data-coords="7,3" data-marker="@station"><a href="#">무악재</a></li>
            <li data-coords="6.5,3" ></li>
            <li data-coords="6,3" data-marker="@station"><a href="#">독립문</a></li>
            <li data-coords="5.5,3" ></li>
            <li data-coords="5,3" data-marker="@station"><a href="#">경복궁</a></li>
            <li data-coords="4.5,3" ></li>
            <li data-coords="4,3" data-marker="@station"><a href="#">안국</a></li>
            <li data-coords="3.5,3" ></li>
            <li data-coords="3,3" data-marker="@station"><a href="#">종로3가</a></li>
            <li data-coords="2.5,3" ></li>
            <li data-coords="2,3" data-marker="@station"><a href="#">을지로3가</a></li>
            <li data-coords="1.5,3" ></li>
            <li data-coords="1,3" data-marker="@station" data-labelpos="N"><a href="#">충무로</a></li>
            <li data-coords="1,3" data-dir="S"></li>
            <li data-coords="1,5"><a href="#">동대입구</a></li>
            
            <li data-coords="1.5,5"></li>
            <li data-coords="2,5" data-labelpos="N"><a href="#">약수</a></li>
            <li data-coords="2.5,5"></li>
            <li data-coords="3,5" data-labelpos="N"><a href="#">금호</a></li>
            <li data-coords="3.5,5"></li>
            <li data-coords="4,5" data-labelpos="N"><a href="#">옥수</a></li>
            <li data-coords="4.5,5"></li>
            <li data-coords="5,5" ><a href="#">압구정</a></li>
            <li data-coords="5.5,5"></li>
            <li data-coords="6,5" data-labelpos="N"><a href="#">신사</a></li>
            <li data-coords="6.5,5"></li>
            <li data-coords="7,5" data-labelpos="N"><a href="#">잠원</a></li>
            <li data-coords="7.5,5"></li>
            <li data-coords="8,5" ><a href="#">고속터미널</a></li>
            <li data-coords="8.5,5"></li>
            <li data-coords="9,5" data-labelpos="N"><a href="#">교대</a></li>
            <li data-coords="9.5,5"></li>
            <li data-coords="10,5" data-labelpos="N"><a href="#">남부터미널</a></li>
            <li data-coords="10,5,5"></li>
            <li data-coords="11,5"><a href="#">양재</a></li>
            <li data-coords="11.5,5"></li>
            <li data-coords="12,5" data-dir="E" data-labelpos="N"><a href="#">매봉</a></li>
            
            <li data-coords="12,6" data-labelpos="E"><a href="#">도곡</a></li>
            
            <li data-coords="12,7" ><a href="#">대치</a></li>
            <li data-coords="11.5,7"></li>
            <li data-coords="11,7" ><a href="#">학여울</a></li>
            <li data-coords="10.5,7"></li>
            <li data-coords="10,7" ><a href="#">대청</a></li>
            <li data-coords="9.5,7"></li>
            <li data-coords="9,7" ><a href="#">일원</a></li>
            <li data-coords="8.5,7"></li>
            <li data-coords="8,7" ><a href="#">수서</a></li>
            <li data-coords="7.5,7"></li>
            <li data-coords="7,7" ><a href="#">가락시장</a></li>
            <li data-coords="6.5,7"></li>
            <li data-coords="6,7" ><a href="#">경찰병원</a></li>
            <li data-coords="5.5,7"></li>
            <li data-coords="5,7" ><a href="#">오금</a></li>
                       
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