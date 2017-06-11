<%-- 
    Document   : search
    Created on : 2017/05/27, 16:35:35
    Author     : nanameue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="kagoyume.ItemBeans" %>
<%@page import="java.util.ArrayList" %>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="kagoyume.UserDataBeans" %>

<%
    HttpSession hs = request.getSession();
    ArrayList<ItemBeans> getInfos = (ArrayList<ItemBeans>) hs.getAttribute("GetDataFromAPI");
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


    <div class="container" style="padding: 20px 0">
        <h1 style="margin-top: 74px; margin-bottom: 20px; text-align: center;">商品検索結果</h1>
        <table class="table table-striped" style="margin-top: ">
            <thead>
                <tr><th>商品名</th><th>画像</th><th>商品概要</th><th>金額</th></tr>
            </thead>
            <tbody>
                <% for (int i = 0; i < getInfos.size(); i++) {%>
                <tr><td style="width: 300px;"><a href="item.jsp?id=<%= getInfos.get(i).getItemID()%>"><%= getInfos.get(i).getName()%></a></td><td><img src=<%= getInfos.get(i).getImage()%> ></td>
                    <td>
                     <% if(getInfos.get(i).getDescription().length() == 0) {
                       out.print("※この商品の説明はありません");
                     } else if (getInfos.get(i).getDescription().length() > 200) {
                         out.print(getInfos.get(i).getDescription().substring(0, 180) + "......");
                     } else {
                        out.print(getInfos.get(i).getDescription());
                     } %>
                    </td>
                    <td style="width: 100px;"><%= getInfos.get(i).getPrice()%>円</td>
                </tr>
               　<% }%>
            </tbody>
        </table> 

        <script src="http://code.jquery.com/jquery.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
