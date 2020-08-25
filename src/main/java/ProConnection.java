


    import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import javax.swing.JOptionPane;

/**
 *
 * @author ak2049l
 */
public class ProConnection {
   Connection conn;
   ResultSet res;
  // prepareStatement pst;
   
   public static void main(String args[]) {
       ProConnection.ConnectDB();
   }
   
    public static Connection ConnectDB(){
     
        try{ //org.apache.derby.jdbc.ClientDriver
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/FoodSystem_Lapizzeria","root","root");
           
System.out.println("Connection successful"); 
 return conn;
        }catch (Exception e){
            JOptionPane.showMessageDialog(null, e);
        } 
        return null;
        
    }
    
}

