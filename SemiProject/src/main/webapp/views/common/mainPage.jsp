<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>


<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
   href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
   rel="stylesheet">
<script src="<%= request.getContextPath() %>/resources/js/jquery-3.6.0.min.js"></script>


</head>


<style>
.background {
   min-height: 100%;
   background-size: cover;
}

#searchBox {
   margin: 100px auto;
   position: relative;
   width: 700px;
   height: 50px;
}

h1 {
   font-size: 27pt;
}

.container {
   width: 700px;
   vertical-align: middle;
   white-space: nowrap;
   position: relative;
}

.container input#search {
   width: 700px;
   height: 50px;
   background: #2b303b;
   border: none;
   font-size: 10pt;
   float: left;
   color: #63717f;
   padding-left: 45px;
   -webkit-border-radius: 5px;
   -moz-border-radius: 5px;
   border-radius: 5px;
}

.container .icon1 {
   position: absolute;
   top: 50%;
   margin-left: 17px;
   margin-top: 13px;
   z-index: 1;
   color: #4f5b66;
}

#searchBoxTitle {
   text-align: center;
}

#value {
   width: 700px;
   height: 50px;
   background: #2b303b;
   border: none;
   font-size: 10pt;
   float: left;
   color: #63717f;
   padding-left: 45px;
   -webkit-border-radius: 5px;
   -moz-border-radius: 5px;
   border-radius: 5px;
}

#class {
   text-align: center;
}

#value:focus {
   outline: none;
}

.container {
   width: 700px;
   vertical-align: middle;
   white-space: nowrap;
   position: relative;
}

.item {
   margin: 3% 0px;
   display: flex;
   align-items: center;
}

.icon {
   width: 25px;
   height: 25px;
   background: lightslategray;
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

.center-item {
   width: 200px;
   margin-left: auto;
   margin-right: auto;
}

.result {
   width: 800px;
   margin-left: auto;
   margin-right: auto;
   border: 1.5px solid #63717f;
   text-align: center;
}

.name:hover {
   background: #c9cfd6;
}
</style>



<body>

   <a style="display: scroll; position: fixed; bottom: 10px; right: 10px;"
      href="#" title="맨 위로">맨 위로</a>

   <%@ include file="header.jsp"%>

   <div id="searchBox">
      <div id="searchBoxTitle">
         <h1 style="position: relative;">
            <img
               src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzodSRXEI0EIJt5g5r5UZHo-O6eE7CGdIDEA&usqp=CAU"
               style="display: inline; position: relative; width: 77px; height: 77px; top: 26.5px;" />
            자격증 다 모아
         </h1>
         <h4>자격증 정보를 한 눈에 파악하세요</h4>
      </div>
      <div class="container">
         <span class="icon1"><i class="fa fa-search"></i></span> <input
            type="text" onkeyup="filter()" id="value" placeholder="검색어를 입력하세요" />
      </div>
   </div>

   <br />


<script type="text/javascript">
      function filter(){

        var value, name, item, i;

        value = document.getElementById("value").value.toUpperCase();
        item = document.getElementsByClassName("item");

        for(i=0;i<item.length;i++){
          name = item[i].getElementsByClassName("name");
          if(name[0].innerHTML.toUpperCase().indexOf(value) > -1){
            item[i].style.display = "flex";
          }else{
            item[i].style.display = "none";
          }
        }
      }
</script>

   <br />
   <br />
   <br />

   <div class="searchbox">


      <div class="container center-item">

         <div class="item" onclick="func1();">
            <span class="icon">정</span> <span class="name" id="6892">정보기기운용기능사</span>
         </div>

         <div class="item" onclick="func2();">
            <span class="icon">정</span> <span class="name" id="6921">정보처리기능사</span>
         </div>

         <div class="item" onclick="func3();">
            <span class="icon">방</span> <span class="name" id="7730">방송통신기능사</span>
         </div>

         <div class="item" onclick="func4();">
            <span class="icon">무</span> <span class="name" id="6880">무선설비기능사</span>
         </div>

         <div class="item" onclick="func5();">
            <span class="icon">전</span> <span class="name" id="6893">전파전자통신기능사</span>
         </div>

         <div class="item" onclick="func6();">
            <span class="icon">통</span> <span class="name" id="7745">통신기기기능사</span>
         </div>

         <div class="item" onclick="func7();">
            <span class="icon">통</span> <span class="name" id="7720">통신선로기능사</span>
         </div>


         <div class="item" onclick="func8();">
            <span class="icon">전</span> <span class="name" id="7780">전기기능사</span>
         </div>

         <div class="item" onclick="func9();">
            <span class="icon">철</span> <span class="name" id="6772">철도전기신호기능사</span>
         </div>

         <div class="item" onclick="func10();">
            <span class="icon">광</span> <span class="name" id="7671">광학기능사</span>
         </div>

         <div class="item" onclick="func11();">
            <span class="icon">의</span> <span class="name" id="6176">의료전자기능사</span>
         </div>

         <div class="item" onclick="func12();">
            <span class="icon">자</span> <span class="name" id="6801">전자계산기기능사</span>
         </div>

         <div class="item" onclick="func13();">
            <span class="icon">전</span> <span class="name" id="6790">전자기기기능사</span>
         </div>

         <div class="item" onclick="func14();">
            <span class="icon">전</span> <span class="name" id="6785">전자캐드기능사</span>
         </div>
          
          <div class="item" onclick="func15();">
            <span class="icon">정</span> <span class="name">정보통신기술사</span>
          </div>
          <div class="item" onclick="func16();">
            <span class="icon">정</span> <span class="name">정보통신산업기사</span>
          </div>
          <div class="item" onclick="func17();">
            <span class="icon">무</span> <span class="name">무선설비산업기사</span>
          </div>
          <div class="item" onclick="func18();">
            <span class="icon">방</span> <span class="name">방송통신기능사</span>
          </div>
          <div class="item" onclick="func19();">
            <span class="icon">전</span> <span class="name">전파전자통신산업기사</span>
          </div>
          <div class="item" onclick="func20();">
            <span class="icon">정</span> <span class="name">정보통신기사</span>
          </div>
   
   </div>
   
   <br />
   <br />
   <br />

   <div class="result"></div>
   <script>
   
      function func1() {
         window.scrollTo({top: 700, left: 700, behavior: 'smooth'});
         $('.result').empty();
            $('.result').append("정보기기운용기능사");

            $('.result').append("시행처 : 한국산업인력공단" + "<br><br>");      
            
            $('.result').append("시험 과목" + "<br>" +
                           "- 필기 : 전자계산기일반, 정보기기일반, 정보통신일반, 정보통신업무규정" + "<br>" +
                           "- 실기 : 정보통신 운용 실무" + "<br><br>");
            
            $('.result').append("검정 방법" + "<br>" + 
                           "- 필기 : 전 과목 혼합, 객관식 60문항(60분)" + "<br>" +
                           "- 실기 : 작업형(1시간 30분 정도)" + "<br><br>");

            $('.result').append("합격 기준" + "<br>" +
                           "- 필기 : 100점 만점에 과목당 40점 이상, 전과목 평균 60점 이상" + "<br>" +
                           "- 실기 : 100점 만점에 60점 이상" + "<br><br>");
            
            $('.result').append("최종 합격자 발표 : 인터넷 발표(www.q-net.or.kr)" + "<br><br>");
            
            $('.result').append("자격증 발급 신청 : 자격증 교부신청서, 증명사진 1매, 신분증, 수수료" + "<br><br>");
            
            $('.result').append("응시 수수료" + "<br>" + 
                           "필기 : 14,500원 & " + "실기 : 21,800원" + "<br><br>");
           
            
       }

      
    
    function func2() {
       window.scrollTo({top: 700, left: 700, behavior: 'smooth'});
       $('.result').empty();
              $('.result').append("정보처리기능사");

            $('.result').append("시행처 : 한국산업인력공단" + "<br><br>");      
            
            $('.result').append("시험 과목" + "<br>" +
                           "- 필기 : 전자계산기일반, 패키지활용, PC운영체제, 정보통신일반" + "<br>" +
                           "- 실기 : 정보처리 실무" + "<br><br>");
            
            $('.result').append("검정 방법" + "<br>" + 
                           "- 필기 : 객관식 4가지 택일형 60문항(60분)" + "<br>" +
                           "- 실기 : 필답형(1시간 30분, 100점)" + "<br><br>");

            $('.result').append("합격 기준" + "<br>" +
                           "- 필기 : 100점 만점에 60점 이상" + "<br>" +
                           "- 실기 : 100점 만점에 60점 이상" + "<br><br>");
            
            $('.result').append("최종 합격자 발표 : 인터넷 발표(www.q-net.or.kr)" + "<br><br>");
            
            $('.result').append("자격증 발급 신청 : 자격증 교부신청서, 증명사진 1매, 신분증, 수수료" + "<br><br>");
            
            $('.result').append("응시 수수료" + "<br>" + 
                           "필기 : 14,500원 & " + "실기 : 17,200원" + "<br><br>");
        }
    
    function func3() {
       window.scrollTo({top: 700, left: 700, behavior: 'smooth'});
       $('.result').empty();
            $('.result').append("방송통신기능사");

            $('.result').append("시행처 : 한국방송통신전파진흥원" + "<br><br>");      
            
            $('.result').append("시험 과목" + "<br>" +
                           "- 필기 : 전기전자개론, 전자계산기일반, 방송통신일반, 방송설비기준" + "<br>" +
                           "- 실기 : 방송통신설비작업" + "<br><br>");
            
            $('.result').append("검정 방법" + "<br>" + 
                           "- 필기 : 객관식 4지선다형(60분)" + "<br>" +
                           "- 실기 : 작업형(3시간 정도, 100점)" + "<br><br>");

            $('.result').append("합격 기준" + "<br>" +
                           "- 필기 : 100점 만점에 60점 이상" + "<br>" +
                           "- 실기 : 100점 만점에 60점 이상" + "<br><br>");
            
            $('.result').append("최종 합격자 발표 : 인터넷 발표(www.q-net.or.kr)" + "<br><br>");
            
            $('.result').append("자격증 발급 신청 : 자격증 교부신청서, 증명사진 1매, 신분증, 수수료" + "<br><br>");
            
            $('.result').append("응시 수수료" + "<br>" + 
                           "필기 : 11,000원 & " + "실기 : 37,800원" + "<br><br>");
       }
    
    function func4() {
       window.scrollTo({top: 700, left: 700, behavior: 'smooth'});
       $('.result').empty();
         
         $('.result').append("무선설비기능사");

            $('.result').append("시행처 : 한국방송통신전파진흥원" + "<br><br>");      
            
            $('.result').append("시험 과목" + "<br>" +
                           "- 필기 : 전기전자공학, 전자계산기일반, 무선통신일반, 무선설비기준" + "<br>" +
                           "- 실기 : 무선통신설비작업" + "<br><br>");
            
            $('.result').append("검정 방법" + "<br>" + 
                           "- 필기 : 전과목 혼합, 객관식 60문항(60분)" + "<br>" +
                           "- 실기 : 작업형(3시간 정도, 100점)" + "<br><br>");

            $('.result').append("합격 기준" + "<br>" +
                           "- 필기 : 100점 만점에 60점 이상" + "<br>" +
                           "- 실기 : 100점 만점에 60점 이상" + "<br><br>");
            
            $('.result').append("최종 합격자 발표 : 인터넷 발표(www.q-net.or.kr)" + "<br><br>");
            
            $('.result').append("자격증 발급 신청 : 자격증 교부신청서, 증명사진 1매, 신분증, 수수료" + "<br><br>");
            
            $('.result').append("응시 수수료" + "<br>" + 
                           "필기 : 11,000원 & " + "실기 : 24,300원" + "<br><br>");
         
       }
    
    function func5() {
       window.scrollTo({top: 700, left: 700, behavior: 'smooth'});
       $('.result').empty();
            $('.result').append("전파전자통신기능사");

            $('.result').append("시행처 : 한국방송통신전파진흥원" + "<br><br>");      
            
            $('.result').append("시험 과목" + "<br>" +
                           "- 필기 : 무선통신일반, 통신영어, 전파관계법규" + "<br>" +
                           "- 실기 : 해상통신실무" + "<br><br>");
            
            $('.result').append("검정 방법" + "<br>" + 
                           "- 필기 : 전과목 혼합, 객관식 60문항(60분)" + "<br>" +
                           "- 실기 : 작업형(19분)" + "<br><br>");

            $('.result').append("합격 기준" + "<br>" +
                           "- 필기 : 100점 만점에 60점 이상" + "<br>" +
                           "- 실기 : 100점 만점에 60점 이상" + "<br><br>");
            
            $('.result').append("최종 합격자 발표 : 인터넷 발표(www.CQ.or.kr)" + "<br><br>");
            
            $('.result').append("자격증 발급 신청 : 자격증 교부신청서, 증명사진 1매, 신분증, 수수료" + "<br><br>");
            
            $('.result').append("응시 수수료" + "<br>" + 
                           "필기 : 11,500원 & " + "실기 : 18,800원" + "<br><br>");
       }
    
    function func6() {
       window.scrollTo({top: 700, left: 700, behavior: 'smooth'});
       $('.result').empty();
            $('.result').append("통신기기기능사");

            $('.result').append("시행처 : 한국방송통신전파진흥원" + "<br><br>");      
            
            $('.result').append("시험 과목" + "<br>" +
                           "- 필기 : 전기전자공학, 전자계산기일반, 통신기기일반, 통신기기설비기준" + "<br>" +
                           "- 실기 : 통신기기설비 작업" + "<br><br>");
            
            $('.result').append("검정 방법" + "<br>" + 
                           "- 필기 : 전과목 혼합, 객관식 60문항(60분)" + "<br>" +
                           "- 실기 : 작업형(3시간 정도)" + "<br><br>");

            $('.result').append("합격 기준" + "<br>" +
                           "- 필기 : 100점 만점에 60점 이상" + "<br>" +
                           "- 실기 : 100점 만점에 60점 이상" + "<br><br>");
            
            $('.result').append("최종 합격자 발표 : 인터넷 발표(www.CQ.or.kr)" + "<br><br>");
            
            $('.result').append("자격증 발급 신청 : 자격증 교부신청서, 증명사진 1매, 신분증, 수수료" + "<br><br>");
            
            $('.result').append("응시 수수료" + "<br>" + 
                           "필기 : 11,000원 & " + "실기 : 44,700원" + "<br><br>");
      }
    
      
      function func7() {
         window.scrollTo({top: 700, left: 700, behavior: 'smooth'});
         $('.result').empty();
         $('.result').append("통신선로기능사");

         $('.result').append("원서접수(필기) 방법" + "<br>" + 
                        "- 인터넷 접수 : 접수홈페이지(www.cq.or.kr) 접속하여 접수" + "<br>" +
                        "- 방문접수 : 관할지방본부에 직접 내방하여접수" + "<br>" + 
                        "- 우편접수 : 관할 지방본부에우편으로접수" + "<br><br>");      
         $('.result').append("필기시험 수험생 준비물" + "<br>" +
                        "수험표, 신분증, 컴퓨터용 흑색 사인펜" + "<br><br>");
         
         $('.result').append("원서접수(실기) 방법" + "<br>" + 
                        "- 인터넷 접수 : 접수홈페이지(www.cq.or.kr) 접속하여 접수" + "<br>" +
                        "시험 일시 및 장소 본인 선택(선착순)" + "<br><br>");

         $('.result').append("실기시험 수험생 준비물" + "<br>" +
                        "수험표, 신분증, 실기시험 준비물" + "<br><br>");
         
         $('.result').append("최종 합격자 발표 : 인터넷 발표(www.cq.or.kr)" + "<br><br>");
         
         $('.result').append("자격증 발급 신청 : 자격증 교부신청서, 증명사진 1매, 신분증, 수수료" + "<br><br>");
         $('.result').append("응시 수수료" + "<br>" + 
                        "필기 : 11,500원 & " + "실기 : 67,200원" + "<br><br>");
      
      }
      
      function func8() {
         window.scrollTo({top: 700, left: 700, behavior: 'smooth'});
         $('.result').empty();
         $('.result').append("전기기능사");

         $('.result').append("시행처 : 한국산업인력공단" + "<br><br>");      
         
         $('.result').append("시험 과목" + "<br>" +
                        "- 필기 : 전기이론, 전기기기, 전기설비" + "<br>" +
                        "- 실기 : 전기설비작업" + "<br><br>");
         
         $('.result').append("검정 방법" + "<br>" + 
                        "- 필기 : 객관식 4지 택일형(60문항)" + "<br>" +
                        "- 실기 : 작업형(5시간 정도, 전기설비작업)" + "<br><br>");

         $('.result').append("합격 기준" + "<br>" +
                        "- 필기 : 100점 만점에 60점 이상" + "<br>" +
                        "- 실기 : 100점 만점에 60점 이상" + "<br><br>");
         
         $('.result').append("최종 합격자 발표 : 인터넷 발표(www.q-net.or.kr)" + "<br><br>");
         
         $('.result').append("자격증 발급 신청 : 자격증 교부신청서, 증명사진 1매, 신분증, 수수료" + "<br><br>");
         
         $('.result').append("응시 수수료" + "<br>" + 
                        "필기 : 14,500원 & " + "실기 : 106,200원" + "<br><br>");
      }
      
      function func9() {
         window.scrollTo({top: 700, left: 700, behavior: 'smooth'});
         $('.result').empty();
         $('.result').append("철도전기신호기능사");

         $('.result').append("시행처 : 한국산업인력공단" + "<br><br>");      
         
         $('.result').append("시험 과목" + "<br>" +
                        "- 필기 : 전기이론, 철도신호일반, 전기철도일반" + "<br>" +
                        "- 실기 : 전기철도작업 및 철도신호 실무(작업형)" + "<br><br>");
         
         $('.result').append("검정 방법" + "<br>" + 
                        "- 필기 : 객관식 4지 택일형, 과목당 20문항(과목당 30분)" + "<br>" +
                        "- 실기 : 작업형(2시간 정도)" + "<br><br>");

         $('.result').append("합격 기준" + "<br>" +
                        "- 필기 : 100점을 만점으로 하여 과목당 40점 이상, 전과목 평균60점 이상" + "<br>" +
                        "- 실기 : 100점을 만점으로 하여 60점 이상" + "<br><br>");
         
         $('.result').append("최종 합격자 발표 : 인터넷 발표(www.q-net.or.kr)" + "<br><br>");
         
         $('.result').append("자격증 발급 신청 : 자격증 교부신청서, 증명사진 1매, 신분증, 수수료" + "<br><br>");
         
         $('.result').append("응시 수수료" + "<br>" + 
                        "필기 : 14,500원 & " + "실기 : 99,600원" + "<br><br>");
      }
      
      function func10() {
         window.scrollTo({top: 700, left: 700, behavior: 'smooth'});
         $('.result').empty();
         $('.result').append("광학기능사");
         
         $('.result').append("시행처 : 한국산업인력공단" + "<br><br>");      
         
         $('.result').append("시험 과목" + "<br>" +
                        "- 필기 : 광학일반, 광학가공, 광학기기, 품질관리와 산업안전" + "<br>" +
                        "- 실기 : 광학재료의 가공작업" + "<br><br>");
         
         $('.result').append("검정 방법" + "<br>" + 
                        "- 필기 : 객관식 4지 택일형 60문항 (60분)" + "<br>" +
                        "- 실기 : 작업형(30분~120분 정도, 100점)" + "<br><br>");

         $('.result').append("합격 기준" + "<br>" +
                        "- 필기 : 100점을 만점으로 하여 60점 이상" + "<br>" +
                        "- 실기 : 100점을 만점으로 하여 60점 이상" + "<br><br>");
         
         $('.result').append("최종 합격자 발표 : 인터넷 발표(www.q-net.or.kr)" + "<br><br>");
         
         $('.result').append("자격증 발급 신청 : 자격증 교부신청서, 증명사진 1매, 신분증, 수수료" + "<br><br>");
         
         $('.result').append("응시 수수료" + "<br>" + 
                        "필기 : 14,500원 & " + "실기 : 85,100원" + "<br><br>");
      }
      
      function func11() {
         window.scrollTo({top: 700, left: 700, behavior: 'smooth'});
         $('.result').empty();
         $('.result').append("의료전자기능사");
         $('.result').append("시행처 : 한국산업인력공단" + "<br><br>");      
         
         $('.result').append("시험 과목" + "<br>" +
                        "- 필기 : 의용공학개론, 의료기초공학, 의료기기운용" + "<br>" +
                        "- 실기 : 의료전자 실무" + "<br><br>");
         
         $('.result').append("검정 방법" + "<br>" + 
                        "- 필기 : 객관식 4지 택일형 60문항 (60분)" + "<br>" +
                        "- 실기 : 복합형((필답형 : 1시간,50점, 작업형 : 3시간 정도,50점))" + "<br><br>");

         $('.result').append("합격 기준" + "<br>" +
                        "- 필기 : 100점을 만점으로 하여 60점 이상" + "<br>" +
                        "- 실기 : 100점을 만점으로 하여 60점 이상" + "<br><br>");
         
         $('.result').append("최종 합격자 발표 : 인터넷 발표(www.q-net.or.kr)" + "<br><br>");
         
         $('.result').append("자격증 발급 신청 : 자격증 교부신청서, 증명사진 1매, 신분증, 수수료" + "<br><br>");
         
         $('.result').append("응시 수수료" + "<br>" + 
                        "필기 : 14,500원 & " + "실기 : 29,600원" + "<br><br>");
      }
      
      function func12() {
         window.scrollTo({top: 700, left: 700, behavior: 'smooth'});
         $('.result').empty();
         $('.result').append("전자계산기기능사");
         $('.result').append("시행처 : 한국산업인력공단" + "<br><br>");      
         
         $('.result').append("시험 과목" + "<br>" +
                        "- 필기 : 전지전자공학, 전자계산기구조, 프로그래밍일반, 디지털공학" + "<br>" +
                        "- 실기 : 전자계산기구성회로의 조립, 조정 및 수리작업" + "<br><br>");
         
         $('.result').append("검정 방법" + "<br>" + 
                        "- 필기 : 객관식 4지 택일형 60문항 (60분)" + "<br>" +
                        "- 실기 : 작업형(4시간 30분정도)" + "<br><br>");

         $('.result').append("합격 기준" + "<br>" +
                        "- 필기 : 100점을 만점으로 하여 60점 이상" + "<br>" +
                        "- 실기 : 100점을 만점으로 하여 60점 이상" + "<br><br>");
         
         $('.result').append("최종 합격자 발표 : 인터넷 발표(www.q-net.or.kr)" + "<br><br>");
         
         $('.result').append("자격증 발급 신청 : 자격증 교부신청서, 증명사진 1매, 신분증, 수수료" + "<br><br>");
         
         $('.result').append("응시 수수료" + "<br>" + 
                        "필기 : 14,500원 & " + "실기 : 35,800원" + "<br><br>");
      }
      
      function func13() {
         window.scrollTo({top: 700, left: 700, behavior: 'smooth'});
         $('.result').empty();
         $('.result').append("전자기기기능사");
         $('.result').append("시행처 : 한국산업인력공단" + "<br><br>");      
         
         $('.result').append("시험 과목" + "<br>" +
                        "- 필기 : 전지전자공학, 전자계산기일반, 전자측정, 전자기기 및 음향영상기기" + "<br>" +
                        "- 실기 : 전자기기 및 음향영상기기 작업" + "<br><br>");
         
         $('.result').append("검정 방법" + "<br>" + 
                        "- 필기 : 객관식 4지 택일형 60문항 (60분)" + "<br>" +
                        "- 실기 : 작업형(4시간, 100점)" + "<br><br>");

         $('.result').append("합격 기준" + "<br>" +
                        "- 필기 : 100점을 만점으로 하여 60점 이상" + "<br>" +
                        "- 실기 : 100점을 만점으로 하여 60점 이상" + "<br><br>");
         
         $('.result').append("최종 합격자 발표 : 인터넷 발표(www.q-net.or.kr)" + "<br><br>");
         
         $('.result').append("자격증 발급 신청 : 자격증 교부신청서, 증명사진 1매, 신분증, 수수료" + "<br><br>");
         
         $('.result').append("응시 수수료" + "<br>" + 
                        "필기 : 14,500원 & " + "실기 : 30,400원" + "<br><br>");
      }
      
      function func14() {
         window.scrollTo({top: 700, left: 700, behavior: 'smooth'});
         $('.result').empty();
         $('.result').append("전자캐드기능사");
         $('.result').append("시행처 : 한국산업인력공단" + "<br><br>");      
         
         $('.result').append("시험 과목" + "<br>" +
                        "- 필기 : 전기전자공학, 전자계산기일반, 전자제도(CAD)이론" + "<br>" +
                        "- 실기 : 전자제도(CAD) 작업" + "<br><br>");
         
         $('.result').append("검정 방법" + "<br>" + 
                        "- 필기 : 객관식 4지 택일형 60문항 (60분)" + "<br>" +
                        "- 실기 : 작업형(4시간 30분)" + "<br><br>");

         $('.result').append("합격 기준" + "<br>" +
                        "- 필기 : 100점을 만점으로 하여 60점 이상" + "<br>" +
                        "- 실기 : 100점을 만점으로 하여 60점 이상" + "<br><br>");
         
         $('.result').append("최종 합격자 발표 : 인터넷 발표(www.q-net.or.kr)" + "<br><br>");
         
         $('.result').append("자격증 발급 신청 : 자격증 교부신청서, 증명사진 1매, 신분증, 수수료" + "<br><br>");
         
         $('.result').append("응시 수수료" + "<br>" + 
                        "필기 : 14,500원 & " + "실기 : 22,000원" + "<br><br>");
      }
      function func15() {
           window.scrollTo({top: 700, left: 700, behavior: 'smooth'});
           $('.result').empty();
           $('.result').append("정보통신기술사");

           $('.result').append("시험 과목" + "<br>" +
                           "- 필기 : 무선, 유선 통신망의 설계, 시공, 보전 및 음성," + "<br>" +
                           "데이터, 방송에 관계되는 통신 방식, 기술기준에 관계되는 사항" + "<br>" +
                           "- 실기 : 면접" + "<br><br>");
            
            $('.result').append("검정 방법" + "<br>" + 
                           "- 필기 : 단답형 및 주관식 논술형(매교시당 100분, 총 400분)" + "<br>" +
                           "- 실기 : 구술형 면접(20분/1인)" + "<br><br>");

            $('.result').append("합격 기준" + "<br>" +
                           "- 필기 : 100점을 만점으로 하여 60점 이상" + "<br>" +
                           "- 실기 : 100점을 만점으로 하여 60점 이상" + "<br><br>");
            
            $('.result').append("자격증 발급 신청 : 자격증 교부신청서, 증명사진 1매, 신분증, 수수료" + "<br><br>");
            
            $('.result').append("응시 수수료" + "<br>" + 
                           "필기 : 65,800원 & " + "실기 : 82,200원" + "<br><br>");
            
            }
         
         function func16() {
              window.scrollTo({top: 700, left: 700, behavior: 'smooth'});
              $('.result').empty();
              $('.result').append("정보통신산업기사");

              $('.result').append("시험 과목" + "<br>" +
                              "- 필기 : 디지털전자회로, 정보통신기기, 정보전송개론," + "<br>" +
                              "전자계산기일반 및 정보설비 기준" + "<br>" +
                              "- 실기 : 정보통신 실무" + "<br><br>");
               
               $('.result').append("검정 방법" + "<br>" + 
                              "- 필기 : 객관식 4지선다형(2시간)" + "<br>" +
                              "- 실기 : 필답형(2시간 30분)" + "<br><br>");

               $('.result').append("합격 기준" + "<br>" +
                              "- 필기 : 과목당 100점을 만점으로 하여 매과목 40점 이상, 전과목 평균 60점 이상" + "<br>" +
                              "- 실기 : 100점을 만점으로 하여 60점 이상" + "<br><br>");
               
               $('.result').append("자격증 발급 신청 : 자격증 교부신청서, 증명사진 1매, 신분증, 수수료" + "<br><br>");
               
               $('.result').append("응시 수수료" + "<br>" + 
                              "필기 : 8,800원 & " + "실기 : 20,200원" + "<br><br>");
               
               }
         
         function func17() {
              window.scrollTo({top: 700, left: 700, behavior: 'smooth'});
              $('.result').empty();
              $('.result').append("무선설비산업기사");

              $('.result').append("시험 과목" + "<br>" +
                              "- 필기 : 디지털전자회로, 무선통신시스템, 안테나엔지니어링" + "<br>" +
                              "컴퓨터일반 및 무선설비기준" + "<br>" +
                              "- 실기 : 무선설비 실무" + "<br><br>");
               
               $('.result').append("검정 방법" + "<br>" + 
                              "- 필기 : 객관식 4지선다형(2시간)" + "<br>" +
                              "- 실기 : 작업형(2시간 50분)" + "<br><br>");

               $('.result').append("합격 기준" + "<br>" +
                              "- 필기 : 과목당 100점을 만점으로 하여 매과목 40점 이상, 전과목 평균 60점 이" + "<br>" +
                              "- 실기 : 100점을 만점으로 하여 60점 이상" + "<br><br>");
               
               $('.result').append("자격증 발급 신청 : 자격증 교부신청서, 증명사진 1매, 신분증, 수수료" + "<br><br>");
               
               $('.result').append("응시 수수료" + "<br>" + 
                              "필기 : 18,800원 & " + "실기 : 41,300원" + "<br><br>");
               
               }
         
         function func18() {
              window.scrollTo({top: 700, left: 700, behavior: 'smooth'});
              $('.result').empty();
              $('.result').append("방송통신기능사");

              $('.result').append("시험 과목" + "<br>" +
                              "- 필기 : 전기전자개론, 전자계산기일반, 방송통신일반, 방송설비기준" + "<br>" +
                              "- 실기 : 방송통신설비작업" + "<br><br>");
               
               $('.result').append("검정 방법" + "<br>" + 
                              "- 필기 : 객관식 4지선다형(1시간)" + "<br>" +
                              "- 실기 : 구술형 면접(20분/1인)" + "<br><br>");

               $('.result').append("합격 기준" + "<br>" +
                              "- 필기 : 100점을 만점으로 하여 60점 이상 : 전과목 혼합 60문항" + "<br>" +
                              "- 실기 : 100점을 만점으로 하여 60점 이상" + "<br><br>");
               
               $('.result').append("자격증 발급 신청 : 자격증 교부신청서, 증명사진 1매, 신분증, 수수료" + "<br><br>");
               
               $('.result').append("응시 수수료" + "<br>" + 
                              "필기 : 18,800원 & " + "실기 : 39,500원" + "<br><br>");
               
               }
         
         function func19() {
              window.scrollTo({top: 700, left: 700, behavior: 'smooth'});
              $('.result').empty();
              $('.result').append("전파전자통신산업기사");

              $('.result').append("시험 과목" + "<br>" +
                              "- 필기 : 디지털전자회로, 무선통신시스템 운용, 해상통신 운용, 전파관계법규" + "<br>" +
                              "- 실기 : 해상통신실무" + "<br><br>");
               
               $('.result').append("검정 방법" + "<br>" + 
                              "- 필기 : 객관식 4지선다형(2시간)" + "<br>" +
                              "- 실기 : 작업형(22분)" + "<br><br>");

               $('.result').append("합격 기준" + "<br>" +
                              "- 필기 : 과목당 100점을 만점으로 하여 매 과목 40점 이상, 전과목 평균 60점 이상" + "<br>" +
                              "- 실기 : 100점을 만점으로 하여 60점 이상" + "<br><br>");
               
               $('.result').append("자격증 발급 신청 : 자격증 교부신청서, 증명사진 1매, 신분증, 수수료" + "<br><br>");
               
               $('.result').append("응시 수수료" + "<br>" + 
                              "필기 : 18,800원 & " + "실기 : 24,600원" + "<br><br>");
               
               }
         function func20() {
              window.scrollTo({top: 700, left: 700, behavior: 'smooth'});
              $('.result').empty();
              $('.result').append("정보통신기사");

              $('.result').append("시험 과목" + "<br>" +
                              "- 필기 : 디지털전자회로, 정보통신시스템, 정보통신기기," + "<br>" +
                              "정보전송공학, 전자계산기일반 및 정보설비기준" + "<br>" +
                              "- 실기 : 정보통신실무" + "<br><br>");
               
               $('.result').append("검정 방법" + "<br>" + 
                              "- 필기 : 객관식 4지선다형(2시간 30분)" + "<br>" +
                              "- 실기 :    필답형(2시간 30분)" + "<br><br>");

               $('.result').append("합격 기준" + "<br>" +
                              "- 필기 : 과목당 100점을 만점으로 하여 매 과목 40점 이상, 전과목 평균 60점 이상" + "<br>" +
                              "- 실기 : 100점을 만점으로 하여 60점 이상" + "<br><br>");
               
               $('.result').append("자격증 발급 신청 : 자격증 교부신청서, 증명사진 1매, 신분증, 수수료" + "<br><br>");
               
               $('.result').append("응시 수수료" + "<br>" + 
                              "필기 : 18,800원 & " + "실기 : 21,900원" + "<br><br>");
               
               }
           
   </script>



   <script>
   
   
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
      
      $('.name').click(function() {
       // location.href="views/search/result.jsp";
         
       // 클릭한 요소의 종목 코드 가져오기
         testType = $('.name').attr('id');
         testName = $('.name').text();

         /*
         // 종목 정보 관련 API 조회 ajax   
         $.ajax({
         type: 'GET',   
         url: 'api002.do',
         // data: { testName },
         dataType : 'json',
         success: function(data2) {
            console.log("종목 관련 API 조회");
            console.log(JSON.parse(data2)); 
            
         },
         error: function(e) {
            console.log(e);
            console.log("오류가 발생했습니다.");
         }

         });
         */

         // 날짜 관련 API 조회 ajax   
         $.ajax({
         type: 'GET',   
         url: 'api001.do',
         data: { testType },
         dataType : 'json',
         success: function(data) {
            
            $('.result').append(testName);
            
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
<!--
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
               $('.result').append("실기시험 합격자 발표일 : " + pracPassDt + "<br><br><br>"); -->
               
            }

         },
         error: function(e) {
            console.log(e);
            console.log("오류가 발생했습니다.");
         }
         });
         
      });        
         
       
      
   </script>

   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
   <div class="s"></div>




   <%@ include file="footer.jsp"%>





</body>
</html>