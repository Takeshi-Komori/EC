package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.servlet.http.HttpSession;
import kagoyume.UserDataBeans;

public final class top_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    HttpSession hs = request.getSession();
    request.setCharacterEncoding("UTF-8");
    UserDataBeans udb = (UserDataBeans) hs.getAttribute("LOGIN_USER");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"ja\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <title>登録</title>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link href=\"bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\" media=\"screen\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <nav class=\"navbar navbar-default navbar-fixed-top\">\n");
      out.write("            <div class=\"navbar-header\">\n");
      out.write("                <a class=\"navbar-brand\" href=\"top.jsp\" style=\"padding-left: 200px;\">KAGOYUME</a>\n");
      out.write("                <form action=\"Search\" method=\"get\" style=\" margin: 21px auto 21px auto; height: 38px; float: right;\">\n");
      out.write("                    <div class=\"input-group\" style=\"width: 500px;\">\n");
      out.write("                        <input type=\"text\" name=\"search\" class=\"form-control\" placeholder=\"何かお探しですか？\" />\n");
      out.write("                        <span class=\"input-group-btn\">\n");
      out.write("                            <input type=\"submit\" class=\"btn btn-default\" value=\"検索\">\n");
      out.write("                        </span>\n");
      out.write("                </form>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"btn-group navbar-right\" style=\"float: right; margin-top: 13px; margin-bottom: 13px;\">\n");
      out.write("            <button style=\"margin: 8px 48px 8px 0;\" class=\"btn btn-info dropdown-toggle\" data-toggle=\"dropdown\">Info<span class=\"caret\"></span></button>\n");
      out.write("            <ul class=\"dropdown-menu\">\n");
      out.write("                ");
 if (hs.getAttribute("LOGIN_USER") != null) { 
      out.write("\n");
      out.write("                <li><a href=\"cart.jsp\">買い物かごの中</a></li>\n");
      out.write("                <li><a href=\"MyPage\">マイページ</a></li>\n");
      out.write("                <li><a href=\"Logout\">ログアウト</a></li>\n");
      out.write("                    ");
 } else { 
      out.write("\n");
      out.write("                <li><a href=\"login.jsp\">ログイン</a></li>\n");
      out.write("                    ");
 } 
      out.write("\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("        ");
 if (hs.getAttribute("LOGIN_USER") != null) {
      out.write("\n");
      out.write("        <p style=\"float: right; font-size: 14px; margin: 29.5px 50px 29.5px 0;\" ><span class=\"glyphicon glyphicon-user\" aria-hidden=\"true\"></span>");
      out.print(  udb.getName());
      out.write("様</p>\n");
      out.write("        ");
 } else { 
      out.write("\n");
      out.write("        <a href=\"resistration.jsp\" style=\"color: black; display: block; float: right; font-size: 14px; margin: 29.5px 50px 29.5px 0;\">新規登録はこちら <span class=\"glyphicon glyphicon-check\" aria-hidden=\"true\"></span></a>\n");
      out.write("            ");
 } 
      out.write("\n");
      out.write("\n");
      out.write("    </nav>\n");
      out.write("    ");
 if (request.getAttribute("success") != null) {
      out.write("\n");
      out.write("\n");
      out.write("    <div style=\"margin-top: 104px; margin-left: 15px;  width: 800px;\" class=\"alert alert-success\">\n");
      out.write("        ");
 if (request.getAttribute("success").equals("login_success")) { 
      out.write("ログインに成功しました\n");
      out.write("        ");
} else if (request.getAttribute("success").equals("update_success")) { 
      out.write("ユーザー情報を更新しました\n");
      out.write("        ");
 } 
      out.write(" \n");
      out.write("    </div>       \n");
      out.write("\n");
      out.write("    ");
 } else if (request.getAttribute("Logout_success") != null) { 
      out.write("\n");
      out.write("    <div style=\"margin-top: 104px; margin-left: 15px;  width: 800px;\" class=\"alert alert-info\">ログアウトしました</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    ");
 } else if (request.getAttribute("delete_complete") != null) { 
      out.write("\n");
      out.write("    <div style=\"margin-top: 104px; margin-left: 15px;  width: 800px;\" class=\"alert alert-info\">ユーザー情報を削除しました</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    ");
} else {
      out.write("\n");
      out.write("    <div class=\"container\" style=\"margin-top: 340px;\">\n");
      out.write("        <h1 style=\"text-align: center\">KAGOYUME</h1>\n");
      out.write("        <h4 style=\"text-align: center\">~かごいっぱいの夢を~</h4>\n");
      out.write("    </div>\n");
      out.write("    ");
 }
      out.write("\n");
      out.write("    \n");
      out.write("    <script src=\"http://code.jquery.com/jquery.js\"></script>\n");
      out.write("    <script src=\"bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
