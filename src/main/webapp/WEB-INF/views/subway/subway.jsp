<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>Subway Map</title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-3.3.0.min.js"></script>
    <script type="text/javascript" src="/resources/js/jquery.subwayMap-0.5.3.js"></script>
    <style type="text/css">
    body
    {
        font-family: Verdana;
        font-size: 8pt;
    }

    /* The main DIV for the map */
    .subway-map
    {
        margin: 0;
        width: 500px;
        height:410px;
        background-color: white;
    }

    /* Text labels */
    .text
    {
        text-decoration: none;
        color: black;
    }

    #legend
    {
        float: left;
        width: 250px;
        height:400px;
    }

    #legend div
    {
        height: 25px;
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
<body>
    <div class="subway-map" data-columns="15" data-rows="10" data-cellSize="40" data-legendId="legend" data-textClass="text" data-gridNumbers="true" data-grid="false" data-lineWidth="8">
        <ul data-color="#50bcdf" data-label="4호선">          
            <li data-coords="1,1 " data-marker="@station"><a href=>당고개</a></li>
            <li data-coords="1.5,1"></li>   
            <li data-coords="2,1 " data-marker="@station">상계</li>
            <li data-coords="2.5,1"></li>
            <li data-coords="3,1 " data-marker="@station">노원</li>
            <li data-coords="3.5,1"></li> 
            <li data-coords="4,1 " data-marker="@station">창동</li>
            <li data-coords="4.5,1"></li> 
            <li data-coords="5,1 " data-marker="@station">쌍문</li>
            <li data-coords="5.5,1"></li> 
            <li data-coords="6,1 " data-marker="@station">수유</li>
            <li data-coords="6.5,1"></li> 
            <li data-coords="7,1 " data-marker="@station">미아</li>
            <li data-coords="7.5,1"></li> 
            <li data-coords="8,1 " data-marker="@station" data-labelpos="N">미아사거리</li>
            <li data-coords="8.5,1"></li>
            <li data-coords="9,1 " data-marker="@station">길음</li>
            <li data-coords="9.5,1"></li>
            <li data-coords="10,1 " data-marker="@station" data-labelpos="N">성신여대입구</li>
            <li data-coords="10.5,1"></li>
            <li data-coords="11,1 " data-marker="@station">한성대입구</li>
            <li data-coords="12,1"></li>
            <li data-coords="12,3" data-dir="E"></li>
            
            <li data-coords="12,3" ></li>
            <li data-coords="12,3" data-marker="@station">혜화</li>
            <li data-coords="11.5,3" ></li>
            <li data-coords="11.2,3" data-marker="@station" data-labelpos="N">동대문</li>
            <li data-coords="10.5,3" ></li>
            <li data-coords="10,3" data-marker="@station">동대문역사문화공원</li>
            <li data-coords="9.5,3" ></li>
            <li data-coords="8.8,3" data-marker="@station" data-labelpos="N">충무로</li>
            <li data-coords="8.5,3" ></li>
            <li data-coords="8,3" data-marker="@station">명동</li>
            <li data-coords="7.5,3" ></li>
            <li data-coords="7,3" data-marker="@station">회현</li>
            <li data-coords="6.5,3" ></li>
            <li data-coords="6,3" data-marker="@station">서울역</li>
            <li data-coords="5.5,3" ></li>
            <li data-coords="5,3" data-marker="@station">숙대입구</li>
            <li data-coords="4.5,3" ></li>
            <li data-coords="4,3" data-marker="@station">삼각지</li>
            <li data-coords="3.5,3" ></li>
            <li data-coords="3,3" data-marker="@station">신용산</li>
            <li data-coords="2.5,3" ></li>
            <li data-coords="2,3" data-marker="@station">이촌</li>
            <li data-coords="1.5,3" ></li>
            <li data-coords="1,3" data-marker="@station" data-labelpos="N">동작</li>
            <li data-coords="1,3" data-dir="S"></li>
            <li data-coords="1,5">충신대입구</li>
            
            <li data-coords="1.5,5"></li>
            <li data-coords="2,5" data-labelpos="N">사당</li>
            <li data-coords="2.5,5"></li>
            <li data-coords="3,5" data-labelpos="N">남태령</li>
            <li data-coords="3.5,5"></li>
            <li data-coords="4,5" data-labelpos="N">선바위</li>
            <li data-coords="4.5,5"></li>
            <li data-coords="5,5" >경마공원</li>
            <li data-coords="5.5,5"></li>
            <li data-coords="6,5" data-labelpos="N">대공원</li>
            <li data-coords="6.5,5"></li>
            <li data-coords="7,5" data-labelpos="N">과천</li>
            <li data-coords="7.5,5"></li>
            <li data-coords="8,5" >정부과천청사</li>
            <li data-coords="8.5,5"></li>
            <li data-coords="9,5" data-labelpos="N">인덕원</li>
            <li data-coords="9.5,5"></li>
            <li data-coords="10,5" data-labelpos="N">평촌</li>
            <li data-coords="10,5,5"></li>
            <li data-coords="11,5" data-labelpos="N">범계</li>
            <li data-coords="11.5,5"></li>
            <li data-coords="12,5" data-dir="E" data-labelpos="N">금정</li>
            
            <li data-coords="12,6" data-labelpos="E">산본</li>
            
            <li data-coords="12,7" >수리산</li>
            <li data-coords="11.5,7"></li>
            <li data-coords="11,7" >대야미</li>
            <li data-coords="10.5,7"></li>
            <li data-coords="10,7" >반월</li>
            <li data-coords="9.5,7"></li>
            <li data-coords="9,7" >상록수</li>
            <li data-coords="8.5,7"></li>
            <li data-coords="8,7" >한대앞</li>
            <li data-coords="7.5,7"></li>
            <li data-coords="7,7" >중앙</li>
            <li data-coords="6.5,7"></li>
            <li data-coords="6,7" >고잔</li>
            <li data-coords="5.5,7"></li>
            <li data-coords="5,7" >초지</li>
            <li data-coords="4.5,7"></li>
            <li data-coords="4,7" >안산</li>
            <li data-coords="3.5,7"></li>
            <li data-coords="3,7" >신길온천</li>
            <li data-coords="2.5,7"></li>
            <li data-coords="2,7" >정왕</li>
            <li data-coords="1.5,7"></li>
            <li data-coords="1,7" >오이도</li>
            
            
        </ul>


    </div>
    <div id="legend"></div>
    

    <script type="text/javascript">
        $(".subway-map").subwayMap({ debug: true });
    </script>
</body>
</html>
