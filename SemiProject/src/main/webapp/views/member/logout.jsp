<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="web.member.model.vo.Member" %>
 <%
    Member m = (Member)session.getAttribute("member");
 %>
<html>
<head>
   <%
      // 인코딩 처리
      request.setCharacterEncoding("euc-kr"); 
   %>
<title>로그인 화면</title>

   <style type="text/css">
   div {
      width : 1000px;
      height: 500px;
      background : white;
      color: black;
      margin-left : auto;
      margin-right : auto;
      padding : 75px;
      text-align:center;
   }
   
   table {
      padding: 60px 0px;
      margin-left:auto; 
      margin-right:auto;
         
   }
   
   input {
      padding : 10px;
   }
      
      
   td{
      margin: 20px;
      color: snow;
   }
      
   #title{
      
      }
   h1{
      text-align:center;
   }
   </style>

   <script type="text/javascript">

   
      // 취소 버튼 클릭시 첫화면으로 이동
      function goFirstForm() {
         location.href="<%= request.getContextPath() %>/views/common/mainPage.jsp";
      }
      
      function logout(){
         $('#logoutForm').submit();
      }
   </script>
   
      

</head>
<body>
   <h1 style="position: relative;">
            <img
               src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzodSRXEI0EIJt5g5r5UZHo-O6eE7CGdIDEA&usqp=CAU"
               style="display: inline; position: relative; width: 77px; height: 77px; top: 26.5px;" />
            자격증 다 모아
   </h1>

   <div id="logoutForm">
   
      <br><br>
      <b><font size="6" color="gray">로그아웃</font></b>
      <br><br><br>
   
      <form name="logoutInfo" method="post" action="<%= request.getContextPath()  %>/logout.do" >

         <label><%= m.getNickname() %>님 정말로 로그아웃 하시겠습니까?</label>
         
         <br><br><br>
         <input type="submit" value="네"/>&nbsp;&nbsp;&nbsp;
         <input type="button" value="아니오" onclick= "goFirstForm();">
      </form>
      
   
   </div>   
   
   
</body>
</html>