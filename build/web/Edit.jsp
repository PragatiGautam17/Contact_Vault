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
              </style>
</head>
<center>
<div class="ll">
<form action="Edit.jsp">
<table >
<caption><h1>Search details</h1></caption>
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
             
           %>
           <form action="Edit.jsp">
               <table>
                    <tr><td>Id.</td>
                       <td><input type="text" class="text" value=<%=rs.getString(1)%> name="n0">
                       </td>
                   </tr>
                   <tr><td>Name.</td>
                       <td><input type="text"  class="text" value=<%=rs.getString(4)%> name="n1">
                       </td>
                   </tr>
                    <tr><td>Email</td>
                       <td><input type="text"  class="text" value=<%=rs.getString(5)%> name="n2">
                       </td>
                   </tr>
                    <tr><td>Conatct number</td>
                       <td><input type="text"  class="text" value=<%=rs.getString(6)%> name="n3">
                       </td>
                   </tr>
                    <tr><td>About</td>
                       <td><input type="text" class="text"  value=<%=rs.getString(7)%> name="n4">
                       </td>
                   </tr>
                   
                   <tr>
<td colspan="2"><input type="submit" name="b2" value="Edit" class="b"></td>
</tr>
               </table>
           </form>
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
<%
      String b2=request.getParameter("b2");
      if(b2!=null){
          String s111=request.getParameter("n0");
              String s7=request.getParameter("n1");
              String s8=request.getParameter("n2");
              String s9=request.getParameter("n3");
              String s10=request.getParameter("n4");
                 try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phonebook? useSSL = false","root","root");
                Statement st=con.createStatement();
            st.executeUpdate("update contact set name='"+s7+"',email='"+s8+"',phone='"+s9+"',about='"+s10+"' where id='"+s111+"'");
             
                 out.println("data updated");
        
              con.close();
                  }
            catch(Exception e1){
                out.println(e1);
            }
      }
      
      %>
      