<%-- 
    Document   : top
    Created on : 2017/05/27, 16:35:17
    Author     : nanameue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <header>
            <a href="login.jsp">ログイン</a>
        </header>        <form action="Search" method="post">
            <input type="text" name="search">
            <input type="submit" value="送信">
        </form>    
    </body>
</html>
