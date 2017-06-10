<%-- 
    Document   : cart
    Created on : 2017/06/10, 14:26:41
    Author     : komoritakeshi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="java.util.ArrayList" %>
<%@page import="kagoyume.ItemBeans" %>

<%
    HttpSession hs = request.getSession();
    ArrayList<ItemBeans> itemBeansBox = new ArrayList<ItemBeans>();
    if (hs.getAttribute("ItemBeansBox") != null) {
        itemBeansBox = (ArrayList<ItemBeans>) hs.getAttribute("ItemBeansBox");
    }
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
                    <% } %>
            </ul>
        </div>
    </nav>
    <div class="container" style="padding: 20px 0">
        <h1 style="margin-top: 74px; margin-bottom: 20px; text-align: center;">買い物かごの中</h1>
        <table class="table table-striped">
            <tbody style="background-color: white;">

                <% if (itemBeansBox.size() > 0) {
                   for (int i = 0; i < itemBeansBox.size(); i++) {%>
                     <tr><td><%= itemBeansBox.get(i).getName()%></td><td><img src=<%= itemBeansBox.get(i).getImage()%>></td><td><%= itemBeansBox.get(i).getPrice() %>円</td></tr>
                    <% } %>
                   <a href="" style="width: 150px; display: block;" class="btn btn-primary">購入に進む</a>
                <% } else { %>
                    <h2>カートに商品はありません。検索欄から欲しいものを入力してみましょう！</h2>
                <% }%>



            </tbody>
        </table>    

        <script src="http://code.jquery.com/jquery.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
