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
     <nav class="navbar navbar-default navbar-fixed-top">
      <div class="navbar-header">
       <a class="navbar-brand" href="">小森の店</a>
      </div>
       <div class="btn-group navbar-right" style="margin-top: 13px; margin-bottom: 13px;">
        <button style="margin: 8px 48px 8px 0;" class="btn btn-info dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-user"></i> Info</button>
       <ul class="dropdown-menu">
        <li><a href="">買い物かごの中</a></li>
        <li><a href="">ログアウト</a></li>
       </ul>
     </div>
     </nav>
        
            <input type="text" name="search">
            <input type="submit" value="送信">
        </form>    
    </body>
</html>
