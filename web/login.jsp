<%-- 
    Document   : login
    Created on : 2017/05/28, 12:03:24
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
      <form action="kagiyume/login.java" method="post">
          <input type="text" name="user_name">
          <input type="text" name="password">
          <input type="submit" value="送信">
      </form>
        <a href="resitration.jsp">新規登録</a>
    </body>
</html>
