<%-- 
    Document   : Register
    Created on : 11 Feb, 2023, 8:45:17 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <%@include file="allcss.jsp"%>
          <%@include file="Header.jsp"%>
          <% int a=0;%>
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
         <script type="text/javascript">
            function validate(){
                a=document.getElementById('tx1').value;
                b=document.getElementById('tx2').value;
               
                c=document.getElementById('tx3').value;
               
               // console.log(a);
                if(a.length>=3){
                    if(b.length>=9){
                   
                     if(c.length>=5){
                       
                   form.submit();
               }
               else{
                     alert("password length must be atleast 6 character");
                }
               }
               
                
                  else{
                     // console.log(b);
                     alert("invalid email");
                }
                }
                   else{
                     alert("invalid data!!All details are mandatory");
                }
               // console.log(b);           
            }
            </script>
    </head>
    <body>
        <form action='Register2.jsp' name="form">
            <center>
                <p style='margin-top:80px;color:green;'> REGISTRATION PAGE </p>
            <table cellspacing="30px" style='margin-top:20px;'>
                <tr>
                <td class='a'>Enter Name</td>
                <td><input type="text" placeholder="Name" class='tx' name='tx1' id='tx1' required="true"></td>
                </tr>
                  <tr>
                <td class='a'>Enter Gmail</td>
                <td><input type="text" placeholder="Gmail" class='tx' name='tx2' id='tx2' required="true"></td>
                </tr>
                <tr>
                <td class='a'>Enter Phone number</td>
                <td><input type="text" placeholder="Phone number" class='tx' name='tx4' id='tx4' required="true"></td>
                </tr>
                 <tr>
                <td class='a'>Enter Password</td>
                <td><input type="text" placeholder="Password"class='tx' name='tx3' id='tx3' required="true"></td>
                </tr>
            </table>
                <input type="button" value="Register" class='b' onclick='validate()'>
            </center>
        </form>
    </body>
</html>
