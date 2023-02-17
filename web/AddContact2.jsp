<%@page import="java.sql.*" %>

<%
   
   Cookie[] ck=request.getCookies();
          
            String name2="";
            String pass="";
        if(ck!=null){
         for(Cookie c:ck){
             String s1=c.getName();
            
             if(s1.equals("un")){
                 name2=c.getValue();
               
         }
         if(s1.equals("up")){
             pass=c.getValue();
         }
         }}
     String s1=request.getParameter("u1");
     String s2=request.getParameter("u2");
      String s3=request.getParameter("u3");
       String s4=request.getParameter("u4");
        try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phonebook? useSSL = false","root","root");
                Statement st=con.createStatement();
               st.executeUpdate("insert into contact(uname,upass,name,email,phone,about) values('"+name2+"','"+pass+"','"+s1+"','"+s2+"','"+s3+"','"+s4+"')");
              
               %>
               <html>
                   <script type="text/javascript">
                alert("Details added successfully");
               location='AddContact.jsp';
                </script>
               </html>
               <%
           
              con.close();
                  }
            catch(Exception e1){
                out.println(e1);
            }

    %>
    