<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/js/jquery-3.6.0.min.js"></script>
</head>
<body>
	
	
	<ol>
		<li>
			<a href="views/search.jsp">search</a>
		</li>
		<li>
			<a href="views/member/join.jsp">회원가입</a>
		</li>
		<li>
			<a href="/semi/selectList.bo">게시판 목록</a>
		</li>
	</ol>

	<input type="text" id="word" placeholder="검색어를 입력하세요." />
	<button id="searchBtn" onclick="searchDate();">Search</button>
	<div class="result"></div>

	<script>
	// 시험 날짜 조회 함수
	function searchDate() {
		$.ajax({
			type: 'GET',	
			url: 'api001.do',
			data: { jmCd : $('#word').val()},
			dataType : 'json',
			success: function(data) {
				
				console.log(JSON.parse(data)); // 데이터 출력 확인
				
				var obj = JSON.parse(data); // JS 객체로 바꾸기
				// console.log(data.body.items);
				
				var items;
				
				$.each(obj, function(key, value) {
					items = value.items;
					console.log(items);
				})
				
				for(var i=0; i<items.length; i++) {
					var implYy = items[i].implYy; // 시행 년도
					var implSeq = items[i].implSeq; // 시행 회차
					var docRegStartDt = items[i].docRegStartDt; // 필기시험 원서접수 시작일
					var docRegEndDt = items[i].docRegEndDt; // 필기시험 원서접수 종료일
					var docExamStartDt = items[i].docExamStartDt; // 필기시험 시작일
					var docExamEndDt = items[i].docExamEndDt; // 필기시험 종료일
					var docPassDt = items[i].docExamEndDt; // 필기시험 합격자 발표일
					var pracRegStartDt = items[i].pracRegStartDt; // 실기시험 원서접수 시작일
					var pracRegEndDt = items[i].pracRegEndDt; // 실기시험 원서접수 종료일
					var pracExamStartDt = items[i].pracExamStartDt; // 실기시험 시작일
					var pracExamEndDt = items[i].pracExamEndDt; // 실기시험 종료일
					var pracPassDt = items[i].pracPassDt; // 실기시험 합격자 발표일					
				
				
					
					<%@ include file="/views/common/footer.jsp" %>
					$('.result').append(implYy + "년 " + implSeq + "차 시험" + "<br>");
					$('.result').append("필기시험 원서접수 기간 : " + docRegStartDt 
										+ " ~ " + docRegEndDt + "<br>");
					$('.result').append("필기시험 기간 : " + docExamStartDt
										+ " ~ " + docExamEndDt + "<br>");
					$('.result').append("필기시험 합격자 발표일 : " + docPassDt + "<br>");
					$('.result').append("실기시험 원서접수 기간 : " + pracRegStartDt
										+ " ~ " + pracRegEndDt + "<br>");
					$('.result').append("실기시험 기간 : " + pracExamStartDt
										+ " ~ " + pracExamEndDt + "<br>");
					$('.result').append("실기시험 합격자 발표일 : " + pracPassDt + "<br><br><br>");
			
				}
				
				
				
				
			},
			error: function(e) {
				console.log(e);
				console.log("오류가 발생했습니다.");
			}
		});
	}
	
	<%@ include file="/views/common/footer.jsp" %>
	</script>
</body>
</html>