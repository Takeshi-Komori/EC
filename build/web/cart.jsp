<%-- 
    Document   : cart
    Created on : 2017/06/10, 14:26:41
    Author     : komoritakeshi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="java.util.ArrayList" %>
<%@page import="kagoyume.ItemBeans" %>
<%@page import="kagoyume.UserDataBeans" %>

<%
    HttpSession hs = request.getSession();
    ArrayList<ItemBeans> itemBeansBox = new ArrayList<ItemBeans>();
    if (hs.getAttribute("ItemBeansBox") != null) {
        itemBeansBox = (ArrayList<ItemBeans>) hs.getAttribute("ItemBeansBox");
    }
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
        <a href="resistration.jsp" style="color: black; display: block; float: right; font-size: 14px; margin: 29.5px 50px 29.5px 0;">新規登録はこちら <span class="glyphicon glyphicon-check" aria-hidden="true"></span></a>
            <% } %>

    </nav>
    <div class="container" style="padding: 20px 0">
        <h1 style="margin-top: 74px; margin-bottom: 20px; text-align: center;">買い物かごの中</h1>
        <table class="table table-striped">
            <tbody style="background-color: white;">

                <% if (itemBeansBox.size() > 0) {
                        for (int i = 0; i < itemBeansBox.size(); i++) {%>
                        <tr><td><%= itemBeansBox.get(i).getName()%></td><td><img src=<%= itemBeansBox.get(i).getImage()%>></td><td><%= itemBeansBox.get(i).getPrice()%>円</td><td><a href="DeleteItem?itemId=<%= itemBeansBox.get(i).getItemID() %>&view=cart" class="btn btn-danger">削除</a></td></tr>
                        <% } %>
            </tbody>
        </table>
        <a href="BuyConfirm" style="width: 150px; display: block; float: right;" class="btn btn-primary">購入に進む</a>
        <% } else { %>
        <h5 style="text-align: center; margin-top: 50px;">カートに商品はありません。検索欄から欲しいものを入力してみましょう！</h5>
        <% }%>
        
    </div>
    
    

    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
