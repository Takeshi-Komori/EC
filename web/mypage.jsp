<%-- 
    Document   : mypage.jsp
    Created on : 2017/06/10, 9:42:38
    Author     : komoritakeshi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            </div>

            <h3 style="margin-top: 36px; text-align: center; margin-bottom: 36px;">小森様の購入履歴</h3>
            <div class="panel panel-default" style="width: 800px; margin-left: auto; margin-right: auto;">
                <!--<div class="panel-body">-->
                    <ul class="list-group">
                        <li class="list-group-item">
                            <p>購入日 : 12月3日</p>
                        </li>
                        <li class="list-group-item">...</li>
                        <li class="list-group-item">...</li>
                    </ul>
                <!--</div>-->
            </div>
        </div>



        <script src="http://code.jquery.com/jquery.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
