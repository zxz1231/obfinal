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

<!-- 투표페이지 CSS -->
<link rel="stylesheet" href="/views/vote/voteList.css">

<!-- Modernizer js -->
<script src="<%=KPath%>/js/vendor/modernizr-3.5.0.min.js"></script>

<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>

$(function(){
	getVoteList();
// 	document.getElementsByTagname("jsp:include")[1].setAttribute("page","/views/vote/login_modal_vote.jsp");
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
	str += '<div class="mList-content container">';
	for(var i in mList){
// 		if(mList[i].onair==0){
			str += '<a onclick="vote('+mList[i].m_id+')">';
			str += '<div class="mList-item card border-dark mb-3 col-3" mList_m_id="' + mList[i].m_id + '" style=max-width: 18rem; margin: 5px; padding: 0; display: block>';
// 		} else {
// 			str += '<div class="mList-item card border-dark mb-3 col-3" mList_m_id="' + mList[i].m_id + '" style=max-width: 18rem; margin: 5px; padding: 0; display: block; background-color:red>';
// 			str += '<div class="disabled">';
// 		}
		str += '	<div class="card-header" style="padding:0">';
		str += 			'<div class="counter text-center">';	
		str += 				'<h3 class="counter-active">' + mList[i].vote + '</h3>';
		str += 			'</div>';
		str += '		<div class="imgBox" style="width:100%; margin:auto; overflow:hidden">';
		str += '		<img src="/resources/movieimg/'+mList[i].poster+'" style="width:100%"><br>';
		str += '		</div>';
		str += '	</div>';
		str += '	<div class="card-body text-dark text-center" style="min-height:50px">';
		str += '		<h5 class="card-title" style="margin: ">' + mList[i].title + '</h5>';
		str += '		<p class="card-text"><a href="#">상세보기</a></p>';
		str += '	</div>';
// 		if(mList[i].onair==0){
			str += '</div>';
			str += '</a>';
// 		} else {
// 			str += '</div>';
// 			str += '</a>';
// 		}
		str += '</div>';
	};
	str += '</div>';
	
	$('.mList').html(str);
}

</script>
<style>
.disabled {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 100; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}
</style>
<!-- 로그인 메인 css -->
<link rel="stylesheet" href="/resources/addcss/login_main.css">
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
			<div class="votedmovie" style="display:flex"></div>
			<div class="mListByVote" style="display:flex"></div>
			<div class="mList" style="display:flex"></div>
			
			
			<div class="votedmovie-content">
				<div class="votedmovie-content-header">
				</div>

				<div class="votedmovie-content-body">
				</div>
			</div>
			
				
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
				
		</div>
		
	</main>	
	<!--// 메인 영역 Content -->
	
	<!-- Footer Area -->
<%-- 	<jsp:include page="../main/main-footer.jsp"></jsp:include> --%>
	<!-- //Footer Area -->
		
</div>
<!--// Main wrapper -->

<!-- Modal용 js -->
<!-- <script src="/views/vote/voteMovieModal.js"></script> -->
	
<!-- 투표페이지 모달용 CSS -->
<!-- <link rel="stylesheet" href="/views/vote/voteMovieModal.css"> -->

</body>
</html>