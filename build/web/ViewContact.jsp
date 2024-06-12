<%-- 
    Document   : Register
    Created on : 11 Feb, 2023, 8:45:17 PM
    Author     : Dell
--%>
<%@page import="java.sql.*" %>
<html>
    <head>
       
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
        
         <%@include file="allcss.jsp"%>
          <%@include file="Header.jsp"%>
          <style type='text/css'>
              .div{
                  
                  display:flex;
              }
              .card{
                  margin-left:30px;
                  margin-top: 20px;
                  border:double;
                 border-color:green;
              }
              #tt{
                  font-size: 20px;
                  font-weight: bold;
                  height:28px;
                  /*width:100px;*/
              }
               body{
                background-image: url('bggg.jpg');
       
            }
          </style>
    </head>
    <body>
        <p style="background-color: green;font-size: 30px;text-align: center;"><a class="aa" href="Edit.jsp">Edit Contact Details</a> </p>
        
                                       <p style="background-color: red;font-size: 30px;text-align: center;"><a class="aa" href="Delete.jsp">Delete Contact</a> </p>
        <div class="div">
        <br>
        
       <%
            Cookie[] ck2=request.getCookies();
          
            String uname="";
            String pass="";
        if(ck2!=null){
         for(Cookie c:ck2){
             String s1=c.getName();
            
             if(s1.equals("un")){
                 uname=c.getValue();
               
         }
         if(s1.equals("up")){
             pass=c.getValue();
         }
         }}
     
        try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phonebook? useSSL = false","root","root");
                Statement st=con.createStatement();
              ResultSet rs=st.executeQuery("select * from contact where uname='"+uname+"'AND upass='"+pass+"'");
           while(rs.next()){
               %>
              
                   
                           <div class="card" >
                               <center>
<!--                                  <textarea name="u4" id="u4" placeholder="Enter About">
            </textarea>-->
<p>Contact ID : <%=rs.getString(1)%></p>
                                   <p style="font-size: 25px;font-weight: bold;" id="pp" value="pp">Name : <%=rs.getString(4)%> </p>
                                <p>Email : <%=rs.getString(5)%></p>
                                 <p>Phone no. : <%=rs.getString(6)%></p>
                                  <p>About : <%=rs.getString(7)%></p>
                                  
                               </center>
                           </div>
                     
                   
              
                      <% 
           }
               %>
               </div>
                  </body>
                   </html>
              
               <%
           
              con.close();
                  }
            catch(Exception e1){
                out.println(e1);
            }

       %>
    </body>
</html>
<%
    }
else{
%>
<html>
    <script type="text/javascript">
                     alert("please login first");
                location='Login.jsp';
                </script>
</html>
        
<%
}
%>
<html>
                 