package dao;
import java.sql.SQLException;
import java.util.List;
import javabeans.Multa;

public interface MultaDAO {
        
    public List <Multa> buscaMultaId(int id) throws SQLException;
    
    public List <Multa> buscaMultas() throws SQLException;
    
    public void salvarMulta (Multa m) throws SQLException;

    public void deletarMulta(int escolha2);

    
    
   
    
}
