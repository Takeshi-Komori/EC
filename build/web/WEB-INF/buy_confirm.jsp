<%-- 
    Document   : buy_confirm
    Created on : 2017/06/10, 18:14:59
    Author     : komoritakeshi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="java.util.ArrayList" %>
<%@page import="kagoyume.ItemBeans" %>
<%@page import="kagoyume.UserDataBeans" %>

<%
    HttpSession hs = request.getSession();
    ArrayList<ItemBeans> itemBeansBox = (ArrayList<ItemBeans>) hs.getAttribute("ItemBeansBox");
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
        <p style="float: right; font-size: 14px; margin: 29.5px 50px 29.5px 0;" ><span class="glyphicon glyphicon-user" aria-hidden="true"></span><%=  udb.getName()%>様</p>

    </nav>

    <div class="container">
        <h3 style="margin-top: 104px; text-align: center; margin-bottom: 36px;">購入確認画面</h3>
        <div class="informations" style="width: 1000px; margin-left: auto; margin-right: auto;">
            <div class="table-contents" style="width: 800px; margin-left: auto; margin-right: auto; padding-top: 12px; padding-bottom: 12px;">
                <table class="table" style="margin-top: 24px;">
                    <thead>
                    <h3>以下の商品を購入しますか？</h3>
                    </thead>
                    <tbody>
                    <form action="BuyComplete" method="post">
                        <% Integer totalPrice = 0;
                            for (int i = 0; i < itemBeansBox.size(); i++) {
                                totalPrice += Integer.parseInt(itemBeansBox.get(i).getPrice());
                        %>
                        <tr style="background-color: white;"><td><%= itemBeansBox.get(i).getName()%></td><td><img src=<%= itemBeansBox.get(i).getImage()%>></td><td style="width: 100px; font-size: 18px;"><%= itemBeansBox.get(i).getPrice()%>円</td><td><a href="" class="btn btn-danger">削除</a></td></tr>          
                                <% }%>
                        
                        <tr><td><strong>配送先</strong></td><td></tr>
                        <tr style="background-color: white;"><td><%= udb.getAddress()%></td></tr>
                        <tr><td><strong>配送オプション</strong></td></tr>
                        <tr style="background-color: white;">
                            <td>
                                <div class="form-inline">
                                    <label class="radio-inline"><input type="radio" name="deliveryType" value="1">配送A</label>
                                    <label class="radio-inline"><input type="radio" name="deliveryType" value="2">配送B</label>
                                    <label class="radio-inline"><input type="radio" name="deliveryType" value="3">配送C</label>
                                </div>
                            </td></tr>
                        </tbody>
                </table>
                <hr style="width: 800px; margin: 50px auto 25px 0;">
                <h3 style="float: left; margin-top: 0;">合計</h3><h3 style="float: left; margin-left: 25px; margin-top: 0;"><%= totalPrice %>円</h3>
                <input type="submit" style="float: right; margin-bottom: 100px;" value="購入する" class="btn btn-primary">
                </form>
            </div>

        </div>
    </div>

    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
