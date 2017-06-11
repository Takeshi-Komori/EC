<%-- 
    Document   : login
    Created on : 2017/05/28, 12:03:24
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
                <a class="navbar-brand" href="top.jsp" style="padding-left: 200px;">小森の店</a>
                <form action="Search" method="get" style=" margin: 21px auto 21px auto; height: 38px; float: right;">
                    <div class="input-group" style="width: 500px;">
                        <input type="text" name="search" class="form-control" placeholder="何かお探しですか？" />
                        <span class="input-group-btn">
                            <input type="submit" class="btn btn-default" value="検索">
                        </span>
                </form>

            </div>

        </div>

        <div class="btn-group navbar-right" style="float: right; margin-top: 13px; margin-bottom: 13px;">
            <button style="margin: 8px 48px 8px 0;" class="btn btn-info dropdown-toggle" data-toggle="dropdown">Info<span class="caret"></span></button>
            <ul class="dropdown-menu">
                <% if (hs.getAttribute("LOGIN_USER") != null) { %>
                <li><a href="cart.jsp">買い物かごの中</a></li>
                <li><a href="MyPage">マイページ</a></li>
                <li><a href="Logout">ログアウト</a></li>
                    <% } else { %>
                <li><a href="login.jsp">ログイン</a></li>
                    <% } %>
            </ul>
        </div>
        <a href="" style="color: black; display: block; float: right; font-size: 14px; margin: 29.5px 50px 29.5px 0;">新規登録はこちら <span class="glyphicon glyphicon-check" aria-hidden="true"></span></a>

    </nav>

    <div class="container">
        <% if (request.getAttribute("fail") != null) {%>
        <div style="margin-top: 104px; width: 800px;" class="alert alert-danger">ログインに失敗しました</div>
        <p style="margin-top: 12px; text-align: center;"><strong>ログイン</strong></p>
        <form action="LoginJudge" style="margin: 12px auto 0 auto; width: 600px;" method="post">
            <div class="form-group">
                <label class="control-label" for="email">Email</label>
                <input type="text" id="email" name="email" class="form-control" placeholder="email">
            </div>
            <div class="form-group">
                <label class="control-label" for="password">Password</label>
                <input type="password" id="password" name="password" class="form-control">
            </div>
            <div class="form-group">
                <input type="submit" value="ログイン" class="btn btn-primary">
            </div>
        </form>
        <%} else {%>
        <p style="margin-top: 104px; text-align: center;"><strong>ログイン</strong></p>
        <form action="LoginJudge" style="margin: 12px auto 0 auto; width: 600px;" method="post">
            <div class="form-group">
                <label class="control-label" for="email">Email</label>
                <input type="text" id="email" name="email" class="form-control" placeholder="email">
            </div>
            <div class="form-group">
                <label class="control-label" for="password">Password</label>
                <input type="password" id="password" name="password" class="form-control">
            </div>
            <div class="form-group">
                <input type="submit" value="ログイン" class="btn btn-primary">
            </div>
        </form>
        <% }%>
        <a href="resistration.jsp">新規登録</a>

        <script src="http://code.jquery.com/jquery.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
</body>

</html>
