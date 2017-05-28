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
          <input type="text" name="username">
          <input type="text" name="password">
          <input type="text" name="mail_address">
          <input type="text" name="address">
          <input type="submit" value="登録">
      </form>
    </body>
</html>
