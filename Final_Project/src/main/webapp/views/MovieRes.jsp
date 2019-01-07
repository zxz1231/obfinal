<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style>
	/*datepicer 버튼 롤오버 시 손가락 모양 표시*/
	.ui-datepicker-trigger{cursor: pointer;}
	/*datepicer input 롤오버 시 손가락 모양 표시*/
	.hasDatepicker{cursor: pointer;}
	
	.table-borderless > tbody > tr > td,
	.table-borderless > tbody > tr > th,
	.table-borderless > tfoot > tr > td,
	.table-borderless > tfoot > tr > th,
	.table-borderless > thead > tr > td,
	.table-borderless > thead > tr > th {
    border: none;
}
	}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"/>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>

<script>
	//달력
	$(function() {
		$('#Date').change(function() {
			$("#showData").empty();
			$("#showSeat").empty();
		});
		
		$('#Date').datepicker({
			dateFormat: 'yy-mm-dd',
			language : 'ko', // 화면에 출력될 언어를 한국어로 설정한다.
			pickTime : false, // 사용자로부터 시간 선택을 허용하려면 true를 설정하거나 pickTime 옵션을 생략한다.
			defalutDate : new Date(), // 기본값으로 오늘 날짜를 입력한다. 기본값을 해제하려면 defaultDate 옵션을 생략한다.
			todayHighlight: true,
			autoclose: true,
			showOn: "both",
			buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif",
			buttonImageOnly: true, //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
			buttonText: "선택", //버튼에 마우스 갖다 댔을 때 표시되는 텍스트    
			yearSuffix: "년",
			monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'], //달력의 월 부분 텍스트
			monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'], //달력의 월 부분 Tooltip 텍스트
			dayNamesMin: ['일','월','화','수','목','금','토'], //달력의 요일 부분 텍스트
			dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'], //달력의 요일 부분 Tooltip 텍스트
			  
			//In Datepicker set the Calendar display start with Sunday (by default datepicker starts from Sunday)
			firstDay: 1,	
			  
			  //해당주만 선택가능하게..
	          //Before Populating the Calendar set the Enabled &amp; Disabled Dates using beforeShowDay(Date) function
			  beforeShowDay: function (date) {
		            //Get today's date
					var monday = new Date();
		            //Set the time of today's date to 00:00:00 
					monday.setHours(0,0,0,0);
		            /*
		            Below Line sets the Date to Monday (Start of that Week)
		            (monday.getDay() || 7) returns the value of getDay() 
		            ie., [ 1 - Mon, 2 - Tue, 3 - Wed, 4 - Thu, 5 - Fri, 6 - Sat ]  
		            except for Sunday where it returns 7. 
		            The return value is used to calculate the Date of that Week's Monday
		            */
					monday.setDate(monday.getDate() + 1 - (monday.getDay() || 7));
		            //Set the Date to Monday
					var sunday = new Date(monday);
		            //Now add 6 to Monday to get the Date of Sunday (End of that Week)
					sunday.setDate(monday.getDate() + 6);
		            //Now return the enabled and disabled dates to datepicker
					return [(date >= monday && date <= sunday), ''];
				}
			});
		
		 $('#Date').datepicker('setDate', 'today');
	});
	
	//극장
	function theater(m_id,title,director,gnr,runnintime,poster) {
		$("#theater").empty();
		$("#screen").empty();
		$("#time").empty();
		$("#showData").empty();
		$("#showSeat").empty();
		$("#theaterImg").empty();
		
		$.ajax({
			type : "POST",
			dataType : "json",
			data : {'m_id':m_id},
			url : "movie_theater.do",
			success : function(data) {
				var str = "";
				var strr = "";
				var strrr = "";
				
				$.each(data, function(member){
					str += '<input type="button" class="btn btn-default" onclick="fnTest('+ m_id + ',' + this.t_id + ',' + "'" + this.img1 + "'," + "'" + this.name + "'" + ')" value=' + this.name + '>';
					
				});
				$("#showTheater").html(str);
				
				strr += strr += '<img src="resources/img/' + poster + '" width="100">';
				$("#moviePoster").html(strr);
				
				strrr += title + '<br>' + director + '<br>' + gnr + '<br>' + runnintime;
				$("#movieDetail").html(strrr)
				
			},
			error : function(jqXHR, textStatus, errorThrown) {
		        alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
		    }
		})
	}
	
	//상영관
	function fnTest(m_id,t_id,img,name) {
		$("#showSeat").empty();
			$.ajax({
				type : "POST",
				dataType : "json",
				data : {'m_id':m_id},
				url : "theater.do?t_id="+t_id,
				success : function(data) {
					var str = "";
					var i = 1;
					
					$("#theater").html(name);
					
					var strr = "";
					strr += '<img src="resources/img/' + img + '" width="300">';
					
					$("#theaterImg").html(strr);
					
					var idArr = new Array();
					$.each(data, function(member){
						var num = idArr.indexOf(this.scr_id);
						
						if(num != -1) {
							if(this.time == 8) {												  
								str += '<input type="button" class="btn btn-default" onclick="seat('+ m_id + ',' + this.scr_id + ',' + "'" + t_id + "'" + ',8)" value="8시">';
							} else if (this.time == 11){
								str += '<input type="button" class="btn btn-default" onclick="seat('+ m_id + ',' + this.scr_id + ',' + "'" + t_id + "'" + ',11)" value="11시">';
							} else if (this.time == 14){
								str += '<input type="button" class="btn btn-default" onclick="seat('+ m_id + ',' + this.scr_id + ',' + "'" + t_id + "'" + ',14)" value="14시">';
							} else if (this.time == 17){
								str += '<input type="button" class="btn btn-default" onclick="seat('+ m_id + ',' + this.scr_id + ',' + "'" + t_id + "'" + ',17)" value="17시">';
							} else if (this.time == 20){
								str += '<input type="button" class="btn btn-default" onclick="seat('+ m_id + ',' + this.scr_id + ',' + "'" + t_id + "'" + ',20)" value="20시">';
							}
						}
						
						if(num == -1) {
						str += '<h4>상영관' + i +'</h4>';
						if(this.time == 8) {
							str += '<input type="button" class="btn btn-default" onclick="seat('+ m_id + ',' + this.scr_id + ',' + "'" + t_id + "'" + ',8)" value="8시">';
						} else if (this.time == 11){
							str += '<input type="button" class="btn btn-default" onclick="seat('+ m_id + ',' + this.scr_id + ',' + "'" + t_id + "'" + ',11)" value="11시">';
						} else if (this.time == 14){
							str += '<input type="button" class="btn btn-default" onclick="seat('+ m_id + ',' + this.scr_id + ',' + "'" + t_id + "'" + ',14)" value="14시">';
						} else if (this.time == 17){
							str += '<input type="button" class="btn btn-default" onclick="seat('+ m_id + ',' + this.scr_id + ',' + "'" + t_id + "'" + ',17)" value="17시">';
						} else if (this.time == 20){
							str += '<input type="button" class="btn btn-default" onclick="seat('+ m_id + ',' + this.scr_id + ',' + "'" + t_id + "'" + ',20)" value="20시">';
						}
						i++;
						};
						idArr.push(this.scr_id);
						
					});
					
					$("#showData").html(str);
				},
				error : function(jqXHR, textStatus, errorThrown) {
			        alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
			    }
			})
	}
	
	//좌석 모달
	function seat(m_id,scr_id,t_id,time) {
		$.ajax({
			type : "POST",
			dataType : "json",
			data : {'m_id':m_id,'scr_id':scr_id,'time':time,'date':$("#Date").val()},
			url : "screenSeat.do",
			success : function(data) {
				var str = "";
				
				var strrr="";
				strrr = data.scr_name;
				$("#screen").html(strrr);
				
				var strr="";
				strr = time;
				$("#time").html(strr);
				
				var strrrr="";
				
				str += '상영관:'+data.scr_name+'<br>';
				str += '좌석:'+data.restSeat;
				str += '<div class="row">';
				str += '<div class="col-md-4">';
				str += '<p><a class="btn btn-default" data-target="#modal" data-toggle="modal" onclick="showSeat(' + m_id + "," + scr_id + "," + time + ",";
				str += data.scr_seat_row + "," + data.scr_seat_col;
				str += ')">';
				str += '좌석 확인</a></p>';
				str += '<input type="hidden" name = "scr_id" value=' + scr_id + '>';
				str += '<input type="hidden" name = "time" value=' + time + '>';
				str += '<input type="hidden" name = "t_id" value=' + t_id + '>';
				str += '<input type="hidden" name = "m_id" value=' + m_id + '>';
				
				strrrr += '<input type="submit" value="좌석선택">';
				$("#next").html(strrrr);
				
				str += '</div>';
				str += '</div>';
				$("#showSeat").html(str);
			},
			error : function(jqXHR, textStatus, errorThrown) {
		        alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
		    }
		})
	}
	
	function showSeat(m_id,scr_id,time,row,col) {
		$.ajax({
			type : "POST",
			dataType : "json",
			data : {'m_id':m_id,'scr_id':scr_id,'time':time,'date':$("#Date").val()},
			url : "schedule_pre.do",
			success : function(data) {
				var str = "";
				var a;
				var b;
				
				str += '<table class="table table-bordered">';
				for(a=1; a<=row; a++) {
					str += '<tr>';
					for(b=1; b<=col; b++) {
							str += '<td>';
							str += '<label><input type="checkbox" name="check_seat"';
							str += 'id = ' + '"' + a + b + '"'
							str += '>';
							str += a + "," + b;
							str += '</label>';
							str += '<td>';
					}
					str += '<tr>';
				}
				$("#screenSeat").html(str);
				for(a=1; a<=row; a++) {
					for(b=1; b<=col; b++) {
						$.each(data, function(member){
							if(a == this.seat_row && b == this.seat_col) {
								$("#"+a+b).remove();
							}
						});
					};
					}
				},
			error : function(jqXHR, textStatus, errorThrown) {
		        alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
		    }
		})
	}
	
</script>
</head>
<body>
	
	<div class="container" >
	<div class="row">
	
	<div class="container"  style="display: inline-block;text-align: center;">
	<div class='col-sm-3'><img src="resources/img/영화.png" width="100"></div>
	<div class='col-sm-3'><img src="resources/img/상영관.png" width="100"></div>
	<div class='col-sm-3'><img src="resources/img/화살표.png" width="100"></div>
	<div class='col-sm-3'><img src="resources/img/화살표.png" width="100"></div>
	</div>

	<form action="schedule.do" method="post">
	
	<table class="table table-bordered">
	
		<thead>
		<tr>
			<th>영화</th>		
			<th>극장</th>
			<th colspan="2">상영관정보</th>
		</tr>
		</thead>
	
		<tbody>
			<tr>
				<td rowspan="2">
					<c:forEach var="i" begin="0" end="${movieList.size()-1 }" step="1">
					<c:if test="${movieList[i].m_id == movieRes.m_id}">
							<a href="#" class="list-group-item"
							onclick="theater('${movieList[i].m_id }','${movieList[i].title }'
							,'${movieList[i].director }','${movieList[i].gnr }','${movieList[i].runningtime }','${movieList[i].poster }')">${movieList[i].title }</a>
					</c:if>
					
					<c:if test="${movieList[i].m_id != movieRes.m_id}">
							<a href="#" class="list-group-item" 
							onclick="theater('${movieList[i].m_id }','${movieList[i].title }'
							,'${movieList[i].director }','${movieList[i].gnr }','${movieList[i].runningtime }','${movieList[i].poster }')">${movieList[i].title }</a>
					</c:if>
					</c:forEach>
					
				</td>
				<td>	
					<h4>날짜선택</h4>
					<input id="Date" name="date" type="text" onclick="date()"><br>
					<div id="showTheater"></div>
					
				</td>
				<td colspan="2">
					극장을 선택하면 상영관 정보가 나옵니다.
					<div id="showData"></div>
				</td>
			</tr>
			<tr>
				<td id="theaterImg">
				</td>
				<td colspan="2">
					<div id="showSeat"></div>
					<div class="row">
					<div class="modal" id="modal" tabindex="-1">
					<div class="modal-dialog">
					<div class="modal-content">
					<div class="modal-header">
					좌석';
					<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body" style="text-align; center;" id="screenSeat">
					<h1>좌석</h1><hr>
					</div>
					</div>
					</div>
					</div>
					</div>
				</td>
			</tr>
		</tbody>
		<tfoot>
			<tr class="active">
				<td>
					<table class="table table-borderless table_border_none" style="border-top: none;">
						<tr class="active" >
							<td id="moviePoster"></td>
							<td id="movieDetail"></td>
						</tr>
					</table>
				</td>
				<td>
					<table class="table">
						<tr class="active">
							<td>극장</td>
							<td id="theater"></td>
						</tr>
						<tr class="active">
							<td>상영관</td>
							<td id="screen"></td>
						</tr>
						<tr class="active">
							<td>시간</td>
							<td id="time"></td>
						</tr>
					</table>
			 	</td>
				<td>
					<div id="next"></div>
				</td>
			</tr>
		</tfoot>
	</table>
	</form>
	</div>
	</div>
	
</body>
</html>












