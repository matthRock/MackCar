package banco;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

//@author Marcelo Baronian 12/05/17

public class ConnectionFactory{

    private static final String DRIVER = "org.apache.derby.jdbc.ClientDriver";
    private static final String URL = "jdbc:derby://localhost:1527/mackcar_bd";
    private static final String USER = "mackcar_bd";
    private static final String PASS = "mackcar_bd";


    public static Connection getConnection(){
        
        try{
            Class.forName(DRIVER);
            return DriverManager.getConnection(URL, USER, PASS);
        
        } catch (ClassNotFoundException | SQLException ex){
            throw new  RuntimeException("Erro na conexão",ex);
        }
    }

    
    public static void closeConection(Connection con){
        
        try{
            if(con != null){
                con.close();
            }
            
        }catch (SQLException ex){
            Logger.getLogger(ConnectionFactory.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    
}


    
  
    