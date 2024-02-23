
import jakarta.servlet.ServletException;
import Project.ConnectionProvider;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.*;

@WebServlet("/displayImage")
public class ImageDisplay extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Connection con = ConnectionProvider.getCon();
			PreparedStatement pstmt = con.prepareStatement("Select Image from machineimage where Name= ? ");
			pstmt.setString(1,"7-Axis CNC Synchro Hydraulic Press Brake");
			ResultSet rs = pstmt.executeQuery();
			 if (rs.next()) {
	                // Retrieve the image data
	                Blob blob = rs.getBlob("Image");
	                byte[] imageBytes = blob.getBytes(1, (int) blob.length());

	                // Set response content type
	                response.setContentType("image/jpeg");

	                // Write the image data to the response output stream
	                OutputStream os = response.getOutputStream();
	                os.write(imageBytes);
	                os.close();
	            } else {
	                response.getWriter().println("Image not found");
	            }
		}
		catch(Exception e) {
			
		}
	}
}
