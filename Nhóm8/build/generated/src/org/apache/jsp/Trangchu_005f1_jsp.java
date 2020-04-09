package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.Product;
import java.util.List;
import model.Products;
import model.Products;

public final class Trangchu_005f1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <title>Trang chủ</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\" >\n");
      out.write("    \n");
      out.write("        <style>\n");
      out.write("            body, html {\n");
      out.write("                margin: 0;\n");
      out.write("                height: auto;\n");
      out.write("            }\n");
      out.write("            body {\n");
      out.write("                width: 100%;\n");
      out.write("            }\n");
      out.write("            .bodi {\n");
      out.write("                padding-left: 20%;\n");
      out.write("                padding-right: 20%;\n");
      out.write("            }\n");
      out.write("            .sp {\n");
      out.write("                background-color: white;\n");
      out.write("                width: 171px;\n");
      out.write("                margin: 20px 5px;\n");
      out.write("                padding: 5px 5px 5px 5px;\n");
      out.write("            }\n");
      out.write("            .spName {\n");
      out.write("                text-align: justify;\n");
      out.write("                margin: 2px 0px;\n");
      out.write("            }\n");
      out.write("            .spPrice {\n");
      out.write("                color: #ff5722!important;\n");
      out.write("                margin: 2px 0px;\n");
      out.write("            }\n");
      out.write("            .spInfo {\n");
      out.write("                text-align: justify;\n");
      out.write("                margin: 5px 0px;\n");
      out.write("            }\n");
      out.write("            .spAdd {\n");
      out.write("                font-size: 18px;\n");
      out.write("                margin-left: 3px;\n");
      out.write("                background: #3f51b5!important;\n");
      out.write("                color: white;\n");
      out.write("            }\n");
      out.write("            nav input[type=text] {\n");
      out.write("                width: 130px;\n");
      out.write("                box-sizing: border-box;\n");
      out.write("                border: 2px solid #ccc;\n");
      out.write("                border-radius: 4px;\n");
      out.write("                font-size: 16px;\n");
      out.write("                background-color: white;\n");
      out.write("\n");
      out.write("                background-position: 10px 10px; \n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                padding: 12px 20px 12px 40px;\n");
      out.write("                -webkit-transition: width 0.4s ease-in-out;\n");
      out.write("                transition: width 0.4s ease-in-out;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            nav input[type=text]:focus {\n");
      out.write("                width: 400px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background: #f5f5f5\">\n");
      out.write("    \n");
      out.write("        <div style=\"width: 1070px\" class=\"container\">\n");
      out.write("            <form action=\"Controller\" method=\"post\"  algin=\"center\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                <div class=\"w3-col w3-orange\" style=\"width: 1070px; height: 70px; \">\n");
      out.write("\n");
      out.write("                    <div style=\"padding-top: 18px;padding-right:  600px\">\n");
      out.write("\n");
      out.write("                        <button class=\"w3-button w3-round w3-white\" value=\"Dangnhap\" name=\"btnAction\" style=\" display: ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.log}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"><a href=\"Controller?btnAction=Dangnhap\" style=\"text-decoration: none\">Đăng nhập</a></button>\n");
      out.write("                        <button class=\"w3-button w3-round w3-white\" value=\"Dangky\" name=\"btnAction\" style=\" display: ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.logout}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"><a href=\"NewLogin_1.jsp\" style=\"text-decoration: none\">Đăng Ký</a></button>\n");
      out.write("                        <button class=\"w3-button w3-round w3-white\" value=\"Giohanga\" name=\"btnAction\" style=\"display: ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.lg}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"><a href=\"Controller?btnAction=Giohanga\" style=\"text-decoration: none\">Giỏ Hàng</a></button>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                </header>\n");
      out.write("                <nav style=\"padding-top: 8px; padding-bottom: 8px; margin: 10px 0px; background-color: white;width: 1070px\" class=\"bodi\">\n");
      out.write("                    <div class=\"w3-row\">\n");
      out.write("\n");
      out.write("                        <div>\n");
      out.write("\n");
      out.write("                            <a href=\"Trangchu_1.jsp\"><img style=\"float: left; margin-right: 10px; width: 70px; height: 50px\" src=\"img/logo.jpg\" ></a>\n");
      out.write("                            <input  id=\"myInput\" onkeyup=\"myFunction()\" type=\"text\" placeholder=\"Seach\">\n");
      out.write("                            <a href=\"showcart_1.jsp\">\n");
      out.write("                                <span class=\"fa fa-shopping-cart\" style=\" width: 38px; height: 38px; font-size: 22px;margin-right: 60px\"></span>\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </nav>\n");
      out.write("                <article >\n");
      out.write("                    <div style=\"font-size: 22px\">\n");
      out.write("                        <center> <h1>DANH SÁCH SẢN PHẨM</h1></center>\n");
      out.write("                    </div>\n");
      out.write("                    <table id=\"myTable\" class=\"w3-table w3-striped w3-bordered w3-border\" border=\"0\" style=\" margin: 0 auto\"  >\n");
      out.write("                        <thead class=\"w3-orange\">\n");
      out.write("                            <tr>\n");
      out.write("                                <th>Mã Sản Phẩm</th>\n");
      out.write("                                <th>Tên Sản Phẩm</th>\n");
      out.write("                                <th>Giá  </th>\n");
      out.write("                                <th>Thêm giỏ hàng</th>\n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        ");

                            Products listSP = new Products();
                            List<Product> list = listSP.showProduct("");
                            for (Product sp : list) {
                                out.print("<form action=\"Controller\">");
                                out.print("<tr>"
                                        + "<td>" + sp.getCode() + "</td>"
                                        + "<td>" + sp.getName() + "</td>"
                                        + "<td>" + sp.getPrice() + "$" + "</td>"
                                        + "<td><input class=\"w3-button w3-round w3-red\" type=\"submit\""
                                        + "value=\"Them vao gio\" name=\"btnAction\" /></td>"
                                        + "<input type=\"hidden\" name=\"txtCode\" value='" + sp.getCode() + "'>"
                                        + "<input type=\"hidden\" name=\"txtName\" value='" + sp.getName() + "'>"
                                        + "<input type=\"hidden\" name=\"txtPrice\" value='" + sp.getPrice()
                                        + "'></tr>");

                                out.print("</form>");
                            }
                        
      out.write("\n");
      out.write("                    </table>\n");
      out.write("\n");
      out.write("                </article>\n");
      out.write("            </form>    \n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("                        <script>\n");
      out.write("            function myFunction() {\n");
      out.write("                var input, filter, table, tr, td, i, txtValue;\n");
      out.write("                input = document.getElementById(\"myInput\");\n");
      out.write("                filter = input.value.toUpperCase();\n");
      out.write("                table = document.getElementById(\"myTable\");\n");
      out.write("                tr = table.getElementsByTagName(\"tr\");\n");
      out.write("                for (i = 0; i < tr.length; i++) {\n");
      out.write("                    td = tr[i].getElementsByTagName(\"td\")[1];\n");
      out.write("                    if (td) {\n");
      out.write("                        txtValue = td.textContent || td.innerText;\n");
      out.write("                        if (txtValue.toUpperCase().indexOf(filter) > -1) {\n");
      out.write("                            tr[i].style.display = \"\";\n");
      out.write("                        } else {\n");
      out.write("                            tr[i].style.display = \"none\";\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("</script>\n");
      out.write("<script src=\"https://code.jquery.com/jquery-3.4.1.slim.min.js\" ></script>\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js\" ></script>\n");
      out.write("<script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js\" ></script>\n");
      out.write("</body>\n");
      out.write("</html>");
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
