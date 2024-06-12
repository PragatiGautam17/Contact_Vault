<%-- 
    Document   : Register
    Created on : 11 Feb, 2023, 8:45:17 PM
    Author     : Dell
--%>
<%@page import="java.sql.*" %>
<html>
    <head>
        <% int b=0;%>
 <%  
     Cookie[] ck=request.getCookies();
            boolean fvb=false;
            String name2="LOGIN";
        if(ck!=null){
         for(Cookie c:ck){
             String s1=c.getName();
             if(s1.equals("un")){
                 name2=c.getValue();
                if(name2.length()>1) fvb=true;
           
         }}}
        if(fvb){
            
     
        %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

        <!--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">-->
        <title>JSP Page</title>
         <%@include file="allcss.jsp"%>
          <%@include file="Header.jsp"%>
          <style type='text/css'>
              .tx{
                    height:40px;
/*                  font-family: fantasy;*/
               width:250px;
              }
              .b{
                  background-color:green;
                  height:40px;
                   width:420px;
              }
              .a,p{
                  font-family: Broadway;
                  font-size: 30px;
              }
              .b:hover{
                 
              }
              textarea{
                  color:red;
                  width:625px;
                  height:50px;
                  text-align: center;
              }
              body{
                background-image: url('bggg.jpg');
       
            }
          </style>
    </head>
    <body>
        <form action="AddContact2.jsp" style='border-style: solid;'>
            <center>
                <p style='margin-top:80px;color:green;'> ADD CONTACT </p>
            <table cellspacing="30px" style='margin-top:20px;'>
                <tr>
                <td class='a'>Enter Name</td>
                <td><input type="text" placeholder="Name" class='tx' name="u1" id="u1" required></td>
                </tr>
                  <tr>
                <td class='a'>Enter Gmail</td>
                <td><input type="text" placeholder="Gmail" class='tx' name="u2" id="u2" required></td>
                </tr>
                
                 <tr>
                <td class='a'>Enter Phone Number</td>
                <td><input type="text" placeholder="Phone number"class='tx' name="u3" id="u3" required></td>
                </tr>
            </table>
                <label for="about" style='font-size: 30px;font-family: Broadway;'  required>Enter About</label><br>
                <textarea name="u4" id="u4" placeholder="Enter About">
            </textarea>
                <br>
                <input type="submit" value="Save Contact" class='b' id="b" name="b" >
            </center>
        </form>
    </body>
</html>
<%
    }
else{
%>
<html>
    <script type="text/javascript">
                     alert("please login first");
                location='Home.jsp';
                </script>
</html>
        
<%
}
%>
<html>
                 