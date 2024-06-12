<%@ page import="java.sql.*, java.io.*" %>
<%@ page contentType="application/pdf" %>
<%
    String email = "pragati@gmail.com";

    if (email != null) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/phonebook?useSSL=false", "root", "root");

            String sql = "SELECT file FROM verified_user WHERE email = ?";
            ps = con.prepareStatement(sql);
            ps.setString(1, email);
            rs = ps.executeQuery();

            if (rs.next()) {
                InputStream pdfInputStream = rs.getBinaryStream("file");

                // Set response content type to PDF
                response.setContentType("application/pdf");

                // Get the response output stream
                OutputStream out1 = response.getOutputStream();

                // Buffer for reading input stream
                byte[] buffer = new byte[4096];
                int bytesRead = -1;

                // Write PDF to output stream
                while ((bytesRead = pdfInputStream.read(buffer)) != -1) {
                    out1.write(buffer, 0, bytesRead);
                }

                out1.flush();
                out1.close();
                pdfInputStream.close();
            } else {
                out.println("No PDF found for the specified email.");
            }
        } catch (Exception e) {
            out.println("Error: " + e.getMessage());
        } finally {
            if (rs != null) try { rs.close(); } catch (SQLException e) { }
            if (ps != null) try { ps.close(); } catch (SQLException e) { }
            if (con != null) try { con.close(); } catch (SQLException e) { }
        }
    } else {
        out.println("Email parameter is missing.");
    }
%>
