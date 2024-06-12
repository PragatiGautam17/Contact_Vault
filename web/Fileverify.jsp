<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page import="org.apache.pdfbox.text.PDFTextStripper" %>
<%@page import="org.apache.pdfbox.pdmodel.PDDocument" %>
<%
                                           try{
                                         Part filePart = request.getPart("file");
                                        InputStream pdfInputStream = filePart.getInputStream();
                                        
            // Extract text from the PDF document
                                            PDDocument document = PDDocument.load(pdfInputStream);

                                            PDFTextStripper pdfStripper = new PDFTextStripper();
                                            String text = pdfStripper.getText(document);

                                            // Verify if the PDF contains Aadhaar specific keywords
                                            if (text.contains("Aadhaar") && text.contains("UIDAI") && text.contains("Government of India")) {
                                                // Extract and print details from the Aadhaar card
                                                String[] lines = text.split("\n");
                                                    String aadhaarNumber = "";
                                                    String aname = "";
                                                    String dob = "";
                                                    String gender = "";

                                                    for (String line : lines) {
                                                        if (line.matches("\\d{4} \\d{4} \\d{4}")) {
                                                            aadhaarNumber = line.trim();
                                                        } else if (line.contains("Name:")) {
                                                            aname = line.split(":")[1].trim();
                                                        } else if (line.contains("DOB:")) {
                                                            dob = line.split(":")[1].trim();
                                                        } else if (line.contains("Gender:")) {
                                                            gender = line.split(":")[1].trim();
                                                        }
                                                    }

                                                    out.println("Aadhaar Number: " + aadhaarNumber);
                                                    out.println("Name: " + aname);
                                                    out.println("Date of Birth: " + dob);
                                                    out.println("Gender: " + gender);
                                            } else {
                                                out.println("The provided PDF is not an Aadhaar card.");
                                            }

                                            // Close the documnt
                                            document.close();
                                           }
                                           catch(Exception e) {
                                               out.println(e);
                                           }
                                        %>