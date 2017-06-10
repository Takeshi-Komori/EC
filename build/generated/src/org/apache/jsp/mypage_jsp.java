package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.servlet.http.HttpSession;

public final class mypage_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    HttpSession hs = request.getSession();


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
      out.write("                <a class=\"navbar-brand\" href=\"\" style=\"padding-left: 200px;\">小森の店</a>\n");
      out.write("                <form action=\"Search\" method=\"get\" style=\" margin: 21px auto 21px auto; height: 38px; float: right;\">\n");
      out.write("                    <div class=\"input-group\" style=\"width: 500px;\">\n");
      out.write("                        <input type=\"text\" class=\"form-control\" placeholder=\"何かお探しですか？\" />\n");
      out.write("                        <span class=\"input-group-btn\">\n");
      out.write("                            <input type=\"submit\" class=\"btn btn-default\" value=\"検索\">\n");
      out.write("                        </span>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"btn-group navbar-right\" style=\"margin-top: 13px; margin-bottom: 13px;\">\n");
      out.write("            <button style=\"margin: 8px 48px 8px 0;\" class=\"btn btn-info dropdown-toggle\" data-toggle=\"dropdown\">Info<span class=\"caret\"></span></button>\n");
      out.write("            <ul class=\"dropdown-menu\">\n");
      out.write("                ");
 if (hs.getAttribute("LOGIN_USER") != null) { 
      out.write("\n");
      out.write("                <li><a href=\"\">買い物かごの中</a></li>\n");
      out.write("                <li><a href=\"\">マイページ</a></li>\n");
      out.write("                <li><a href=\"\">ログアウト</a></li>\n");
      out.write("                    ");
 } else { 
      out.write("\n");
      out.write("                <li><a href=\"\">ログイン</a></li>\n");
      out.write("                    ");
 } 
      out.write("\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("    </nav>\n");
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <h3 style=\"margin-top: 104px; text-align: center; margin-bottom: 36px;\">小森様の登録情報</h3>\n");
      out.write("            <div class=\"informations\" style=\"background-color: #f0f0f0; width: 800px; margin-left: auto; margin-right: auto;\">\n");
      out.write("                <div class=\"table-contents\" style=\"width: 600px; margin-left: auto; margin-right: auto; padding-top: 12px; padding-bottom: 12px;\">\n");
      out.write("                    <table class=\"table\" style=\"margin-top: 24px;\">\n");
      out.write("                        <thead>\n");
      out.write("                            <tr><th>会員登録情報</th></tr>\n");
      out.write("                        </thead>\n");
      out.write("                        <tbody>\n");
      out.write("                            <tr><td>基本情報</td><td>小森武史 22歳 男</td><td><a href=\"\" class=\"btn btn-info\">変更</a></td></tr>\n");
      out.write("                            <tr><td>メールアドレス</td><td>stubgurssy@gmail.com</td><td><a href=\"\" class=\"btn btn-info\">変更</a></td></tr>\n");
      out.write("                            <tr><td>住所</td><td>東京都杉並区宮前</td><td><a href=\"\" class=\"btn btn-info\">変更</a></td></tr>\n");
      out.write("                            <tr><td>password</td><td>*******</td><td><a href=\"\" class=\"btn btn-info\">変更</a></td></tr>\n");
      out.write("                        </tbody>\n");
      out.write("                    </table>\n");
      out.write("                </div>\n");
      out.write("                <a href=\"\" class=\"btn btn-danger\" style=\"float: right; margin-top: 10px;\">削除</a>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <h3 style=\"margin-top: 100px; text-align: center; margin-bottom: 36px;\">小森様の購入履歴</h3>\n");
      out.write("            <table class=\"table\" style=\"width: 800px; margin: 0 auto 0 auto;\">\n");
      out.write("                <thead>\n");
      out.write("                    <tr><th>購入日</th><th>商品</th><th>値段</th></tr>\n");
      out.write("                </thead>\n");
      out.write("                <tbody>\n");
      out.write("                    <tr><td>1月1日</td><td><p style=\"float: left;\">からあげクン</p><img style=\"width: 146px; height: 146px; margin-left: 100px; float: left;\" src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTORpJ71yfBlnRDFSMNlE4EjV8v4xuOQnVtS-V4GaDfRQFl9eOR\"></td><td>1000円</td></tr>\n");
      out.write("                    <tr><td>1月1日</td><td><p style=\"float: left;\">からあげクン</p><img style=\"width: 146px; height: 146px; margin-left: 100px; float: left;\" src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTORpJ71yfBlnRDFSMNlE4EjV8v4xuOQnVtS-V4GaDfRQFl9eOR\"></td><td>1000円</td></tr>\n");
      out.write("                    <tr><td>1月1日</td><td><p style=\"float: left;\">からあげクン</p><img style=\"width: 146px; height: 146px; margin-left: 100px; float: left;\" src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTORpJ71yfBlnRDFSMNlE4EjV8v4xuOQnVtS-V4GaDfRQFl9eOR\"></td><td>1000円</td></tr>\n");
      out.write("                    <tr><td>1月1日</td><td><p style=\"float: left;\">からあげクン</p><img style=\"width: 146px; height: 146px; margin-left: 100px; float: left;\" src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTORpJ71yfBlnRDFSMNlE4EjV8v4xuOQnVtS-V4GaDfRQFl9eOR\"></td><td>1000円</td></tr>\n");
      out.write("                    <tr><td>1月1日</td><td><p style=\"float: left;\">からあげクン</p><img style=\"width: 146px; height: 146px; margin-left: 100px; float: left;\" src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTORpJ71yfBlnRDFSMNlE4EjV8v4xuOQnVtS-V4GaDfRQFl9eOR\"></td><td>1000円</td></tr>\n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script src=\"http://code.jquery.com/jquery.js\"></script>\n");
      out.write("        <script src=\"bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("    </body>\n");
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
