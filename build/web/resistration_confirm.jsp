<%-- 
    Document   : resistration_confirm
    Created on : 2017/05/28, 12:13:15
    Author     : nanameue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>登録確認画面</h1>
        　<h2>この内容で登録しますか？</h2>
         
         <h3>名前:<% out.print(request.getParameter("user_name")); %></h3><br />
         <h3>パスワード:<% out.print(request.getParameter("password")); %></h3><br />
         <h3>メールアドレス:<% out.print(request.getParameter("mail_address")); %></h3><br />
         <h3>住所<% out.print(request.getParameter("address")); %></h3><br />
    </body>
</html>
