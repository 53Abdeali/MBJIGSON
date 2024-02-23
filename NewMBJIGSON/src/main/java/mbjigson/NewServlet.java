package mbjigson;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.*;

import org.jsoup.Jsoup;

public class NewServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/pdf");
        response.setHeader("Content-Disposition", "attachment; filename=\"mbjigson.pdf\"");
        
        try (OutputStream out = response.getOutputStream()) {
        	Document doc = new Document();
            PdfWriter.getInstance(doc, out);
            doc.open();
            
            addHeaderAndFooter(doc);

            addJSPtoPDF("coverLetter.jsp", doc);
//            addJSPtoPDF("TechnicalSpecification.jsp", doc);
//            addJSPtoPDF("OptionalAccessories.jsp", doc);
//            addJSPtoPDF("Parts.jsp", doc);
//            addJSPtoPDF("price.jsp", doc);
//            addJSPtoPDF("CommercialTC.jsp", doc);
//            addJSPtoPDF("GeneralTC.jsp", doc);6
            
            doc.close();
           
        } catch (DocumentException e) {
            e.printStackTrace();
            response.getWriter().write("An error occurred during PDF generation.");
        }
        
    }

    private void addJSPtoPDF(String jspFile, Document doc) throws IOException, DocumentException {
        String jspPath = getServletContext().getRealPath("/" + jspFile);
        File file = new File(jspPath);
        if (file.exists()) {
        	org.jsoup.nodes.Document jspDoc = Jsoup.parse(file, "UTF-8");
            String bodyText = jspDoc.body().text();
            doc.add(new Paragraph(bodyText));
        } else {
            System.out.println("JSP file not found: " + jspFile);
        }
    }

    private void addHeaderAndFooter(Document doc) throws DocumentException, IOException {
        Image logo = Image.getInstance(getServletContext().getRealPath("images/MBJIGSONLOGO.png"));
        logo.setAlignment(Element.ALIGN_LEFT);
        doc.add(logo);

        Image foot = Image.getInstance(getServletContext().getRealPath("images/MBJIGSONADDRESS.png"));
        foot.setAlignment(Element.ALIGN_RIGHT);
        foot.setAbsolutePosition(doc.getPageSize().getWidth() - foot.getWidth(), 0);
        doc.add(foot);
    }
}
