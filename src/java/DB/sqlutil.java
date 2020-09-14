package DB;
import java.sql.*;

public class sqlutil {
    
   public static String dbunm="root";
   public  static String dbpass="";
    public static String dbname="chatroom";
    public static String url="jdbc:mysql://localhost:3306/"+dbname+"?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";    
    public static Connection conn=null;
    public static Statement stmt=null;
    
        
    public static void connect()
    {
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        conn=DriverManager.getConnection(url,dbunm,dbpass);
        stmt=conn.createStatement();
        
    }
        catch(Exception ex)
        {
            System.out.println(ex);
        }
    }

    
    
}
