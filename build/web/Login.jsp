<%-- 
    Document   : Register
    Created on : 11 Feb, 2023, 8:45:17 PM
    Author     : Dell
--%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <%@include file="allcss.jsp"%>
          <%@include file="Header.jsp"%>
          <style type='text/css'>
              .tx{
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
          </style>
    </head>
    <body>
        <form action="Login2.jsp">
            <center>
                <p style='margin-top:80px;color:green;'> LOGIN PAGE </p>
            <table cellspacing="30px" style='margin-top:20px;'>
               
                  <tr>
                <td class='a'>Enter Gmail</td>
                <td><input type="text" placeholder="Gmail" class='tx' id="ug" name="ug" required></td>
                </tr>
                 <tr>
                <td class='a'>Enter Password</td>
                <td><input type="text" placeholder="Password"class='tx' id="up" name="up" required></td>
                </tr>
            </table>
                <input type="submit" value="LOGIN" class='b' name="b" id="b">
            </center>
        </form>
    

    </body>
</html>
