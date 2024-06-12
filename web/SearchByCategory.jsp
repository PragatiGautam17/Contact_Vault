<%-- 
    Document   : Register
    Created on : 11 Feb, 2023, 8:45:17 PM
    Author     : Dell
--%>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%--<%@page import="net.sourceforge.tess4j.*" %>--%>

<%@page import="org.apache.pdfbox.text.PDFTextStripper" %>
<%@page import="org.apache.pdfbox.pdmodel.PDDocument" %>
<%@ page import="org.apache.poi.xwpf.extractor.XWPFWordExtractor" %>
<%@ page import="org.apache.poi.xwpf.usermodel.XWPFDocument" %>
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
                  display:inline-block;
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
              ResultSet rs=st.executeQuery("select isVerified from user where name='"+uname+"'AND password='"+pass+"'");
              while(rs.next()){
           if(rs.getString(1).equals(""+0)){
               %>
              
                   
                           <div class="fileupload">
                               <center>

                                   <p style="font-size: 25px;font-weight: bold;" id="pp" value="pp">Submit these details to search online. Please be assured that the details you provide will not be used for any unauthorized purposes. </p>
                                   <form action='SearchOnline.jsp' name="form" method="post" enctype="multipart/form-data">
                                       
                                   <table cellspacing="10px">
                                       <tr>
                                            <td><label for="file">Convert your aadhaar image into word file)</label></td>
                                            <td><a href="https://www.onlineocr.net/" target="_blank" style="font-size: 25px;font-weight: bold;color:black">Convert</a>
</td>      
                                        </tr>
                                        <tr>
                                            <td><label for="file">Aadhaar card (only word file allowed)</label></td>
                                            <td><input type="file" id="file" name="file" accept=".docx"></td>      
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="text-align: center;"><input type="submit" value="Verify" id="bb" name="bb" class="click"></td>
                                        </tr>
                                         </table>
                                   </form>
                                        <%
                                            String b=request.getParameter("bb");
                                             if(b!=null){
//                                                 out.println("inside button");
                                           try{
                                         Part filePart = request.getPart("file");
                                         if (filePart == null || filePart.getSize() == 0) {
                                        out.println("File not uploaded or file is empty.");
                                                        return;
                                                }
                                        InputStream pdfInputStream = filePart.getInputStream();
                                        
//                                            PDDocument document = PDDocument.load(pdfInputStream);

//                                            PDFTextStripper pdfStripper = new PDFTextStripper();
//                                            String text = pdfStripper.getText(document);
                                            
//                                            // Load the Word document
                                        XWPFDocument document = new XWPFDocument(pdfInputStream);

                                        // Extract text from the Word document
                                        XWPFWordExtractor extractor = new XWPFWordExtractor(document);
                                        String text = extractor.getText();
                                        extractor.close();

                                        // Print the length and text for debugging
//                                        out.println("Text length: " + text.length());
//                                        out.println("Extracted text: " + text);

                                        // Convert text to uppercase for case-insensitive matching
                                        String upperText = text.toUpperCase();

//                                            String text = extractedText.toUpperCase();
                                             
                                            // Verify if the PDF contains Aadhaar specific keywords
                                            if (upperText.contains("AADHAAR")) {
                                                // Extract and print details from the Aadhaar card
//                                                String[] lines = text.split("\n");
//                                                    String aadhaarNumber = "";
//                                                    String aname = "";
//                                                    String dob = "";
//                                                    String gender = "";
//
//                                                    for (String line : lines) {
//                                                        if (line.matches("\\d{4} \\d{4} \\d{4}")) {
//                                                            aadhaarNumber = line.trim();
//                                                        } else if (line.contains("Name:")) {
//                                                            aname = line.split(":")[1].trim();
//                                                        } else if (line.contains("DOB:")) {
//                                                            dob = line.split(":")[1].trim();
//                                                        } else if (line.contains("Gender:")) {
//                                                            gender = line.split(":")[1].trim();
//                                                        }
//                                                    }
//
//                                                    out.println("Aadhaar Number: " + aadhaarNumber);
//                                                    out.println("Name: " + aname);
//                                                    out.println("Date of Birth: " + dob);
//                                                    out.println("Gender: " + gender);
                                                    
                                            String sql = "INSERT INTO file_check (name, file, pass) VALUES (?, ?, ?)";
                                            PreparedStatement statement = con.prepareStatement(sql);
                                            statement.setString(1, uname);
                                                statement.setBlob(2, pdfInputStream);
                                                statement.setString(3, pass);
                                                
                                                statement.executeUpdate();
                                                out.println("Document Verified. Fill rest details .");
                                            } else {
                                                out.println("The provided PDF is not an Aadhaar card.");
                                            }

                                            // Close the documnt
                                            document.close();
                                            
                                           }
                                           catch(Exception e) {
                                               out.println(e);
                                           }
                                             }
                                             else out.println("Please click on verify");
                                        %>
                                        <form action='InsertintoVerified.jsp' name="form" method="post" enctype="multipart/form-data">
                                        <table cellspacing="10px"><tr>
                                            <td><label for="auth_name">Full Name Mentioned in Aadhaar card</label></td>
                                            <td><input type="text" id="auth_name" name="auth_name"></td>
                                        </tr>
                                        
                                        
                                        <tr>
                                            <td><label for="category">Specify field you belong</label></td>
                                            <td>
                                                <select id="category" name="category">
                                                    <option value="Sales">Sales</option>
                                                    <option value="Information Technology">Developer</option>
                                                    <option value="Education">Education</option>
                                                    <option value="Medical">Medical Sector</option>
                                                    <option value="Share Market">Share Market</option>
                                                    <option value="Other">Other</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><label for="sub_category">Specify your post</label></td>
                                            <td><input type="text" id="sub_category" name="sub_category"></td>
                                        </tr>
                                        <tr>
                                            <td><label for="location">Enter your Location</label></td>
                                            <td><input type="text" id="location" name="location"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="text-align: center;"><input type="submit" value="Submit" class="click"></td>
                                        </tr>
                                    </table>
                                   </form>
                               </center>
                           </div>
                      
       
                   
              
                      <% 
           }
else{
// if user is verified
%>
             <br>
    <center>
        <div class="option">
        <form action="SearchByCategory.jsp" method="post">
            <select name="searchOption">
                <option value="Sales">Sales</option>
                <option value="Information Technology">Developer</option>
                <option value="Education">Education</option>
                <option value="Medical">Medical Sector</option>
                <option value="Share Market">Share Market</option>
                <option value="Other">Other</option>
            </select>
            <br><br>
            <input type="submit" value="Submit" class="click">
        </form>
    </div>
    </center>
        <br>
        <%
         String searchOption = request.getParameter("searchOption");
        if (searchOption != null||"s".equals(searchOption)) {
        
      
              rs=st.executeQuery("select * from verified_user where category='"+searchOption+"'");
//              out.println(fieldd);
int i=0;
               while(rs.next()){
i=1;
               %>
               <div class="card" style="font-size: 20px;font-weight: bold;color:purple" >
                               <center>
                                   <p  id="pp" value="pp">Name : <%=rs.getString(5)%> </p>
                                <p>Email : <%=rs.getString(2)%></p>
                                 <p>Phone no. : <%=rs.getString(3)%></p>
                                  <p>About : <%=rs.getString(6)%> <%="  "%> <%=rs.getString(7)%></p>
                                  
                               </center>
                           </div>
                     
               <%
}
if(i==0){
%>
    <center>
               <p>Sorry no contact found for <%=searchOption%></p>
    </center>
        <%
}
}
else {
%>
    <center>
               <p>Please select profession</p>
    </center>
        <%
}
}
}


con.close();
}   
            catch(Exception e1){
                out.println(e1);
            }
               %>
               </div>
                  </body>
                   </html>
              
               <%
           
             

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
                 