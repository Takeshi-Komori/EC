<%-- 
    Document   : resistration_confirm
    Created on : 2017/05/28, 12:13:15
    Author     : nanameue
--%>
<%
    
   String name = request.getParameter("name");
   String email = request.getParameter("email");
   String address = request.getParameter("address");
   String password = request.getParameter("password");

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="utf-8">
    <title>Bootstrapの練習</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
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
    <h4 style="color: red; margin-top: 104px; text-align: center;">以下の内容でお間違えないでしょうか？</h4>
    <div class="table-contents" style="width: 600px; margin-left: auto; margin-right: auto;">
     <table class="table table-striped" style="margin-top: 24px;">
       <tbody>
         <tr><td>Name</td><td><%= name %></td></tr>
         <tr><td>Email</td><td><%= email %></td></tr>
         <tr><td>Address</td><td><%= address %></td></tr>
         <tr><td>password</td><td><%= password %></td></tr>
       </tbody>
      </table>
     
    <form action="" style="float: right;">
     <input type="hidden" value="<%= name %>">
     <input type="hidden" value="<%= email %>">
     <input type="hidden" value="<%= address %>">
     <input type="hidden" value="<%= password %>">
     <input type="submit" name="" value="登録" class="btn btn-primary">
    </form>
    </div>
     </div>




   <script src="http://code.jquery.com/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
