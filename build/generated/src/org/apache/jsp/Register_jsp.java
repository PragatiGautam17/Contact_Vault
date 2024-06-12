package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Register_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/allcss.jsp");
    _jspx_dependants.add("/Header.jsp");
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("         ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>CSS Page</title>\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("             #ul1 li{\n");
      out.write("                text-align: right;\n");
      out.write("               display:inline-block;\n");
      out.write("               color:white;\n");
      out.write("               font-size: 24px;\n");
      out.write("              \n");
      out.write("            }\n");
      out.write("             #ul2 li{\n");
      out.write("             \n");
      out.write("               display:inline-block;\n");
      out.write("               color:white;\n");
      out.write("               font-size: 25px;\n");
      out.write("               word-spacing: 20px;\n");
      out.write("              \n");
      out.write("            }\n");
      out.write("            #ul2{\n");
      out.write("                  margin-left: 400px;\n");
      out.write("            }\n");
      out.write("            header{\n");
      out.write("                display:flex;\n");
      out.write("                 text-align:right;\n");
      out.write("                 background-color:black;\n");
      out.write("            }\n");
      out.write("            a{\n");
      out.write("                text-decoration: none;\n");
      out.write("                 color:white;\n");
      out.write("            }\n");
      out.write("            a:hover{\n");
      out.write("                text-decoration: underline;\n");
      out.write("               \n");
      out.write("            }\n");
      out.write("            .tx{\n");
      out.write("                text-align:center;\n");
      out.write("                border-radius:20px 20px 20px 20px;\n");
      out.write("                background:rgba(0,0,0,0.0);\n");
      out.write("                width:200px;\n");
      out.write("                height:30px;\n");
      out.write("                }\n");
      out.write("                .click{\n");
      out.write("                background:rgba(0,0,0,0);\n");
      out.write("                    border-radius:20px 20px 20px 20px;\n");
      out.write("                color:black;\n");
      out.write("                width:190px;\n");
      out.write("                height:30px;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("\n");
      out.write(".click:hover{\n");
      out.write("     background:rgba(0,0,0);\n");
      out.write("                color:white;\n");
      out.write("}\n");
      out.write(".a,label{\n");
      out.write("    font-size: 20px;\n");
      out.write("}\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("   \n");
      out.write("</html>\n");
      out.write("\n");
      out.write("          ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("       \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header>\n");
      out.write("            <div>\n");
      out.write("                \n");
      out.write("                <ul id=\"ul1\"style=' word-spacing: 35px;'>\n");
      out.write("                    <li> <img src=\"ph.png\" >PhoneBook</li>\n");
      out.write("                    <li><img src=\"home.png\" ><a href=\"Home.jsp\">Home</a></li>\n");
      out.write("                    <li><img src=\"ad.png\" ><a href=\"AddContact.jsp\">AddContact</a></li>\n");
      out.write("                    <li><img src=\"vi.png\" ><a href=\"ViewContact.jsp\">ViewContact</a></li>\n");
      out.write("                    <li><img src=\"searchicon.png\" ><a href=\"SearchContact.jsp\">SearchContact</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("            ");
  Cookie[] cookies=request.getCookies();
            boolean f=false;
            String name="LOGIN";
        if(cookies!=null){
         for(Cookie c:cookies){
             String s1=c.getName();
             if(s1.equals("un")){
                 name=c.getValue();
                if(name.length()>1) f=true;
           
         }}}
        if(f){
         
      out.write("\n");
      out.write("           <div >\n");
      out.write("                <ul id=\"ul2\"style='word-spacing: 35px;'>\n");
      out.write("                    <li name=\"name\" id=\"name\" style='background-color:green;'><img src=\"man.png\"><a  href=\"\">\n");
      out.write("                      ");
      out.print(name);
      out.write("\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li  style='background-color:red;'><img src=\"man.png\"><a  href=\"Logout.jsp\">\n");
      out.write("                            LOGOUT</a>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("         ");

        }
else {
      
      out.write("\n");
      out.write("        \n");
      out.write("            <div >\n");
      out.write("                <ul id=\"ul2\"style='word-spacing: 35px;'>\n");
      out.write("                    <li name=\"name\" id=\"name\" style='background-color:green;'><img src=\"man.png\"><a href=\"Login.jsp\">\n");
      out.write("                        LOGIN \n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li  style='background-color:red;'><img src=\"man.png\"><a href=\"Register.jsp\">\n");
      out.write("                            REGISTER</a>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        ");

        }

      
      out.write("\n");
      out.write("        \n");
      out.write("        </header>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("          ");
 int a=0;
      out.write("\n");
      out.write("          <style type='text/css'>\n");
      out.write("              .tx{\n");
      out.write("/*                  font-family: fantasy;*/\n");
      out.write("               width:250px;\n");
      out.write("              }\n");
      out.write("              .b{\n");
      out.write("                  background-color:green;\n");
      out.write("                  height:40px;\n");
      out.write("                   width:420px;\n");
      out.write("              }\n");
      out.write("              .a,p{\n");
      out.write("                  font-family: Broadway;\n");
      out.write("                  font-size: 30px;\n");
      out.write("              }\n");
      out.write("              .b:hover{\n");
      out.write("                 \n");
      out.write("              }\n");
      out.write("          </style>\n");
      out.write("         <script type=\"text/javascript\">\n");
      out.write("            function validate(){\n");
      out.write("                a=document.getElementById('tx1').value;\n");
      out.write("                b=document.getElementById('tx2').value;\n");
      out.write("               \n");
      out.write("                c=document.getElementById('tx3').value;\n");
      out.write("               \n");
      out.write("               // console.log(a);\n");
      out.write("                if(a.length>=3){\n");
      out.write("                    if(b.length>=9){\n");
      out.write("                   \n");
      out.write("                     if(c.length>=5){\n");
      out.write("                       \n");
      out.write("                   form.submit();\n");
      out.write("               }\n");
      out.write("               else{\n");
      out.write("                     alert(\"password length must be atleast 6 character\");\n");
      out.write("                }\n");
      out.write("               }\n");
      out.write("               \n");
      out.write("                \n");
      out.write("                  else{\n");
      out.write("                     // console.log(b);\n");
      out.write("                     alert(\"invalid email\");\n");
      out.write("                }\n");
      out.write("                }\n");
      out.write("                   else{\n");
      out.write("                     alert(\"invalid data!!All details are mandatory\");\n");
      out.write("                }\n");
      out.write("               // console.log(b);           \n");
      out.write("            }\n");
      out.write("            </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form action='Register2.jsp' name=\"form\">\n");
      out.write("            <center>\n");
      out.write("                <p style='margin-top:80px;color:green;'> REGISTRATION PAGE </p>\n");
      out.write("            <table cellspacing=\"30px\" style='margin-top:20px;'>\n");
      out.write("                <tr>\n");
      out.write("                <td class='a'>Enter Name</td>\n");
      out.write("                <td><input type=\"text\" placeholder=\"Name\" class='tx' name='tx1' id='tx1' required=\"true\"></td>\n");
      out.write("                </tr>\n");
      out.write("                  <tr>\n");
      out.write("                <td class='a'>Enter Gmail</td>\n");
      out.write("                <td><input type=\"text\" placeholder=\"Gmail\" class='tx' name='tx2' id='tx2' required=\"true\"></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                <td class='a'>Enter Phone number</td>\n");
      out.write("                <td><input type=\"text\" placeholder=\"Phone number\" class='tx' name='tx4' id='tx4' required=\"true\"></td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr>\n");
      out.write("                <td class='a'>Enter Password</td>\n");
      out.write("                <td><input type=\"text\" placeholder=\"Password\"class='tx' name='tx3' id='tx3' required=\"true\"></td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("                <input type=\"button\" value=\"Register\" class='b' onclick='validate()'>\n");
      out.write("            </center>\n");
      out.write("        </form>\n");
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
