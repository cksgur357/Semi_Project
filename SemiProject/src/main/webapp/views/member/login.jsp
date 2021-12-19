<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
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

      function checkValue()
      {
         inputForm = eval("document.loginInfo");
         if(!inputForm.id.value)
         {
            alert("아이디를 입력하세요");   
            inputForm.id.focus();
            return false;
         }
         if(!inputForm.password.value)
         {
            alert("비밀번호를 입력하세요");   
            inputForm.password.focus();
            return false;
         }
      }
   
      // 취소 버튼 클릭시 첫화면으로 이동
      function goFirstForm() {
         location.href="<%= request.getContextPath() %>/views/common/mainPage.jsp";
      }
      
      function login(){
         $('#loginForm').submit();
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

   <div id="loginForm">
   
      <br>
      <b><font size="6" color="gray">로그인</font></b>
      <br><br>
   
      <form name="loginInfo" method="post" action="<%= request.getContextPath()  %>/login.do" >

         <table>
            <tr>
               <td bgcolor="lightslategray">아이디</td>
               <td><input type="text" name="userId" maxlength="50"></td>
            </tr>
            
            <tr>
               <td bgcolor="lightslategray">비밀번호</td>
               <td><input type="password" name="userPwd" maxlength="50"></td>
            </tr>
         </table>
         <br>
         <input type="submit" value="로그인"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <input type="button" value="취소" onclick="goFirstForm()">
      </form>
      
      <% 
         // 아이디, 비밀번호가 틀릴경우 화면에 메시지 표시
         // LoginPro.jsp에서 로그인 처리 결과에 따른 메시지를 보낸다.
         String msg=request.getParameter("msg");
         
         if(msg!=null && msg.equals("0")) 
         {
            out.println("<br>");
            out.println("<font color='red' size='5'>비밀번호를 확인해 주세요.</font>");
         }
         else if(msg!=null && msg.equals("-1"))
         {   
            out.println("<br>");
            out.println("<font color='red' size='5'>아이디를 확인해 주세요.</font>");
         }
      %>   
   </div>   
   
   
</body>
</html>