package dao;
import java.sql.SQLException;
import java.util.List;
import javabeans.Veiculo;


public interface VeiculoDAO {
    
    public List <Veiculo> buscaVeiculo() throws SQLException;
    
    public Veiculo buscaVeiculoId(int id) throws SQLException;
    
}
