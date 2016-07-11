<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>FOOTBALL MANIA에 방문해주셔서 감사합니다.</title>
<style type = "text/css">
#topmenu {
            height: 50px;  /* 메인 메뉴의 높이 */
            width: 1080px;  /* 메인 메뉴의 넓이 */
    }
    #topmenu ul {           /* 메인 메뉴 안의 ul을 설정함: 상위메뉴의 ul+하위 메뉴의 ul */
        list-style-type: none;  /* 메인 메뉴 안의 ul 내부의 목록 표시를 없애줌 */
        margin: 0px;            /* 메인 메뉴 안의 ul의 margin을 없앰 */
        padding: 0px;           /* 메인 메뉴 안의 ul의 padding을 없앰 */
    }
    #topmenu ul li {            /* 메인 메뉴 안에 ul 태그 안에 있는 li 태그의 스타일 적용(상위/하위메뉴 모두) */
        color: white;               /* 글씨 색을 흰색으로 설정 */
        background-color: #2d2d2d;  /* 배경 색을 RGB(2D2D2D)로 설정 */
        float: left;                /* 왼쪽으로 나열되도록 설정 */
        line-height: 30px;          /* 텍스트 한 줄의 높이를 30px로 설정 */
        vertical-align: middle;     /* 세로 정렬을 가운데로 설정 */
        text-align: center;         /* 텍스트를 가운데로 정렬 */
        position: relative;         /* 해당 li 태그 내부의 top/left 포지션 초기화 */
        text-shadow :0px 2px 3px #666;
      }
    .menulink, .submenulink {           /* 상위 메뉴와 하위 메뉴의 a 태그에 공통으로 설정할 스타일 */
        text-decoration:none;               /* a 태그의 꾸밈 효과 제거 */
        display: block;                     /* a 태그의 클릭 범위를 넓힘 */
        width: 120px;                       /* 기본 넓이를 150px로 설정 */
        font-size: 12px;                    /* 폰트 사이즈를 12px로 설정 */
        font-weight: bold;                  /* 폰트를 굵게 설정 */
    }
    .menulink {     	/* 상위 메뉴의 글씨색을 흰색으로 설정 */
        color: white;
    }
    .topmenuLi:hover .menulink {    /* 상위 메뉴의 li에 마우스오버 되었을 때 스타일 설정 */
        color: red;                 /* 글씨 색 빨간색 */
        background-color: #4d4d4d;  /* 배경색을 밝은 회색으로 설정 */
    }
    .submenulink {          /* 하위 메뉴의 a 태그 스타일 설정 */
        color: #2d2d2d;             /* 글씨 색을 RGB(2D2D2D)로 설정 */
        background-color: white;    /* 배경색을 흰색으로 설정 */
        border: solid 1px black;    /* 테두리를 설정 */
        margin-top: -1px;           /* 위 칸의 하단 테두리와 아래칸의 상단 테두리가 겹쳐지도록 설덩 */
    }
    .longlink {     /* 좀 더 긴 메뉴 스타일 설정 */
        width: 190px;   /* 넓이는 190px로 설정 */
    }
    .submenu {              /* 하위 메뉴 스타일 설정 */
        position: absolute;     /* html의 flow에 영향을 미치지 않게 absolute 설정 */
        height: 0px;            /* 초기 높이는 0px로 설정 */
        overflow: hidden;       /* 실 내용이 높이보다 커지면 해당 내용 감춤 */
        transition: height .2s; /* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(기본) */
        -webkit-transition: height .2s; /* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(구버전 크롬/사파라ㅣ) */
        -moz-transition: height .2s; /* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(구버전 파폭) */
        -o-transition: height .2s; /* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(구버전 오페라) */
    }
    .topmenuLi:hover .submenu { /* 상위 메뉴에 마우스 모버한 경우 그 안의 하위 메뉴 스타일 설정 */
        height: 200px;           /* 높이를 93px로 설정 */
    }
    .submenulink:hover {        /* 하위 메뉴의 a 태그의 마우스 오버 스타일 설정 */
        color: red;                 /* 글씨색을 빨간색으로 설정 */
        background-color: #dddddd;  /* 배경을 RGB(DDDDDD)로 설정 */
    }
    
    #noticepage{
    	width : 400px;
 		height : 300px;
 		border : 1px solid;
 		position : absolute;
 		top : 50px;
 		left : 230px;
    }
     #recentnews{
    	width : 400px;
 		height : 300px;
 		border : 1px solid;
 		position : absolute;
 		top : 50px;
 		left : 650px;
    }
      #freeboard{
    	width : 400px;
 		height : 300px;
 		border : 1px solid;
 		position : absolute;
 		top : 370px;
 		left : 230px;
    }
	#findteam{
    	width : 400px;
 		height : 300px;
 		border : 1px solid;
 		position : absolute;
 		top : 370px;
 		left : 650px;
    }
    
    #sidenews{
    	width : 200px;
    	height:300px;
    	border : 1px solid;
    	float : left;
    	position : absolute;
    	top : 50px;
    	left : 10px;
    }
     #bestuser{
    	width : 200px;
    	height:300px;
    	border : 1px solid;
    	float : left;
    	position : absolute;
    	top : 370px;
    	left : 10px;
    }
    #loginpage{
    	width : 200px;
    	height:100px;
    	border : 1px solid;
    	float : left;
    	position : absolute;
    	top : 50px;
    	right : 5px;
    }
    
    
   	
</style>
</head>
<body>
	<center>
		<nav id = "topmenu">
			<ul>
				<li>Football Mania</li>
				<li class = "topmenuLi"><a href = "index.jsp" class = "menulink">HOME</a></li>
				<li class = "topmenuLi"><a href = "#" class = "menulink">공지사항</a></li>
				<li class = "topmenuLi"><a href = "#" class = "menulink">동영상</a>
					<ul class = "submenu">
					<li><a href = "#" class = "submenulink">축구테크닉</a></li>
					<li><a href = "#" class = "submenulink">팀영상</a></li>
					<li><a href = "#" class = "submenulink">선수영상</a></li>
					</ul>
				</li>
				
				<li class = "topmenuLi"><a href = "#" class = "menulink">사진</a>
					<ul class = "submenu">
					<li><a href = "#" class = "submenulink">팀</a></li>
					<li><a href = "#" class = "submenulink">선수</a></li>
					<li><a href = "#" class = "submenulink">축구장비</a></li>
					</ul>
				</li>
				<li class = "topmenuLi"><a href = "#" class = "menulink">게시판</a>
					<ul class = "submenu">
					<li><a href = "#" class = "submenulink">자유게시판</a></li>
					<li><a href = "#" class = "submenulink">유머게시판</a></li>
					<li><a href = "#" class = "submenulink">토론게시판</a></li>
					<li><a href = "#" class = "submenulink">축잘알/축알못</a></li>
					<li><a href = "#" class = "submenulink">팀매칭게시판</a></li>
					</ul>
				</li>
				<li class = "topmenuLi"><a href = "#" class = "menulink">기사</a>
					<ul class = "submenu">
					<li><a href = "#" class = "submenulink">선수관련</a></li>
					<li><a href = "#" class = "submenulink">팀관련</a></li>
					<li><a href = "#" class = "submenulink">리그관련</a></li>
					</ul>
				</li>
				<li class = "topmenuLi"><a href = "#" class = "menulink">리그 정보</a>
					<ul class = "submenu">
						<li><a href = "#" class = "submenulink">프리미어리그</a></li>
						<li><a href = "#" class = "submenulink">프리메라리그</a></li>
						<li><a href = "#" class = "submenulink">분데스리가</a></li>
						<li><a href = "#" class = "submenulink">세리에A</a></li>
						<li><a href = "#" class = "submenulink">프랑스-리그앙</a></li>
						<li><a href = "#" class = "submenulink">K-리그</a></li>
					</ul>
				</li>
			</ul>
		</nav>  
		</center>
		<section>
		<center>
		
		<div id = "noticepage">
			하이욤
		</div>
		<div id = "recentnews">
			하이욤
		</div>
		<div id = "freeboard">
			하이욤
		</div>
		<div id = "findteam">
			하이욤
		</div>

		</center>
		<aside>
			<div id = "sidenews">
				사이드메뉴
			</div>
			<div id = "bestuser">
				사이드메뉴
			</div>
			<div id = "loginpage">
				사이드메뉴
			</div>
		</aside>
	</section>
</body>
</html>