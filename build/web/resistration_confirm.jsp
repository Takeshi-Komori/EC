    <%-- 
    Document   : resistration_confirm
    Created on : 2017/05/28, 12:13:15
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
                <a class="navbar-brand" href="top.jsp" style="padding-left: 200px;">KAGOYUME</a>
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
        <a href="resistration.jsp" style="color: black; display: block; float: right; font-size: 14px; margin: 29.5px 50px 29.5px 0;">新規登録はこちら <span class="glyphicon glyphicon-check" aria-hidden="true"></span></a>


    </nav>

        <div class="container" style="padding: 20px 0">
            <h4 style="color: red; margin-top: 104px; text-align: center;">以下の内容でお間違えないでしょうか？</h4>
            <div class="table-contents" style="width: 600px; margin-left: auto; margin-right: auto;">
                <table class="table table-striped" style="margin-top: 24px;">
                    <tbody>
                        <tr><td>Name</td><td><%= udb.getName()%></td></tr>
                        <tr><td>Email</td><td><%= udb.getEmail()%></td></tr>
                        <tr><td>Address</td><td><%= udb.getAddress()%></td></tr>
                        <tr><td>password</td><td><%= udb.getPassword()%></td></tr>
                    </tbody>
                </table>

                <form action="ResistrationConfirm" style="float: right;" method="post">
                    <input type="hidden" name="ACCESS_NUMBER" value="<%= hs.getAttribute("ACCESS_NUMBER")%>">
                    <input type="submit" name="" value="登録" class="btn btn-primary">
                </form>
            </div>
        </div>




        <script src="http://code.jquery.com/jquery.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
