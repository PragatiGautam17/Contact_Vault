<%
    Cookie ck=new Cookie("un","");
           	 Cookie ck2=new Cookie("up","");
                  ck.setMaxAge(0);
               ck.setMaxAge(0);
                  response.addCookie(ck);
                    response.addCookie(ck2);
//                     response.sendRedirect("Home.jsp");
%>
<html>
    <script type="text/javascript">
                     alert("Logout successfull");
                location='Home.jsp';
                </script>
</html>
              
            
	