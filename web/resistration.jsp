<%-- 
    Document   : resitration
    Created on : 2017/05/28, 12:08:26
    Author     : nanameue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="kagoyume.UserDataBeans" %>

<%
    HttpSession hs = request.getSession();
    UserDataBeans udb = (UserDataBeans) hs.getAttribute("LOGIN_USER");
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
        <% if (hs.getAttribute("LOGIN_USER") != null) {%>
        <p style="float: right; font-size: 14px; margin: 29.5px 50px 29.5px 0;" ><span class="glyphicon glyphicon-user" aria-hidden="true"></span><%=  udb.getName()%>様</p>
        <% } else { %>
        <a href="" style="color: black; display: block; float: right; font-size: 14px; margin: 29.5px 50px 29.5px 0;">新規登録はこちら <span class="glyphicon glyphicon-check" aria-hidden="true"></span></a>
            <% } %>

    </nav>
    <% if (request.getAttribute("delete") != null) {%>
      <div style="margin-top: 104px; margin-left: 15px; margin-bottom: 0; width: 800px;" class="alert alert-danger">対象のユーザーは削除されています。再度登録してください。</div>
    <% } %>
    
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
