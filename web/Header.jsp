<%-- 
    Document   : Header
    Created on : 12 Feb, 2023, 12:04:09 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    </head>
    <body>
        <header>
            <div>
                
                <ul id="ul1"style=' word-spacing: 35px;'>
                    <li> <img src="ph.png" >PhoneBook</li>
                    <li><img src="home.png" ><a href="Home.jsp">Home</a></li>
                    <li><img src="ad.png" ><a href="AddContact.jsp">AddContact</a></li>
                    <li><img src="vi.png" ><a href="ViewContact.jsp">ViewContact</a></li>
                </ul>
            </div>
            <%  Cookie[] cookies=request.getCookies();
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
         %>
           <div >
                <ul id="ul2"style='word-spacing: 35px;'>
                    <li name="name" id="name" style='background-color:green;'><img src="man.png"><a  href="">
                      <%=name%>
                        </a>
                    </li>
                    <li  style='background-color:red;'><img src="man.png"><a  href="Logout.jsp">
                            LOGOUT</a>
                    </li>
                </ul>
            </div>
         <%
        }
else {
      %>
        
            <div >
                <ul id="ul2"style='word-spacing: 35px;'>
                    <li name="name" id="name" style='background-color:green;'><img src="man.png"><a href="Login.jsp">
                        LOGIN 
                        </a>
                    </li>
                    <li  style='background-color:red;'><img src="man.png"><a href="Register.jsp">
                            REGISTER</a>
                    </li>
                </ul>
            </div>
        <%
        }

      %>
        
        </header>
    </body>
</html>
