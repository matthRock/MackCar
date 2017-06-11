package dao;
import java.sql.SQLException;
import java.util.List;
import javabeans.Aluguel;


public interface AluguelDAO {
    
    public void salvarAluguel (Aluguel a) throws SQLException;
    
    public List <Aluguel> buscaAluguelId(int id) throws SQLException;
    
    public void deletarAluguel (int id) throws SQLException;
    
}
