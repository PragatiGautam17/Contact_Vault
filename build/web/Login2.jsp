<%@page import="java.sql.*" %>
<%
   
    String s1=request.getParameter("ug");
     String s2=request.getParameter("up");
     
        try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phonebook?useSSL=false&allowPublicKeyRetrieval=true ","root","root");
                Statement st=con.createStatement();
//               st.executeUpdate("insert into user(name,email,password) values('"+s1+"','"+s2+"','"+s3+"')");
           ResultSet rs=st.executeQuery("select * from user where email='"+s1+"'AND password='"+s2+"'");
           if(rs.next()){
               String name=rs.getString(2);
                 String password=rs.getString(4);
               Cookie ck=new Cookie("un",name);
                Cookie ck2=new Cookie("up",password);
               ck.setMaxAge(60*60);
               ck2.setMaxAge(60*60);
               response.addCookie(ck);
                response.addCookie(ck2);
               %>
               <html>
                
                   <script type="text/javascript">
                      
                alert("Login Successful");
               location='Home.jsp';
               //  x= document.getElementById("name").value = s1;
                </script>
              
               <%
           }
else{
 %>
               <html>
                   <script type="text/javascript">
                alert("Invalid email or password");
               location='Login.jsp';
                </script>
              
               <%
}
              con.close();
                  }
            catch(Exception e1){
                out.println(e1);
            }
    
    %>
     </html>