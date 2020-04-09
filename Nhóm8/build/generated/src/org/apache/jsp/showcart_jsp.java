package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.Product;
import java.util.List;
import model.Products;
import model.Products;

public final class showcart_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_set_var_value_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_url_var_value;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_param_value_name_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_set_var_value_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_url_var_value = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_param_value_name_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_c_set_var_value_nobody.release();
    _jspx_tagPool_c_url_var_value.release();
    _jspx_tagPool_c_param_value_name_nobody.release();
    _jspx_tagPool_c_if_test.release();
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <title>Trang chủ</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\">\n");
      out.write("        <script>\n");
      out.write("            function tinhtien() {\n");
      out.write("            var tong =0;\n");
      out.write("            var hang = document.getElementsByTagName('tr');\n");
      out.write("            for (var i = 1; i < hang.length-1; i++) {\n");
      out.write("                var o = hang[i].getElementsByTagName('td');\n");
      out.write("                var gia =  o[3].innerHTML;\n");
      out.write("                var sl =o[4].innerHTML;\n");
      out.write("                var thanhtien = gia*sl;\n");
      out.write("                o[5].innerHTML = thanhtien;\n");
      out.write("                tong = tong+thanhtien;\n");
      out.write("            }\n");
      out.write("            document.getElementById('tongtien').innerHTML = tong\n");
      out.write("\n");
      out.write("        }\n");
      out.write("       function thongbao() {\n");
      out.write("    alert(\"Bạn đã thanh toán thành công\");\n");
      out.write("}\n");
      out.write("       \n");
      out.write("function myFunction() {\n");
      out.write("  var input, filter, table, tr, td, i, txtValue;\n");
      out.write("  input = document.getElementById(\"myInput\");\n");
      out.write("  filter = input.value.toUpperCase();\n");
      out.write("  table = document.getElementById(\"myTable\");\n");
      out.write("  tr = table.getElementsByTagName(\"tr\");\n");
      out.write("  for (i = 0; i < tr.length; i++) {\n");
      out.write("    td = tr[i].getElementsByTagName(\"td\")[2];\n");
      out.write("    if (td) {\n");
      out.write("      txtValue = td.textContent || td.innerText;\n");
      out.write("      if (txtValue.toUpperCase().indexOf(filter) > -1) {\n");
      out.write("        tr[i].style.display = \"\";\n");
      out.write("      } else {\n");
      out.write("        tr[i].style.display = \"none\";\n");
      out.write("      }\n");
      out.write("    }       \n");
      out.write("  }\n");
      out.write("}\n");
      out.write("</script>\n");
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
      out.write("           nav input[type=text] {\n");
      out.write("  width: 130px;\n");
      out.write("  box-sizing: border-box;\n");
      out.write("  border: 2px solid #ccc;\n");
      out.write("  border-radius: 4px;\n");
      out.write("  font-size: 16px;\n");
      out.write("  background-color: white;\n");
      out.write(" \n");
      out.write("  background-position: 10px 10px; \n");
      out.write("  background-repeat: no-repeat;\n");
      out.write("  padding: 12px 20px 12px 40px;\n");
      out.write("  -webkit-transition: width 0.4s ease-in-out;\n");
      out.write("  transition: width 0.4s ease-in-out;\n");
      out.write("}\n");
      out.write("\n");
      out.write("nav input[type=text]:focus {\n");
      out.write("  width: 400px;\n");
      out.write("}\n");
      out.write("        </style>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body style=\"background: #f5f5f5\" onchange=\"tinhtien()\">\n");
      out.write("    <center>\n");
      out.write("        <div style=\"width: 1070px\" >\n");
      out.write("        <form action=\"Controller\" method=\"post\"  algin=\"center\">\n");
      out.write("            <header class=\"w3-row\">\n");
      out.write("                <div class=\"w3-col w3-orange\" style=\"width: 200px; height: 70px; float: left\"><button class=\"w3-button w3-round w3-white\" value=\"Trangchu\" name=\"btnAction\" style=\"margin-top: 18px; margin-left: 30px;\"><a href=\"Controller?btnAction=Trangchu\" style=\"text-decoration: none\">Trang chủ</a></button></div>\n");
      out.write("                <div class=\"w3-col w3-orange\" style=\"width: 870px; height: 70px; \">\n");
      out.write("                    <div style=\"padding-top: 18px;float: right\">\n");
      out.write("                        <font color=\"white\">XIN CHÀO  ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.USER}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</font>\n");
      out.write("                        <button class=\"w3-button w3-round w3-white\" value=\"Dangnhap\" name=\"btnAction\" style=\" display: ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.log}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"><a href=\"Controller?btnAction=Dangnhap\" style=\"text-decoration: none\">Đăng nhập</a></button>\n");
      out.write("                        <button class=\"w3-button w3-round w3-white\" value=\"Thanhvien\" name=\"btnAction\" style=\"display: ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.lg1}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"><a href=\"Controller?btnAction=Thanhvien\" style=\"text-decoration: none\">Thành viên</a></button>\n");
      out.write("                        <button class=\"w3-button w3-round w3-white\" value=\"Giohang\" name=\"btnAction\" style=\"display: ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.lg}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"><a href=\"Controller?btnAction=Giohang\" style=\"text-decoration: none\">Giỏ Hàng</a></button>\n");
      out.write("                        <button class=\"w3-button w3-round w3-white\" value=\"Sanpham\" name=\"btnAction\" style=\"display: ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.lg1}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"><a href=\"Controller?btnAction=SanPham\" style=\"text-decoration: none\">Sản phẩm</a></button>\n");
      out.write("                        <button class=\"w3-button w3-round w3-white\" value=\"Dangxuat\" name=\"btnAction\" style=\" display: ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.logout}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"><a href=\"Controller?btnAction=Dangxuat\" style=\"text-decoration: none\">Đăng xuất</a></button>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </header>\n");
      out.write("            <nav style=\"padding-top: 8px; padding-bottom: 8px; margin: 10px 0px; background-color: white;width: 1070px\" class=\"bodi\">\n");
      out.write("                <div class=\"w3-row\">\n");
      out.write("                   \n");
      out.write("                    <div>\n");
      out.write("                        \n");
      out.write("                        <a href=\"Trangchu.jsp\"><img style=\"float: left; margin-right: 10px; width: 70px; height: 50px\" src=\"img/logo.jpg\" ></a>\n");
      out.write("                       <input  id=\"myInput\" onkeyup=\"myFunction()\" type=\"text\" placeholder=\"Seach\">\n");
      out.write("                            <a href=\"showcart.jsp\">\n");
      out.write("                                <span class=\"fa fa-shopping-cart\" style=\" width: 38px; height: 38px; font-size: 22px;margin-right: 60px\"></span>\n");
      out.write("                            </a>\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("            <article >\n");
      out.write("              <div style=\"font-size: 22px\">\n");
      out.write("                 <h1>Your Shopping Cart</h1>\n");
      out.write("        ");
      if (_jspx_meth_c_set_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("        ");
      if (_jspx_meth_c_if_0(_jspx_page_context))
        return;
      out.write("                \n");
      out.write("              </div>\n");
      out.write("            </article>\n");
      out.write("        </form>    \n");
      out.write("        <br> <td><input class=\"w3-button w3-round w3-green\" type=\"submit\" value=\"Thanh Toan\" onclick=\"thongbao()\" name=\"btnAction\"/></td>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                </center>\n");
      out.write("    </body>\n");
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

  private boolean _jspx_meth_c_set_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_0 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_0.setPageContext(_jspx_page_context);
    _jspx_th_c_set_0.setParent(null);
    _jspx_th_c_set_0.setVar("shop");
    _jspx_th_c_set_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.SHOP}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_0 = _jspx_th_c_set_0.doStartTag();
    if (_jspx_th_c_set_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_0);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_0);
    return false;
  }

  private boolean _jspx_meth_c_if_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent(null);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${not empty shop}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("            <table class=\"w3-table w3-striped w3-bordered w3-border\" border=\"0\" style=\" margin: 0 auto\" id=\"myTable\" >\n");
        out.write("                <thead>\n");
        out.write("                    <tr>\n");
        out.write("                        <th>Stt</th>\n");
        out.write("                        <th>Mã sản phẩm</th>\n");
        out.write("                        <th>Tên sản phẩm</th>\n");
        out.write("                        <th>Giá</th>\n");
        out.write("                        <th>Số Lượng</th>\n");
        out.write("                        <th>Thành Tiền</th>\n");
        out.write("                        <th>Lựa Chọn </th>\n");
        out.write("                    </tr>\n");
        out.write("                </thead>\n");
        out.write("                <tbody>\n");
        out.write("                <form>\n");
        out.write("                    ");
        if (_jspx_meth_c_set_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("                    ");
        if (_jspx_meth_c_forEach_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("                    <tr>\n");
        out.write("                        ");
        if (_jspx_meth_c_url_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("                        <td colspan=\"2\"><a href=\"");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${add}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\">Mua Thêm</a></td>\n");
        out.write("                        <td><input type=\"submit\" value=\"Remove\" name=\"btnAction\" class=\"w3-button w3-round w3-red\"/></td>\n");
        out.write("                        <td colspan=\"4\"><h2>Tổng tiền thanh toán: <span id=\"tongtien\" name=\"btnAction\" value=\"tongtien1\"></span>  $</h2></td>\n");
        out.write("                    </tr>\n");
        out.write("                </form>\n");
        out.write("            </tbody>\n");
        out.write("        </table>\n");
        out.write("    ");
        int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
    return false;
  }

  private boolean _jspx_meth_c_set_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_1 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_1.setPageContext(_jspx_page_context);
    _jspx_th_c_set_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_0);
    _jspx_th_c_set_1.setVar("count");
    _jspx_th_c_set_1.setValue(new String("0"));
    int _jspx_eval_c_set_1 = _jspx_th_c_set_1.doStartTag();
    if (_jspx_th_c_set_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_1);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_1);
    return false;
  }

  private boolean _jspx_meth_c_forEach_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_0);
    _jspx_th_c_forEach_0.setVar("rows");
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${shop}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                        ");
          if (_jspx_meth_c_set_2((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\n");
          out.write("                        <tr>\n");
          out.write("                            <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${count}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                            <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${rows.code}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                            <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${rows.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                            <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${rows.price}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                            <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${rows.quantity}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                            <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${rows.quantity * rows.price}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(" $</td>\n");
          out.write("                            <td><input type=\"checkbox\" name=\"rmv\"  value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${rows.code}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"/></td>\n");
          out.write("                        </tr>\n");
          out.write("                    ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_set_2(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_2 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_2.setPageContext(_jspx_page_context);
    _jspx_th_c_set_2.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_set_2.setVar("count");
    _jspx_th_c_set_2.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${count + 1}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_2 = _jspx_th_c_set_2.doStartTag();
    if (_jspx_th_c_set_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_2);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_2);
    return false;
  }

  private boolean _jspx_meth_c_url_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_url_0 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _jspx_tagPool_c_url_var_value.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    _jspx_th_c_url_0.setPageContext(_jspx_page_context);
    _jspx_th_c_url_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_0);
    _jspx_th_c_url_0.setVar("add");
    _jspx_th_c_url_0.setValue("Controller");
    int _jspx_eval_c_url_0 = _jspx_th_c_url_0.doStartTag();
    if (_jspx_eval_c_url_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      if (_jspx_eval_c_url_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
        out = _jspx_page_context.pushBody();
        _jspx_th_c_url_0.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
        _jspx_th_c_url_0.doInitBody();
      }
      do {
        out.write("\n");
        out.write("                            ");
        if (_jspx_meth_c_param_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_url_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("                        ");
        int evalDoAfterBody = _jspx_th_c_url_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
      if (_jspx_eval_c_url_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE)
        out = _jspx_page_context.popBody();
    }
    if (_jspx_th_c_url_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_url_var_value.reuse(_jspx_th_c_url_0);
      return true;
    }
    _jspx_tagPool_c_url_var_value.reuse(_jspx_th_c_url_0);
    return false;
  }

  private boolean _jspx_meth_c_param_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_url_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:param
    org.apache.taglibs.standard.tag.rt.core.ParamTag _jspx_th_c_param_0 = (org.apache.taglibs.standard.tag.rt.core.ParamTag) _jspx_tagPool_c_param_value_name_nobody.get(org.apache.taglibs.standard.tag.rt.core.ParamTag.class);
    _jspx_th_c_param_0.setPageContext(_jspx_page_context);
    _jspx_th_c_param_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_url_0);
    _jspx_th_c_param_0.setName("btnAction");
    _jspx_th_c_param_0.setValue("AddMore");
    int _jspx_eval_c_param_0 = _jspx_th_c_param_0.doStartTag();
    if (_jspx_th_c_param_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_param_value_name_nobody.reuse(_jspx_th_c_param_0);
      return true;
    }
    _jspx_tagPool_c_param_value_name_nobody.reuse(_jspx_th_c_param_0);
    return false;
  }
}
