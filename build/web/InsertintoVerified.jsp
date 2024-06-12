<%-- 
    Document   : Register
    Created on : 11 Feb, 2023, 8:45:17 PM
    Author     : Dell
--%>
<%@ page import="java.sql.*, java.io.*, javax.servlet.annotation.MultipartConfig, javax.servlet.http.Part" %>
<%@page import="javax.servlet.http.Part"%>
<%
    // Create a MultipartConfigElement instance
    javax.servlet.MultipartConfigElement multipartConfig = new javax.servlet.MultipartConfigElement("/tmp");

    // Set the multipart config element for the request
    request.setAttribute("javax.servlet.multipart.config", multipartConfig);
%>

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
        String authName = request.getParameter("auth_name");
        String category = request.getParameter("category");
        String subCategory = request.getParameter("sub_category");
        String location = request.getParameter("location");
        String email="";
              String phone="";
        // Get the PDF file
        
        
        try{
            
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phonebook? useSSL = false","root","root");
                Statement st=con.createStatement();
              ResultSet rs=st.executeQuery("select * from user where name='"+uname+"'AND password='"+pass+"'");
              int id=0;
              while(rs.next()){
                  email=rs.getString(3);
                  phone=rs.getString(6);
                  id=rs.getInt(1);
           
}
              rs=st.executeQuery("select * from file_check where name='"+uname+"'AND pass='"+pass+"'");
//               Part filePart ;
InputStream pdfInputStream=null;
              while(rs.next()){
//           filePart=
                    pdfInputStream = rs.getBinaryStream("file");
                }
//              request.getPart("file");
//        InputStream pdfInputStream = filePart.getInputStream();
String sql = "INSERT INTO verified_user (email, phone, file, auth_name, category, sub_category, location) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = con.prepareStatement(sql);
            if(pdfInputStream==null) {
            out.println("file empty");
            return;
            }
            statement.setString(1, email);
                statement.setString(2, phone);
                statement.setBlob(3, pdfInputStream);
                statement.setString(4, authName);
                statement.setString(5, category);
                statement.setString(6, subCategory);
                statement.setString(7, location);
                statement.executeUpdate();
                st.executeUpdate("UPDATE user SET isVerified = '1' WHERE id = '"+id+"'");
               %>
               </div>
                <script type="text/javascript">
                alert("Data Inserted Successful");
               location='SearchOnline.jsp';
                </script>
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
                 