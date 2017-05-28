<%-- 
    Document   : resitration
    Created on : 2017/05/28, 12:08:26
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
        <h1>新規登録</h1>
        　<form action="resistration_confirm.jsp" method="get">
          <label for="user_name">名前</label><input type="text" name="user_name">
          <label for="password">パスワード</label><input type="text" name="password">
          <label for="mail_address">メールアドレス</label><input type="text" name="mail_address">
          <label for="address">住所</label><input type="text" name="address">
          <input type="submit" value="登録">
      </form>
    </body>
</html>
