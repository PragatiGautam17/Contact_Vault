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
        <title>JSP Page</title>
         <%@include file="allcss.jsp"%>
          <%@include file="Header.jsp"%>
          <style type='text/css'>
              .div{
                  
                  display:flex;
              }
              .card{
                  display: inline-block;
                    vertical-align: top;
                    margin-right: 10px; 
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
        <br>
        <div class="option">
        <form action="SearchContact.jsp" method="post">
            <select name="searchOption">
                <option value="s">Select</option>
                <option value="name">Search By Name</option>
                <option value="contact">Search By Contact</option>
            </select>
            <br><br>
            <input type="submit" value="Submit" class="click">
        </form>
    </div>
        <br>
        <%
            String field="";
            String data="";
         String searchOption = request.getParameter("searchOption");
        if (searchOption != null||"s".equals(searchOption)) {
            if ("name".equals(searchOption)) {
//                out.println("You selected: Search By Name");
                field="name";
//                out.println(field);
                 } else if ("contact".equals(searchOption)) {
                    field="phone";
 } else {
//                out.println("Invalid selection");
            }
        } else {
//            out.println("No option selected");
        }
        if(field.equals("phone")||field.equals("name"))
        {
               %>
               <form action='SearchContact.jsp' name="form">
            <center>
               
            <table cellspacing="10px" style='margin-top:20px;'>
                <tr>
                <td class='a'>Enter search details</td>
                <td><input type="text" placeholder="" class='tx' name='txf1' id='txf1' required="true"></td>
                </tr>
                  <tr>
                    <td><input type="hidden" name="field" value="<%= field %>"></td>
                </tr>
            </table>
                <input type="submit" value="Search" class='click' name="search">
            </center>
        </form>
              
               <%
           }
else {
            out.println("please select option");
        }
//fetching from database
Cookie[] ck2=request.getCookies();
String fieldd=request.getParameter("field");
//out.println("______>"+fieldd);
String b=request.getParameter("search");
          if(b!=null){
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
 
data=request.getParameter("txf1");
data=data.toLowerCase();

     int i=0;
        try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phonebook? useSSL = false","root","root");
                Statement st=con.createStatement();
              ResultSet rs=st.executeQuery("select * from contact where uname='"+uname+"'AND upass='"+pass+"'");
//              out.println(fieldd);
               while(rs.next()){
                String s="";
                if(fieldd.equals("phone"))s=rs.getString(6);
else if(fieldd.equals("name")){s=rs.getString(4); }
s=s.trim();
s=s.toLowerCase();

if(s.equals(data)||s.contains(data)||data.contains(""+s)){
i=1;
               %>
               <div class="card" style="font-size: 20px;font-weight: bold;color:purple" >
                               <center>

<p>Contact ID : <%=rs.getString(1)%> </p>
                                   <p  id="pp" value="pp">Name : <%=rs.getString(4)%> </p>
                                <p>Email : <%=rs.getString(5)%></p>
                                 <p>Phone no. : <%=rs.getString(6)%></p>
                                  <p>About : <%=rs.getString(7)%></p>
                                  
                               </center>
                           </div>
                     
               <%
}
}
 con.close();
                  }
            catch(Exception e1){
                out.println(e1);
            }
if(i==1){
%>
        <form action='SearchOnline.jsp' name="form">
            <center>
               
            <table cellspacing="30px" style='margin-top:20px;'>
                <tr>
                <td class='a' colspan="2" style="font-size: 15px;font-weight: bold;" >Search online instead ?</td>
                </tr>
                  <tr>
                    <td><input type="hidden" name="field" value="<%= field %>"></td>
                     <td><input type="hidden" name="field" value="<%= data%>"></td>
                </tr>
            </table>
                <input type="submit" value="Search Online" class='click' name="search">

            </center>
        </form>       
        <%
}
else if(i==0){
%>
        <form action='SearchOnline.jsp' name="form">
            <center>
       
            <table cellspacing="30px" style='margin-top:20px;'>
                <tr>
                <td class='a' style="font-size: 15px;font-weight: bold;" >This contact doesn't exits in your directory . Search online instead ?</td>
                </tr>
                  <tr>
                    <td><input type="hidden" name="field" value="<%= field %>"></td>
                     <td><input type="hidden" name="field" value="<%= data%>"></td>
                </tr>
            </table>
                <input type="submit" value="Search Online" class='click' name="search">

            </center>
        </form>       
        <%
}
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
                 