package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.servlet.http.HttpSession;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("                <a class=\"navbar-brand\" href=\"\">小森の店</a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"btn-group navbar-right\" style=\"margin-top: 13px; margin-bottom: 13px;\">\n");
      out.write("                <button style=\"margin: 8px 48px 8px 0;\" class=\"btn btn-info dropdown-toggle\" data-toggle=\"dropdown\"><i class=\"glyphicon glyphicon-user\"></i> Info</button>\n");
      out.write("                <ul class=\"dropdown-menu\">\n");
      out.write("                    <li><a href=\"\">買い物かごの中</a></li>\n");
      out.write("                    <li><a href=\"\">ログアウト</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("            ");
 if (request.getAttribute("fail") != null) {
      out.write("\n");
      out.write("            <div style=\"margin-top: 104px; width: 800px;\" class=\"alert alert-danger\">ログインに失敗しました</div>\n");
      out.write("            <p style=\"margin-top: 12px; text-align: center;\"><strong>ログイン</strong></p>\n");
      out.write("            <form action=\"LoginJudge\" style=\"margin: 12px auto 0 auto; width: 600px;\" method=\"post\">\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label class=\"control-label\" for=\"email\">Email</label>\n");
      out.write("                    <input type=\"text\" id=\"email\" name=\"email\" class=\"form-control\" placeholder=\"email\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label class=\"control-label\" for=\"password\">Password</label>\n");
      out.write("                    <input type=\"password\" id=\"password\" name=\"password\" class=\"form-control\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <input type=\"submit\" value=\"ログイン\" class=\"btn btn-primary\">\n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("            ");
} else {
      out.write("\n");
      out.write("            <p style=\"margin-top: 104px; text-align: center;\"><strong>ログイン</strong></p>\n");
      out.write("            <form action=\"LoginJudge\" style=\"margin: 12px auto 0 auto; width: 600px;\" method=\"post\">\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label class=\"control-label\" for=\"email\">Email</label>\n");
      out.write("                    <input type=\"text\" id=\"email\" name=\"email\" class=\"form-control\" placeholder=\"email\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label class=\"control-label\" for=\"password\">Password</label>\n");
      out.write("                    <input type=\"password\" id=\"password\" name=\"password\" class=\"form-control\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <input type=\"submit\" value=\"ログイン\" class=\"btn btn-primary\">\n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("            ");
 } 
      out.write("\n");
      out.write("            <a href=\"resitration.jsp\">新規登録</a>\n");
      out.write("\n");
      out.write("            <script src=\"http://code.jquery.com/jquery.js\"></script>\n");
      out.write("            <script src=\"bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("    </body>\n");
      out.write("\n");
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
