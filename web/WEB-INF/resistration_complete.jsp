<%-- 
    Document   : resistration_complete
    Created on : 2017/05/28, 12:35:29
    Author     : nanameue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="kagoyume.UserDataBeans" %>
<%
    HttpSession hs = request.getSession();
    UserDataBeans udb = (UserDataBeans) hs.getAttribute("UserDataBeans");
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
      <div class="container" style="padding: 20px 0">
            <h4 style="color: red; margin-top: 104px; text-align: center;">以下の内容で登録しました！</h4>
            <div class="table-contents" style="width: 600px; margin-left: auto; margin-right: auto;">
                <table class="table table-striped" style="margin-top: 24px;">
                    <tbody>
                        <tr><td>Name</td><td><%= udb.getName()%></td></tr>
                        <tr><td>Email</td><td><%= udb.getEmail()%></td></tr>
                        <tr><td>Address</td><td><%= udb.getAddress()%></td></tr>
                        <tr><td>password</td><td><%= udb.getPassword()%></td></tr>
                    </tbody>
                </table>
            </div>
                    <a href="top.jsp" style="">トップに戻る</a>
      </div>
        
                    
     <script src="http://code.jquery.com/jquery.js"></script>
     <script src="bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
