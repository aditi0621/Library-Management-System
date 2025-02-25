package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/component/allcss.jsp");
    _jspx_dependants.add("/component/navbar.jsp");
  }

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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    <title>Welcome</title>\n");
      out.write("    ");
      out.write("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css\" \n");
      out.write("      rel=\"stylesheet\" \n");
      out.write("      integrity=\"sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC\" \n");
      out.write("      crossorigin=\"anonymous\">\n");
      out.write("<link rel=\"stylesheet\" \n");
      out.write("      href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css\" \n");
      out.write("      integrity=\"sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==\" \n");
      out.write("      crossorigin=\"anonymous\" \n");
      out.write("      referrerpolicy=\"no-referrer\" />\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js\" \n");
      out.write("        integrity=\"sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM\" \n");
      out.write("        crossorigin=\"anonymous\">\n");
      out.write("</script>");
      out.write("\n");
      out.write("    <style>\n");
      out.write("        .a {\n");
      out.write("            opacity: 0.8;\n");
      out.write("            background-size: contain;\n");
      out.write("        }  \n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    ");
      out.write("<nav class=\"navbar navbar-expand-lg navbar-dark bg-secondary text-white\" >\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("      <a class=\"navbar-brand\" href=\"index.jsp\"><i class=\"fa-solid fa-book-open\"></i>  Welcome</a>\n");
      out.write("    <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("      <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("    </button>\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("      <ul class=\"navbar-nav ms-auto mb-2 mb-lg-0\">\n");
      out.write("        \n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link active\" aria-current=\"page\" href=\"admin_login.jsp\"><i class=\"fa-solid fa-right-to-bracket\"></i> ADMIN</a>\n");
      out.write("        </li>\n");
      out.write("        \n");
      out.write(" \n");
      out.write("        \n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link active\" aria-current=\"page\" href=\"user_login.jsp\">USER</a>\n");
      out.write("        </li>\n");
      out.write("       \n");
      out.write("       <!-- <li class=\"nav-item dropdown\">\n");
      out.write("          <a class=\"nav-link dropdown-toggle\" href=\"#\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\n");
      out.write("            Dropdown\n");
      out.write("          </a>\n");
      out.write("          <ul class=\"dropdown-menu\">\n");
      out.write("            <li><a class=\"dropdown-item\" href=\"#\">Action</a></li>\n");
      out.write("            <li><a class=\"dropdown-item\" href=\"#\">Another action</a></li>\n");
      out.write("            <li><hr class=\"dropdown-divider\"></li>\n");
      out.write("            <li><a class=\"dropdown-item\" href=\"#\">Something else here</a></li>\n");
      out.write("          </ul>\n");
      out.write("        </li> -->\n");
      out.write("        \n");
      out.write("      </ul>\n");
      out.write("      \n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("\n");
      out.write("    <div class=\"a\">\n");
      out.write("        <img src=\"img/home.jpg\" width=\"1318px\" height=\"598px\">\n");
      out.write("    </div>\n");
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
