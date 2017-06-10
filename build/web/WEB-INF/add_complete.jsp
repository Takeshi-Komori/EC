<%-- 
    Document   : add_complete.jsp
    Created on : 2017/06/10, 16:33:58
    Author     : komoritakeshi
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
        <div class="btn-group navbar-right" style="margin-top: 13px; margin-bottom: 13px;">
            <button style="margin: 8px 48px 8px 0;" class="btn btn-info dropdown-toggle" data-toggle="dropdown">Info<span class="caret"></span></button>
            <ul class="dropdown-menu">
                <% if (hs.getAttribute("LOGIN_USER") != null) { %>
                <li><a href="cart.jsp">買い物かごの中</a></li>
                <li><a href="mypage.jsp">マイページ</a></li>
                <li><a href="Logout">ログアウト</a></li>
                    <% } else { %>
                <li><a href="login.jsp">ログイン</a></li>
                    <% }%>
            </ul>
        </div>
    </nav>


    <h1>商品追加したっす！！！！！</h1>




    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>       
</body>
</html>
