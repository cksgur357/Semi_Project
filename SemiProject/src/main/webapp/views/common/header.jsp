<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import = "web.member.model.vo.Member" %>
<%
   Member m = (Member)session.getAttribute("member");
%>
   
<html>
<head>
</head>
<style>
nav {
   position: relative;
   display: flex;
   width: 640px;
   margin: 3em auto;
   text-align: center;
   margin: 100px auto;
}

nav a {
  display: block;
  width: 25%;
  padding: .75em 0;
  color: #333;
  text-decoration: none;
  text-align: center;
}
.nav-underline {
  position: absolute;
  left: 0;
  bottom: -2px;
  width: 25%;
  height: 2px;
  background: #333;
  transition: all .3s ease-in-out;
}
nav a:nth-child(1).is-current ~ .nav-underline {
  left: 0;
}
nav a:nth-child(2).is-current ~ .nav-underline {
  left: 25%;
}
nav a:nth-child(3).is-current ~ .nav-underline {
  left: 50%;
}
nav a:nth-child(4).is-current ~ .nav-underline {
  left: 75%;
}
nav a:nth-child(1):hover ~ .nav-underline {
  left: 0;
}
nav a:nth-child(2):hover ~ .nav-underline {
  left: 25%;
}
nav a:nth-child(3):hover ~ .nav-underline {
  left: 50%;
}
nav a:nth-child(4):hover ~ .nav-underline {
  left: 75%;
}
</style>
<body>
<% if(m == null) { %>
   <nav>
      <a href="<%= request.getContextPath() %>/views/common/mainPage.jsp">Home</a> 
      <a href="<%= request.getContextPath() %>/selectList.bo">Board</a> 
      <a href="<%= request.getContextPath() %>/views/member/login.jsp">LogIn</a>
      <a href="<%= request.getContextPath() %>/views/member/join.jsp">SignUp</a>
      <div class="nav-underline"></div>
   </nav>
   <% } else { %>
   <nav>
      <a href="<%= request.getContextPath() %>/views/common/mainPage.jsp">Home</a> 
      <a href="<%= request.getContextPath() %>/selectList.bo">Board</a> 
      <a href="<%= request.getContextPath() %>/views/member/logout.jsp">LogOut</a>
      <a href="<%= request.getContextPath() %>/views/member/myPage.jsp">MyPage</a>
      <div class="nav-underline"></div>
   </nav>
   <% } %>
</body>
</html>