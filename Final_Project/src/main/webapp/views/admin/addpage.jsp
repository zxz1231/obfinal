<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
	font-family: Arial;
}

/* Style the tab */
.tab {
	overflow: hidden;
	border: 1px solid #ccc;
	background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
.tab button {
	background-color: inherit;
	float: left;
	border: none;
	outline: none;
	cursor: pointer;
	padding: 14px 16px;
	transition: 0.3s;
	font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
	background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
	background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
	display: none;
	padding: 6px 12px;
	border: 1px solid #ccc;
	border-top: none;
}
</style>
</head>
<body>

	<h2>극장별</h2>
	<div>확인 할 극장을 클릭하세요</div>


	<div class="tab">

		<c:forEach items="${theaterList }" var="theater">
			<button class="tablinks"
				onclick="openTheater(event, '${theater.t_id}')">${theater.name }</button>
		</c:forEach>




	</div>
	<c:forEach var="theater" items="${theaterList }">
		<div id="${theater.t_id }" class="tabcontent">
			<div>${theater.name }극장에서 상영하고 있는 영화는</div>
			<c:forEach var="screen" items="${screenList }">
			${screen }
			</c:forEach>


		</div>
	</c:forEach>


	<script>
		function openTheater(evt, t_id) {
			var i, tabcontent, tablinks;
			alert(t_id);
			tabcontent = document.getElementsByClassName("tabcontent");
			for (i = 0; i < tabcontent.length; i++) {
				tabcontent[i].style.display = "none";
			}
			tablinks = document.getElementsByClassName("tablinks");
			for (i = 0; i < tablinks.length; i++) {
				tablinks[i].className = tablinks[i].className.replace(
						" active", "");
			}
			document.getElementById(t_id).style.display = "block";
			evt.currentTarget.className += " active";
		}
	</script>

</body>
</html>
