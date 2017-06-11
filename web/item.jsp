<%-- 
    Document   : item.jsp
    Created on : 2017/06/09, 7:22:11
    Author     : komoritakeshi
--%>
<%@page import="kagoyume.ItemBeans" %>
<%@page import="java.util.ArrayList" %>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="kagoyume.UserDataBeans" %>

<%
    HttpSession hs = request.getSession();
    ArrayList<ItemBeans> getInfos = (ArrayList<ItemBeans>) hs.getAttribute("GetDataFromAPI");
    request.setCharacterEncoding("UTF-8");
    UserDataBeans udb = (UserDataBeans)hs.getAttribute("LOGIN_USER");
    
    ItemBeans selectIB = null;
    for (int i = 0; i < getInfos.size(); i++) {
        if (request.getParameter("id").equals(getInfos.get(i).getItemID())) {
            selectIB = getInfos.get(i);
        }
    }

%>

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
    <div class="container" style="margin-top: 104px;">

        <h4 style="marigin-top: 20px; margin-bottom: 30px; text-align: center;"><strong><%= selectIB.getName()%></strong></h5>
        <img style="width: 300px; height: 300px; margin: 20px auto 20px auto; display: block;" src=<%= selectIB.getImage()%> >

        <table class="table" style="width: 800px; margin: 0 auto 50px auto;">
            <tbody>
                <tr><td style="width: 130px;"><strong>金額</strong></td><td><td><%= selectIB.getPrice()%>円</td></tr>
                <tr><td style="width: 130px;"><strong>レビュー平均</strong></td><td><td><%= selectIB.getReviewAverage()%></td></tr>
                <tr><td style="width: 130px;"><strong>商品概要</strong></td><td><td><%= selectIB.getDescription()%></td></tr>
            </tbody>
        </table>


        <% if (hs.getAttribute("LOGIN_USER") != null) { %>
        <a data-toggle="modal" style="width: 150px; display: block; float: right; margin-bottom: 100px;" href="#confirm" class="btn btn-primary">カート追加へ</a>
        <% } else { %>
        <a class="btn btn-primary" style="width: 300px; display: block; float: right; margin-right: 50px; margin-bottom: 100px;" href="login.jsp">ログインするとカートに追加できます</a>
        <% }%>


        

        <div class="modal fade" id="confirm"> 
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title"><strong>カート追加確認画面</strong></h4>
                    </div>
                    <div class="modal-body" style="margin-top: 0;">
                        <p>下記の商品をカートに追加しますか？</p>
                        <table class="table table-striped">
                            <tbody>
                                <tr><td><img src=<%= selectIB.getImage()%> ></td><td><%= selectIB.getName()%></td></tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <form action="ItemAdd" method="post">
                            <input type="hidden" name="itemID" value="<%= selectIB.getItemID()%>">
                            <input type="hidden" name="itemName" value="<%= selectIB.getName()%>">
                            <input type="hidden" name="itemImage" value="<%= selectIB.getImage()%>">
                            <input type="hidden" name="itemPrice" value="<%= selectIB.getPrice()%>">
                            <input type="submit" value="カートに追加" class="btn btn-success">
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
