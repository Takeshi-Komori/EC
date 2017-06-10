<%-- 
    Document   : mypage.jsp
    Created on : 2017/06/10, 9:42:38
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
                <a class="navbar-brand" href="" style="padding-left: 200px;">小森の店</a>
                <form action="Search" method="get" style=" margin: 21px auto 21px auto; height: 38px; float: right;">
                    <div class="input-group" style="width: 500px;">
                        <input type="text" class="form-control" placeholder="何かお探しですか？" />
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
                <li><a href="">買い物かごの中</a></li>
                <li><a href="">マイページ</a></li>
                <li><a href="">ログアウト</a></li>
                    <% } else { %>
                <li><a href="">ログイン</a></li>
                    <% } %>
            </ul>
        </div>
    </nav>

        <div class="container">
            <h3 style="margin-top: 104px; text-align: center; margin-bottom: 36px;">小森様の登録情報</h3>
            <div class="informations" style="background-color: #f0f0f0; width: 800px; margin-left: auto; margin-right: auto;">
                <div class="table-contents" style="width: 600px; margin-left: auto; margin-right: auto; padding-top: 12px; padding-bottom: 12px;">
                    <table class="table" style="margin-top: 24px;">
                        <thead>
                            <tr><th>会員登録情報</th></tr>
                        </thead>
                        <tbody>
                            <tr><td>基本情報</td><td>小森武史 22歳 男</td><td><a href="" class="btn btn-info">変更</a></td></tr>
                            <tr><td>メールアドレス</td><td>stubgurssy@gmail.com</td><td><a href="" class="btn btn-info">変更</a></td></tr>
                            <tr><td>住所</td><td>東京都杉並区宮前</td><td><a href="" class="btn btn-info">変更</a></td></tr>
                            <tr><td>password</td><td>*******</td><td><a href="" class="btn btn-info">変更</a></td></tr>
                        </tbody>
                    </table>
                </div>
                <a href="" class="btn btn-danger" style="float: right; margin-top: 10px;">削除</a>
            </div>

            <h3 style="margin-top: 100px; text-align: center; margin-bottom: 36px;">小森様の購入履歴</h3>
            <table class="table" style="width: 800px; margin: 0 auto 0 auto;">
                <thead>
                    <tr><th>購入日</th><th>商品</th><th>値段</th></tr>
                </thead>
                <tbody>
                    <tr><td>1月1日</td><td><p style="float: left;">からあげクン</p><img style="width: 146px; height: 146px; margin-left: 100px; float: left;" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTORpJ71yfBlnRDFSMNlE4EjV8v4xuOQnVtS-V4GaDfRQFl9eOR"></td><td>1000円</td></tr>
                    <tr><td>1月1日</td><td><p style="float: left;">からあげクン</p><img style="width: 146px; height: 146px; margin-left: 100px; float: left;" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTORpJ71yfBlnRDFSMNlE4EjV8v4xuOQnVtS-V4GaDfRQFl9eOR"></td><td>1000円</td></tr>
                    <tr><td>1月1日</td><td><p style="float: left;">からあげクン</p><img style="width: 146px; height: 146px; margin-left: 100px; float: left;" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTORpJ71yfBlnRDFSMNlE4EjV8v4xuOQnVtS-V4GaDfRQFl9eOR"></td><td>1000円</td></tr>
                    <tr><td>1月1日</td><td><p style="float: left;">からあげクン</p><img style="width: 146px; height: 146px; margin-left: 100px; float: left;" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTORpJ71yfBlnRDFSMNlE4EjV8v4xuOQnVtS-V4GaDfRQFl9eOR"></td><td>1000円</td></tr>
                    <tr><td>1月1日</td><td><p style="float: left;">からあげクン</p><img style="width: 146px; height: 146px; margin-left: 100px; float: left;" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTORpJ71yfBlnRDFSMNlE4EjV8v4xuOQnVtS-V4GaDfRQFl9eOR"></td><td>1000円</td></tr>
                </tbody>
            </table>
        </div>



        <script src="http://code.jquery.com/jquery.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
