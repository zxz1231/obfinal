<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	// 경로 /biz 부터 시작  [http://localhost:8080/biz/ @@.do 요청 하기 위해]
	String contextPath = request.getContextPath();
	// theme 까지 들어온 경로 
	String KPath = contextPath + "/resources/theme";
%>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>보고싶은 명화(투표)</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Favicons -->
<link rel="shortcut icon" href="<%=KPath%>/images/favicon.ico">
<link rel="apple-touch-icon" href="<%=KPath%>/images/icon.png">

<!-- Google font (font-family: 'Roboto', sans-serif;) -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700"
	rel="stylesheet">
<!-- Google font (font-family: 'Roboto Condensed', sans-serif;) -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,400,700"
	rel="stylesheet">

<!-- Stylesheets -->
<link rel="stylesheet" href="<%=KPath%>/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=KPath%>/css/plugins.css">
<link rel="stylesheet" href="<%=KPath%>/style.css">

<!-- Color Variations -->
<link rel="stylesheet" href="<%=KPath%>/css/color-variations.css">

<!-- Custom css -->
<link rel="stylesheet" href="<%=KPath%>/css/custom.css">

<!-- Modernizer js -->
<script src="<%=KPath%>/js/vendor/modernizr-3.5.0.min.js"></script>

<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>

$(function(){
	getVoteList();
	document.getElementsByTagname("jsp:include")[1].setAttribute("page","/views/vote/login_modal_vote.jsp");
})

function getVoteList(){
// 	alert('getVoteList.jsp 페이지 로딩완료');
	$.ajax({
		url:'/voteRefresh.do',
		type:'post',
		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
		dataType:'json',
		success: function(result){
			voteListing(result);
		}
	})
}

function vote(m_id){
// 	alert("vote() 실행");
// 	alert(m_id);
	$.ajax({
		url: '/vote.do',
		type: 'post',
		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
		data: {'m_id':m_id},
		dataType: 'json',
		success: function(result){
			var loginChk = result.loginChk;
			if(loginChk==0){
				alert("로그인하셔야 투표에 참여할 수 있습니다");
				document.getElementById('id01').style.display='block';
			}else if(loginChk!=0){
				getVoteList();
			}
		}
	});
}

function voteListing(result){
	console.log("voteListing 실행됨");
	console.log("result : " + result);
	var loginChk = result.loginChk;
	var votedmovie = result.votedmovie;
	var mListByVote = result.mListByVote;
	var mList = result.mList;
	
	
	console.log(votedmovie);
	console.log(mListByVote);
	console.log(mList);
	
	if(loginChk!=0){
		if(votedmovie!=undefined){
			//	내가 선택한 영화(votedmovie)******************************
			var str = '';
			str += '<center>';
			str += '<div class="votedmovie-content container">';
			str += '<h1>'+votedmovie.title+'</h1>';
			str += '</div>';
			str += '</center>';
			$('.votedmovie').html(str);
		}
	}
	
	//	득표수 높은 5개 영화(mListByVote)******************************
	var str = '';
	str += '<center>';
	str += '<div class="mListByVote-content container">';
	for(var i in mListByVote){
		str += '<div class="mListByVote-item">';
		str += 	'<h1>'+mListByVote[i].title+'</h1>';
		str += '</div>';
	};
	str += '</div>';
	str += '</center>';
	$('.mListByVote').html(str);
	
	//	전체 영화 리스트(mList)******************************
	var str ='';
	//str += '<div class="counter-area section-padding-sm bg-grey">';
	str += '<div class="mList-content container">';
	//str += '<div class="counter-area-inner counter-style-2">';
	//str += '<div class="row no-gutters align-items-center">';
	for(var i in mList){
		str += '<div class="mList-item col-xl-1 col-lg-1 col-md-1 col-sm-2 col-2" id="mList'+i+'" mList_m_id="' + mList[i].m_id + '" padding:0">';
		str += 	'<a onclick="vote('+mList[i].m_id+')">';
		str += 		'<div>';	
		str += 			'<div class="counter text-center">';	
		str += 				'<h3 class="counter-active">';
		str += 					mList[i].vote;
		str += 				'</h3>';
		str += 			'</div>';
		str += 			'<div class="imgBox">';
		str += 				'<img src="/resources/movieimg/'+mList[i].poster+'"><br>';
		str += 			'</div>';
		str += 			'<div class="titleBox text-center">';
		str += 				'<h6>';
		str += 					mList[i].title;
		str += 				'</h6>';
		str += 			'</div>';
		str += 		'</div>';
		str += 	'</a>';
		str += '</div>';
	};
	// str += '</div>';
	// str += '</div>';
	str += '</div>';
	// str += '</div>';
	
	$('.mList').html(str);
}

</script>

</head>
<body>

<!-- Main wrapper -->
<div class="wrapper" id="wrapper" style="margin-top : 150px;">
	
	<!-- Header 시작 -->
	<jsp:include page="../main/main-header.jsp"></jsp:include>
	<!-- //Header 끝 -->
		
	<!--메인 영역 Content -->
	<main class="page-content"  style="display : block;"> 
		<div class="container">
			<a href="#" id="myBtn">myBtn</a>
			<a href="vote.do">vote.do</a>
			<div class="votedmovie"></div>
			<div class="mListByVote"></div>
			<div class="mList"></div>
		
	<div class="card" style="width: 18rem;">
		<!-- <img class="card-img-top" src="..." alt="Card image cap" style="height: 180px; width: 100%; display: block;"> -->
		<div class="card-body">
			<h5 class="card-title">Card title</h5>
			<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		</div>
		<ul class="list-group list-group-flush">
			<li class="list-group-item">Cras justo odio</li>
			<li class="list-group-item">Dapibus ac facilisis in</li>
			<li class="list-group-item">Vestibulum at eros</li>
		</ul>
		<div class="card-body">
			<a href="#" class="card-link">Card link</a>
			<a href="#" class="card-link">Another link</a>
		</div>
	</div>
	
	<div class="card border-dark mb-3" style="max-width: 18rem;">
		<div class="card-header">Header</div>
		<div class="card-body text-dark">
			<h5 class="card-title">Dark card title</h5>
			<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		</div>
	</div>
		<!-- The Modal -->
<!-- 		<div id="myModal" class="modal"> -->
<!-- 			<!-- Modal content --> -->
<!-- 			<div class="modal-content"> -->
<!-- 				<span id="modal-close">&times;</span> -->
<!-- 				<p>Some text in the Modal..</p> -->
<!-- 			</div> -->
<!-- 		</div> -->
		<!--// The Modal -->
		
		</div>
		
		<!-- 로그인 modal 시작 (login폴더에 login_modal.jsp을 포함시킴)-->
<%-- 		<jsp:include page="/views/vote/login_modal_vote.jsp"></jsp:include> --%>
		<!-- 로그인 modal 끝 -->
		
	</main>	
	<!--// 메인 영역 Content -->
	
	<!-- Footer Area -->
<%-- 	<jsp:include page="../main/main-footer.jsp"></jsp:include> --%>
	<!-- //Footer Area -->
		
</div>
<!--// Main wrapper -->

<!-- Modal용 js -->
<!-- <script src="/views/vote/voteMovieModal.js"></script> -->


<!-- 로그인 메인 css -->
<link rel="stylesheet" href="/resources/addcss/login_main.css">
	
<!-- 투표페이지 CSS -->
<link rel="stylesheet" href="/views/vote/voteList.css">
<!-- 투표페이지 모달용 CSS -->
<!-- <link rel="stylesheet" href="/views/vote/voteMovieModal.css"> -->

</body>
</html>