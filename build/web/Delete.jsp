<%@page import="java.sql.*" %>
<html>
    
<head>
    <%--<%@include file="bgmenu.jsp" %>--%>
 <%@include file="allcss.jsp"%>
          <%@include file="Header.jsp"%>
          <style type='text/css'>
              .b{
                  background-color: green;
                  margin-left:100px;
              }
              .text{
                height:40px;
                border-radius: 20px;
                text-align: center;
              }
              td{
                  font-size: 20px;
              }
              body{
                background-image: url('bggg.jpg');
       
            }
              </style>
</head>
<center>
<div class="ll">
<form action="Delete.jsp">
<table >
<caption><h1>Delete details</h1></caption>
<tr>
<th><h3>Enter Contact Id. </th>
<td><input type="number"  placeholder="Id" name="tx111" class="text"  ></td>
</tr>

<tr>
<td colspan="2"><input type="submit" name="b" class="b"></td>
</tr>
</table>
</form>
</div>
<%
     String b=request.getParameter("b");
    
      if(b!=null){
         
      String s11=request.getParameter("tx111");

        try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phonebook? useSSL = false","root","root");
                Statement st=con.createStatement();
           ResultSet rs =    st.executeQuery("select * from contact where id='"+s11+"'");
           if(rs.next()){
             st.executeUpdate("DELETE FROM contact WHERE id='"+s11+"'");
             out.print(" contact deleted");
           %>
           
                       <%
                           
              con.close();
                  }
else{
out.print("invalid contact id");

}}
            catch(Exception e1){
                out.println(e1);
            }
}

  %>
</div>

      