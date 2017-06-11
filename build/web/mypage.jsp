<%-- 
    Document   : mypage.jsp
    Created on : 2017/06/10, 9:42:38
    Author     : komoritakeshi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="kagoyume.UserDataBeans" %>
<%@page import="java.util.ArrayList" %>
<%@page import="kagoyume.ItemBeans" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>


<%
    HttpSession hs = request.getSession();
    UserDataBeans udb = (UserDataBeans) hs.getAttribute("LOGIN_USER");
    ArrayList<ItemBeans> ibArray = (ArrayList<ItemBeans>) request.getAttribute("ITEM_HISTORY");
    SimpleDateFormat sdf = new SimpleDateFormat("MM月dd日");

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

    <div class="container">
        <h3 style="margin-top: 104px; text-align: center; margin-bottom: 36px;"><%= udb.getName()%>様の登録情報</h3>
        <div class="informations" style="background-color: #f0f0f0; width: 800px; margin-left: auto; margin-right: auto;">
            <div class="table-contents" style="width: 600px; margin-left: auto; margin-right: auto; padding-top: 12px; padding-bottom: 36px;">
                <table class="table" style="margin-top: 24px;">
                    <thead>
                        <tr><th>会員登録情報</th><th></th><th></th></tr>
                    </thead>
                    <tbody>
                        <tr><td>名前</td><td><%= udb.getName()%></td><td></td></tr>
                        <tr><td>メールアドレス</td><td><%= udb.getEmail()%></td><td></td></tr>
                        <tr><td>住所</td><td><%= udb.getAddress()%></td><td></td></tr>
                                <tr><td>password</td><td><% for (int i = 0; i < udb.getPassword().length(); i++) {
                                out.print("*");
                            }%></td><td></td></tr>
                    </tbody>
                </table>
              <a href="UpdateConfirm" class="btn btn-info">変更</a>
            </div>
            <a href="#delete_confirm" data-toggle="modal" class="btn btn-danger" style="float: right; margin-top: 10px;">削除</a>
        </div>

        <h3 style="margin-top: 100px; text-align: center; margin-bottom: 36px;"><%= udb.getName()%>様の購入履歴</h3>
        <div class="table_contents" style="width: 800px; margin-left: auto; margin-right: auto;">
        <table class="table" style="width: 800px; margin: 0 auto 0 auto;">
            <thead>
                <tr><th style="width: 100px;">購入日</th><th>商品</th><th></th></tr>
            </thead>
            <tbody>

                <% for (int i = 0; i < ibArray.size(); i++) {%>
                <tr><td><%= sdf.format(ibArray.get(i).getBoughtDate()) %></td><td><%= ibArray.get(i).getName()%><td><img style="width: 146px; height: 146px;" src=<%= ibArray.get(i).getImage()%>></td><td></td></tr>
                        <%  }%>

            </tbody>
        </table>
        <hr style="width: 800px; margin: 50px auto 25px auto;">
        <h4 style="float: left; margin: 0 auto 100px auto;">累計購入金額</h4><h3 style="float: right; margin-top: 0; margin-right: 50px;"><%= udb.getTotalPrice()%>円</h3>
       </div>
       
    <div class="modal fade" id="delete_confirm"> 
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title"><strong>削除確認</strong></h4>
                    </div>
                    <div class="modal-body" style="margin-top: 0;">
                        <p>データを削除しますか？</p>
                        <p>登録情報が全て削除されます。</p>
                    </div>
                    <div class="modal-footer">
                        <form action="DeleteComplete" method="post">
                            <input type="submit" value="削除します" class="btn btn-danger">
                        </form>
                    </div>
                </div>
            </div>
        </div>   
    </div>



    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
