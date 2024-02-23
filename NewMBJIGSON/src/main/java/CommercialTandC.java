

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import Project.ConnectionProvider;

@WebServlet("/ctandc")
public class CommercialTandC extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html><head><title>Table Data</title></head><body>");

        try {
            Connection con = ConnectionProvider.getCon();
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM ctandc");

            out.println("<table border='1'><tr><th>ID</th><th>terms</th><th>conditions</th></tr>");
            while (rs.next()) {
                out.println("<tr><td>" + rs.getInt("ID") + "</td><td>" + rs.getString("Terms") + "</td><td>" + rs.getString("Conditions") + "</td></tr>");
            }
            out.println("</table>");
            out.println("</body></html>");

            con.close();
        } catch (Exception e) {
            out.println(e);
        }

        out.close();
	}

}
