<%-- 
    Document   : top
    Created on : 2017/05/27, 16:35:17
    Author     : nanameue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
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
                    <li><a href="">ログアウト</a></li>
                </ul>
            </div>
        </nav>
        <% if (request.getAttribute("success") != null){%>
        <div style="margin-top: 104px; marin-left: 15px;  width: 800px;" class="alert alert-success">ログインに成功しました</div>
        <div class="container">
            <form style="margin-top: 20px;" action="Search" method="get"> 
                <input type="text" name="search">
                <input type="submit" value="送信">
            </form>
        </div>
        <%} else {%>
        <div class="container">
            <form style="margin-top: 104px;" action="Search" method="get"> 
                <input type="text" name="search">
                <input type="submit" value="送信">
            </form>
        </div>
        <% } %>
        <script src="http://code.jquery.com/jquery.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
