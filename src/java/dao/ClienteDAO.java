package dao;
import java.sql.SQLException;
import java.util.List;
import javabeans.Cliente;



public interface ClienteDAO {
        
    
    public void salvarCliente(Cliente c) throws SQLException;

    public Cliente autenticacao(Cliente c);
    
    public List <Cliente> buscaCliente() throws SQLException;
    
    public void alterarCliente(Cliente c) throws SQLException;
    
}
