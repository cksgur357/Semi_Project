<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="web.member.model.vo.Member" %>
 <%
    Member m = (Member)session.getAttribute("member");
 %>
<html>
<head>
   <%
      // ���ڵ� ó��
      request.setCharacterEncoding("euc-kr"); 
   %>
<title>�α��� ȭ��</title>

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

   
      // ��� ��ư Ŭ���� ùȭ������ �̵�
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
            �ڰ��� �� ���
   </h1>

   <div id="logoutForm">
   
      <br><br>
      <b><font size="6" color="gray">�α׾ƿ�</font></b>
      <br><br><br>
   
      <form name="logoutInfo" method="post" action="<%= request.getContextPath()  %>/logout.do" >

         <label><%= m.getNickname() %>�� ������ �α׾ƿ� �Ͻðڽ��ϱ�?</label>
         
         <br><br><br>
         <input type="submit" value="��"/>&nbsp;&nbsp;&nbsp;
         <input type="button" value="�ƴϿ�" onclick= "goFirstForm();">
      </form>
      
   
   </div>   
   
   
</body>
</html>