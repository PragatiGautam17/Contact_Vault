import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.text.PDFTextStripper;

import java.io.File;
import java.io.IOException;

public class AadhaarCardVerifier {

    public static void main(String[] args) {
        String filePath = "path/to/your/aadhaar.pdf"; // Replace with the actual file path

        try {
            // Load the PDF document
            PDDocument document = PDDocument.load(new File(filePath));

            // Extract text from the PDF document
            PDFTextStripper pdfStripper = new PDFTextStripper();
            String text = pdfStripper.getText(document);

            // Verify if the PDF contains Aadhaar specific keywords
            if (isAadhaarCard(text)) {
                // Extract and print details from the Aadhaar card
                extractAadhaarDetails(text);
            } else {
                System.out.println("The provided PDF is not an Aadhaar card.");
            }

            // Close the document
            document.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private static boolean isAadhaarCard(String text) {
        // Aadhaar cards usually contain these keywords
        return text.contains("Aadhaar") && text.contains("UIDAI") && text.contains("Government of India");
    }

    private static void extractAadhaarDetails(String text) {
        // Example of extracting details, adjust regex and extraction logic as needed
        String[] lines = text.split("\n");
        String aadhaarNumber = "";
        String name = "";
        String dob = "";
        String gender = "";

        for (String line : lines) {
            if (line.matches("\\d{4} \\d{4} \\d{4}")) {
                aadhaarNumber = line.trim();
            } else if (line.contains("Name:")) {
                name = line.split(":")[1].trim();
            } else if (line.contains("DOB:")) {
                dob = line.split(":")[1].trim();
            } else if (line.contains("Gender:")) {
                gender = line.split(":")[1].trim();
            }
        }

        System.out.println("Aadhaar Number: " + aadhaarNumber);
        System.out.println("Name: " + name);
        System.out.println("Date of Birth: " + dob);
        System.out.println("Gender: " + gender);
    }
}
