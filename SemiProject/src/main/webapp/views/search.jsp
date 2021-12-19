<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색 화면</title>
<script src="resources/js/jquery-3.6.0.min.js"></script>
<style>
body {
   margin: 0;
   padding: 0;
   font-family: "Montserrat";
}

.searchbox {
   width: 90%;
   margin: 10px auto;
}

.header {
   background: red;
   overflow: hidden;
   padding: 20px;
   text-align: center;
}

.header h1 {
   text-transform: uppercase;
   color: gold;
   margin: 0;
   margin-bottom: 8px;
}

#value {
   border: none;
   background: gold;
   padding: 6px;
   font-size: 18px;
   width: 80%;
   border-radius: 6px;
   color: white;
}

#value:focus {
   outline: none;
}

.container {
   background: #FFFFF5;
   padding: 1%;
}

.item {
   margin: 3% 0px;
   display: flex;
   align-items: center;
}

.icon {
   width: 25px;
   height: 25px;
   background: red;
   color: white;
   font-size: 15px;
   text-align: center;
   line-height: 25px;
   border-radius: 50%;
   margin-right: 8px;
}

.name {
   font-size: 17px;
   font-weight: 470;
   color: black;
}
</style>
</head>
<body>
   <div class="searchbox">
      <div class="header">
         <h1>Search</h1>
         <input onkeyup="filter()" type="text" id="value"
            placeholder="Type to Search">
      </div>

      <div class="container">

         <div class="item">
            <span class="icon">정</span> <span class="name" id="6892">정보기기운용기사</span>
         </div>

         <div class="item">
            <span class="icon">정</span> <span class="name" id="6921">정보처리기능사</span>
         </div>

         <div class="item">
            <span class="icon">방</span> <span class="name" id="7730">방송통신기능사</span>
         </div>

         <div class="item">
            <span class="icon">무</span> <span class="name" id="6880">무선설비기능사</span>
         </div>

         <div class="item">
            <span class="icon">전</span> <span class="name" id="6893">전파전자통신기능사</span>
         </div>

         <div class="item">
            <span class="icon">통</span> <span class="name" id="7745">통신기기기능사</span>
         </div>

         <div class="item">
            <span class="icon">통</span> <span class="name" id="7720">통신선로기능사</span>
         </div>

         <div class="item">
            <span class="icon">전</span> <span class="name" id="7780">전기기능사</span>
         </div>

         <div class="item">
            <span class="icon">철</span> <span class="name" id="6772">철도전기신호기능사</span>
         </div>

         <div class="item">
            <span class="icon">광</span> <span class="name" id="7671">광학기능사</span>
         </div>

         <div class="item">
            <span class="icon">의</span> <span class="name" id="6176">의료전자기능사</span>
         </div>

         <div class="item">
            <span class="icon">자</span> <span class="name" id="6801">전자계산기기능사</span>
         </div>

         <div class="item">
            <span class="icon">전</span> <span class="name" id="6790">전자기기기능사</span>
         </div>

         <div class="item">
            <span class="icon">전</span> <span class="name" id="6785">전자캐드기능사</span>
         </div>
      </div>
   </div>
   
   <div class="result">
   </div>

   <script type="text/javascript">
   
      // 검색어 필터 기능 함수
      function filter() {

         var value, name, item, i;

         value = document.getElementById("value").value.toUpperCase();
         item = document.getElementsByClassName("item");

         for (i = 0; i < item.length; i++) {
            name = item[i].getElementsByClassName("name");
            if (name[0].innerHTML.toUpperCase().indexOf(value) > -1) {
               item[i].style.display = "flex";
               
            } else {
               item[i].style.display = "none";
            }
         }
         
      }
            
      
      var testType, testName;
      /*
      // 종목 정보 관련 API 조회 ajax   
      $.ajax({
         type: 'GET',   
         url: 'api002.do',
         // data: { testName },
         dataType : 'json',
         success: function(data2) {
            
            console.log(JSON.parse(data2)); 
            
         },
         error: function(e) {
            console.log(e);
            console.log("오류가 발생했습니다.");
         }
         
      });
      */
      
      $('.name').click(function() {
         // 클릭한 요소의 종목 코드 가져오기
         testType = $('.name').attr('id');
         testName = $('.name').text();
      
         
      // 날짜 관련 API 조회 ajax
      
      $.ajax({
         type: 'GET',   
         url: 'api001.do',
         data: { testType },
         dataType : 'json',
         success: function(data) {
            
            console.log(testType);
            
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
            
            
               console.log(implYy + "년 " + implSeq + "차 시험");
      
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
      
      
      
      
   })
      
   </script>

</body>
</html>