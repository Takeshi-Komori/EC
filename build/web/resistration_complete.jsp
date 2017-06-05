<%-- 
    Document   : resistration_complete
    Created on : 2017/05/28, 12:35:29
    Author     : nanameue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="kagoyume.UserDataDTO" %>
<%
   UserDataDTO ud = (UserDataDTO)request.getAttribute("USER_INFO"); 
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>以上の内容で登録しました！</h1>
        <h2><%= ud.getName() %></h2>
        <h2>komorit2092</h2>
        <h2>stubgurssy@gmail.com</h2>
        <h2>東京都</h2>
        
        <a href="top.jsp">トップに戻る</a>
    </body>
</html>
