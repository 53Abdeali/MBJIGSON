package mbjigson;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
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

@WebServlet("/MbJigson")
public class MbJigson extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/pdf");
        response.setHeader("Content-disposition", "attachment; filename=mbjigson.pdf");
        Document doc = new Document();
        try (OutputStream out = response.getOutputStream()) {
            
            PdfWriter.getInstance(doc, out);
            doc.open();
            
            addHeaderAndFooter(doc);

            addJSPtoPDF("coverLetter.jsp", doc);
            addJSPtoPDF("TechnicalSpecification.jsp", doc);
            addJSPtoPDF("OptionalAccessories.jsp", doc);
            addJSPtoPDF("Parts.jsp", doc);
            addJSPtoPDF("price.jsp", doc);
            addJSPtoPDF("CommercialTC.jsp", doc);
            addJSPtoPDF("GeneralTC.jsp", doc);

           
        } catch (DocumentException e) {
            e.printStackTrace();
            response.getWriter().write("An error occurred during PDF generation.");
        }
        doc.close();
    }

    private void addJSPtoPDF(String jspFile, Document doc) throws IOException, DocumentException {
        String jspPath = getServletContext().getRealPath("/" + jspFile);
        File file = new File(jspPath);
        if (file.exists()) {
            org.jsoup.nodes.Document jspDoc = org.jsoup.Jsoup.parse(file, "UTF-8");
            Element body = (Element) jspDoc.body();
            doc.add(new Paragraph(((org.jsoup.nodes.Element) body).text()));
        } else {
            System.out.println("JSP file not found: " + jspFile);
        }
    }

    private void addHeaderAndFooter(Document doc) throws DocumentException, IOException {
        Image logo = Image.getInstance(getServletContext().getRealPath("/webapp/images/MBJIGSONLOGO.png"));
        logo.setAlignment(Element.ALIGN_LEFT);
        doc.add(logo);

        Image foot = Image.getInstance(getServletContext().getRealPath("/webapp/images/MBJIGSONADDRESS.png"));
        foot.setAlignment(Element.ALIGN_RIGHT);
        foot.setAbsolutePosition(doc.getPageSize().getWidth() - foot.getWidth(), 0);
        doc.add(foot);
    }
}
