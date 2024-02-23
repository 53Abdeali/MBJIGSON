package Project;

import java.sql.*;

public class ConnectionProvider {
    public static Connection getCon(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mbjigson","root","Active@53");
            return con;
        }
        catch(ClassNotFoundException | SQLException e){
            return null;
        }
    }
}
