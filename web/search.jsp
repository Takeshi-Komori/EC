<%-- 
    Document   : search
    Created on : 2017/05/27, 16:35:35
    Author     : nanameue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="kagoyume.ItemBeans" %>
<%@page import="java.util.ArrayList" %>

<%
    ArrayList<ItemBeans> getInfos = (ArrayList<ItemBeans>) request.getAttribute("GetDataFromAPI");

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
                <a class="navbar-brand" href="">小森の店</a>
            </div>
            <div class="btn-group navbar-right">
                <button style="margin: 8px 48px 8px 0;" class="btn btn-info dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-user"></i> Info
                </button>
                <ul class="dropdown-menu">
                    <li><a href="">買い物かごの中</a></li>
                    <li><a href="">ログアウト</a></li>
                </ul>
            </div>
        </nav>
   <div class="container" style="padding: 20px 0">
     <h1 style="margin-top: 74px; margin-bottom: 20px; text-align: center;">商品検索結果</h1>
     <table class="table table-striped" style="margin-top: ">
       <thead>
           <tr><th>商品名</th><th>画像</th><th>商品概要</th><th>金額</th></tr>
       </thead>
       <tbody>
          <% for (int i = 0; i < getInfos.size(); i++) { %>
          <tr><td><%= getInfos.get(i).getName() %></td><td><img src=<%= getInfos.get(i).getImage() %> ></td><td><%= getInfos.get(i).getName() %></td><td><%= getInfos.get(i).getPrice() %></td></tr>
          <% } %>
       </tbody>
     </table> 
    </body>
</html>
