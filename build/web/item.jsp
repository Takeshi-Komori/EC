<%-- 
    Document   : item.jsp
    Created on : 2017/06/09, 7:22:11
    Author     : komoritakeshi
--%>
<%@page import="kagoyume.ItemBeans" %>
<%@page import="java.util.ArrayList" %>
<%@page import="javax.servlet.http.HttpSession" %>

<%
    HttpSession hs = request.getSession();
    ArrayList<ItemBeans> getInfos = (ArrayList<ItemBeans>) hs.getAttribute("GetDataFromAPI");
    request.setCharacterEncoding("UTF-8");
    
    System.out.print(request.getParameter("id"));
    
    ItemBeans selectIB = null;
    for (int i = 0; i < getInfos.size(); i++) {
        if (request.getParameter("id").equals(getInfos.get(i).getMerchantID())) {
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
        <div class="container" style="margin-top: 80px;">
            <h2 style="marigin-top: 20px"><%= selectIB.getName() %></h2>
            <img src=<%= selectIB.getImage() %> >
            <h4><%= selectIB.getDescription() %></h4>

            
 <a data-toggle="modal" href="#confirm" class="btn btn-primary">カート追加へ</a>

     <div class="modal fade" id="confirm"> 
      <div class="modal-dialog">
       <div class="modal-content">
        <div class="modal-header">
         <button class="close" data-dismiss="modal">&times;</button>
         <h4 class="modal-title">カート追加確認画面</h4>
        </div>
        <div class="modal-body">
         <p>下記の商品をカートに追加しますか？</p>
         <table class="table table-striped">

       <tbody>
         <tr><td><%= selectIB.getName() %></td></tr>
         <tr><td><img src=<%= selectIB.getImage() %> ></td><td><%= selectIB.getName() %></td></tr>
       </tbody>
     </table>
        </div>
        <div class="modal-footer">
         <form>
          <input type="submit" value="カートに追加" class="btn btn-success">
         </form>
        </div>
       </div>
      </div>
     </div>         
            
            
        </div>
        
    </body>
</html>
