<%-- 
    Document   : resitration
    Created on : 2017/05/28, 12:08:26
    Author     : nanameue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%
    HttpSession hs = request.getSession();
%>

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
                <button style="margin: 8px 48px 8px 0;" class="btn btn-info dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-user"></i> Info</button>
                <ul class="dropdown-menu">
                    <li><a href="">買い物かごの中</a></li>
                    <li><a href="">マイページ</a></li>
                    <li><a href="">ログアウト</a></li>
                    <li><a href="">ログイン</a></li>
                </ul>
            </div>
        </nav>

        <div class="container">
            <p style="margin-top: 104px; text-align: center;"><strong>新規登録</strong></p>
            <form action="Resistration" style="margin: 12px auto 0 auto; width: 600px;" method="post">
                <div class="form-group">
                    <label class="control-label" for="username">Name</label>
                    <input type="text" id="name" name="name" class="form-control" placeholder="マツモトキヨシ">
                </div>
                <div class="form-group">
                    <label class="control-label" for="email">Email</label>
                    <input type="text" id="email" name="email" class="form-control" placeholder="kyoshi@kiyoshi.com">
                </div>
                <div class="form-group">
                    <label class="control-label" for="address">Address</label>
                    <input type="text" id="email" name="address" class="form-control" placeholder="松キヨシ一丁目">
                </div>
                <div class="form-group">
                    <label class="control-label" for="password">Password</label>
                    <input type="password" id="password" name="password" class="form-control">
                </div>
                <div class="form-group">
                    <label class="control-label" for="password_confirm">password-confirm</label>
                    <input type="password" id="password_confirm" name="password_confirm" class="form-control">
                </div>
                <div class="form-group">
                    <input type="submit" value="新規登録" class="btn btn-primary">
                </div>
            </form>


        </div>




        <script src="http://code.jquery.com/jquery.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
