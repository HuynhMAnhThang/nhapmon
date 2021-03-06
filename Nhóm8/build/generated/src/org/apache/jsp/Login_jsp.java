package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\r\n");
      out.write("        <title>Đăng nhập</title>\r\n");
      out.write("\r\n");
      out.write("        <!-- Font Icon -->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"fonts/material-icon/css/material-design-iconic-font.min.css\">\r\n");
      out.write("\r\n");
      out.write("        <!-- Main css -->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\r\n");
      out.write("        <style>\r\n");
      out.write("            .sign-in{\r\n");
      out.write("                padding-top: 50px;\r\n");
      out.write("            }\r\n");
      out.write("            body{\r\n");
      out.write("                font-family: Arial !important;\r\n");
      out.write("            }\r\n");
      out.write("            h2{\r\n");
      out.write("                font-family: Arial !important;\r\n");
      out.write("            }\r\n");
      out.write("        </style>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("\r\n");
      out.write("        <section class=\"sign-in\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <div class=\"signin-content\">\r\n");
      out.write("                    <div class=\"signin-image\">\r\n");
      out.write("                        <figure><img src=\"images/signin-image.jpg\" alt=\"sing up image\"></figure>\r\n");
      out.write("                        <a href=\"NewLogin_1.jsp\" style=\"font-weight: bold\">Tạo tài khoản</a>/<a style=\"font-weight: bold\" href=\"Trangchu_1.jsp\">Trang chủ</a>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"signin-form\">\r\n");
      out.write("                        <h2 class=\"form-title\">Đăng nhập</h2>\r\n");
      out.write("                        <form action=\"Controller\" method=\"post\" class=\"register-form\" id=\"login-form\">\r\n");
      out.write("                            <div class=\"form-group\">\r\n");
      out.write("                                <label for=\"your_name\"><i class=\"zmdi zmdi-account material-icons-name\"></i></label>\r\n");
      out.write("                                <input type=\"text\" name=\"txtUser\" id=\"your_name\" placeholder=\"Tài khoản\"/>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"form-group\">\r\n");
      out.write("                                <label for=\"your_pass\"><i class=\"zmdi zmdi-lock\"></i></label>\r\n");
      out.write("                                <input type=\"password\" name=\"txtPass\" id=\"your_pass\" placeholder=\"Mật khẩu\"/>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"form-group\">\r\n");
      out.write("                                <input type=\"checkbox\" name=\"remember-me\" id=\"remember-me\" class=\"agree-term\" />\r\n");
      out.write("                                <label for=\"remember-me\" class=\"label-agree-term\"><span><span></span></span>Lưu tài khoản</label>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"form-group form-button\">\r\n");
      out.write("                                <input type=\"submit\" name=\"btnAction\"  value=\"Login\" id=\"signin\" class=\"form-submit\"/>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </form>\r\n");
      out.write("                        <div class=\"social-login\">\r\n");
      out.write("                            <span class=\"social-label\">Hoặc đăng nhập bằng</span>\r\n");
      out.write("                            <ul class=\"socials\">\r\n");
      out.write("                                <li><a href=\"#\"><i class=\"display-flex-center zmdi zmdi-facebook\"></i></a></li>\r\n");
      out.write("                                <li><a href=\"#\"><i class=\"display-flex-center zmdi zmdi-twitter\"></i></a></li>\r\n");
      out.write("                                <li><a href=\"#\"><i class=\"display-flex-center zmdi zmdi-google\"></i></a></li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </section>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
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
