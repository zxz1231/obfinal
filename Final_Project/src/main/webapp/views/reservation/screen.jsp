<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"/>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>

<script>
    // html 이 다 로딩된 후 실행
    $(document).ready(function() {
        // 체크박스들이 변경됬을때
        $(":checkbox").change(function() {
        	
            var cnt = $("#person").val();
             
            // 셀렉트박스의 값과 체크박스중 체크된 갯수가 같을때, 다른 체크박스들을 disable 처리
            if( cnt==$(":checkbox:checked").length ) {
                $(":checkbox:not(:checked)").attr("disabled", "disabled");
            }
            // 체크된 갯수가 다르면 활성화 시킴
            else {
                $(":checkbox").removeAttr("disabled");
            }
        });
         
        // 셀렉트박스에서 다른 인원수를 선택하면 초기화 시킴
        $("#person").change(function(){
            $(":checkbox").removeAttr("checked");
            $(":checkbox").removeAttr("disabled");
        });
    });
    
    function sendSeat(form) {
    	form.action = "pay.do";
    	form.submit();
    }
    
</script>

</head>
<body>
	<%-- ${scheduleVO }<br>
	${screenVO }<br>
	${screenVO.getScr_seat_row()}<br>
	${screenVO.getScr_seat_col()} --%>
	
	<div class="container" >
	<div class="row">
	<div class="container"  style="display: inline-block;text-align: center;">
	<div class='col-sm-3'><img src="resources/img/영화.png" width="100"></div>
	<div class='col-sm-3'><img src="resources/img/상영관.png" width="100"></div>
	<div class='col-sm-3'><img src="resources/img/좌석.png" width="100"></div>
	<div class='col-sm-3'><img src="resources/img/화살표.png" width="100"></div>
	</div>
	
    <form method="post">
    
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
				<td>
				    <span>인원수 선택 : </span>
				    <select id="person">
				        <option value="1">1명</option>
				        <option value="2">2명</option>
				        <option value="3">3명</option>
				        <option value="4">4명</option>
				        <option value="5">5명</option>
				    </select>
				</td>
				<td>
				   	<table class="table table-bordered">
					   	<c:forEach var="i" begin="1" end="${screenVO.getScr_seat_row()}" step="1">
						    <tr>
							    <c:forEach var="k" begin="1" end="${screenVO.getScr_seat_col()}" step="1">
						    		<td>
						    			<label><input type="checkbox" name="check_seat" id ="${i }${k }" value="${i }${k }" class="seat" >
					    					${i },${k }
							    		</label>
						    		</td>
								   	<c:forEach var="reservationVO" items="${reservationList }">
										<c:set var="resRow" value="${reservationVO.getSeat_row() }"/>
									   	<c:set var="resCol" value="${reservationVO.getSeat_col() }"/>
									    <c:if test="${i == resRow && k == resCol }">
								    		<script>
								    			var resRow = "${i }";
								    			var resCol = "${k }";
								    			
								    			$("#"+resRow+resCol).remove();
									    	</script>
								    	</c:if>
								    </c:forEach>
							    </c:forEach>
						    </tr>
					   	</c:forEach>
				    </table>
				</td>
				<td>
					극장을 선택하면 상영관 정보가 나옵니다.
				</td>
			</tr>
		</tbody>
		<tfoot>
			<tr class="active">
				<td>
					<table class="table table-borderless table_border_none" style="border-top: none;">
						<tr class="active" >
							<td id="moviePoster"><img src="resources/img/${movieVO.poster }" width="100"></td>
							<td id="movieDetail">${movieVO.title }<br>${movieVO.director }
							<br>${movieVO.gnr }<br>${movieVO.runningtime }<br><a href="movieDetail.do?m_id=' + m_id +'">상세보기</a></td>
						</tr>
					</table>
				</td>
				<td>
					<table class="table">
						<tr class="active">
							<td>극장</td>
							<td>${theaterVO.name }</td>
						</tr>
						<tr class="active">
							<td>상영관</td>
							<td>${screenVO.scr_name }</td>
						</tr>
						<tr class="active">
							<td>시간</td>
							<td>${scheduleVO.time }</td>
						</tr>
					</table>
			 	</td>
				<td>
				    <input type="hidden" name = "scr_id" value=${scheduleVO.scr_id }>
				    <input type="hidden" name = "m_id" value=${scheduleVO.m_id }>
				    <input type="hidden" name = "t_id" value=${scheduleVO.t_id }>
				    <input type="hidden" name = "time" value=${scheduleVO.time }>
				    <input type="hidden" name = "date" value=${scheduleVO.date }>
				    <input type="button" value="다음" onclick="sendSeat(this.form)">
				</td>
			</tr>
		</tfoot>
	</table>
    </form>
    </div>
    </div>
    
</body>
</html>



