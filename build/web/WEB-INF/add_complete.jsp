<%-- 
    Document   : add_complete.jsp
    Created on : 2017/06/10, 16:33:58
    Author     : komoritakeshi
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
                    <% }%>
            </ul>
        </div>
        <p style="float: right; font-size: 14px; margin: 29.5px 50px 29.5px 0;" ><span class="glyphicon glyphicon-user" aria-hidden="true"></span><%=  udb.getName()%>様</p>
    </nav>

    <div class="container">
        <h5 style="margin-top: 104px;">商品を追加しました。Info→買い物かごの中で確認できます。</h5>
    </div>

    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>       
</body>
</html>
