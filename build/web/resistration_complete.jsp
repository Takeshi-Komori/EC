<%-- 
    Document   : resistration_complete
    Created on : 2017/05/28, 12:35:29
    Author     : nanameue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="kagoyume.UserDataDTO" %>
<%
   UserDataDTO ud = (UserDataDTO)request.getAttribute("USER_INFO"); 
%>

<!DOCTYPE html>
<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="utf-8">
    <title>登録</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
  </head>
  <body>
   <nav class="navbar navbar-default navbar-fixed-top">
    <div class="navbar-header">
      <a class="navbar-brand" href="">小森の店</a>
    </div>
    <div class="btn-group navbar-right" style="margin-top: 13px; margin-bottom: 13px;">
     <button style="margin: 8px 48px 8px 0;" class="btn btn-info dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-user"></i> Info
     </button>
     <ul class="dropdown-menu">
       <li><a href="">買い物かごの中</a></li>
       <li><a href="">ログアウト</a></li>
     </ul>
    </div>
   </nav>
      <div class="container">
        <h1>以上の内容で登録しました！</h1>
        <h2><%= ud.getName() %></h2>
        <h2><%= ud.getMail() %></h2>
        <h2><%= ud.getAddress() %></h2>
        <h2><%= ud.getPassword() %></h2>
      </div>
        
        
       <a href="top.jsp">トップに戻る</a
     <script src="http://code.jquery.com/jquery.js"></script>
     <script src="bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
