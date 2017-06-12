package dao;
import banco.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javabeans.Cliente;


public class ClienteDAOconcreto implements ClienteDAO {
    
   
    @Override
    public void salvarCliente(Cliente c) throws SQLException{
        
        Connection conexao = ConnectionFactory.getConnection();
        PreparedStatement pst = null;
        
        
        try{
            pst = conexao.prepareStatement("insert into cliente (cod_cliente, nome, sexo, datanasc, "
                    + "rg, cpf, estado, cidade, cnh, endereco, telefone, complemento, cep, email, senha) " 
                    + "values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                  
            pst.setInt(1, c.getCod_cliente());
            pst.setString(2, c.getNome());
            pst.setString(3, c.getSexo());
            pst.setString(4, c.getDataNasc());
            pst.setString(5, c.getRg());
            pst.setString(6, c.getCpf());
            pst.setString(7, c.getEstado());
            pst.setString(8, c.getCidade());
            pst.setString(9, c.getCnh());
            pst.setString(10, c.getEndereco());
            pst.setString(11, c.getTelefone());
            pst.setString(12, c.getComplemento());
            pst.setString(13, c.getCep());
            pst.setString(14, c.getEmail());
            pst.setString(15, c.getSenha());
            
            pst.executeUpdate();
            
            
        }catch (SQLException ex) {
            System.err.println("Erro "+ex);
        }finally{
            ConnectionFactory.closeConection(conexao);
        }
            
    }
    
    
    public Cliente autenticacao(Cliente c) {
            
        Cliente cliente = null;
        Connection conexao = ConnectionFactory.getConnection();
        PreparedStatement pst = null;
        
               
        try {
            
            pst = conexao.prepareStatement("select * from cliente where email = ? and senha = ?");
                
            pst.setString(1, c.getEmail());
            pst.setString(2, c.getSenha());
			
            ResultSet rs = pst.executeQuery();
			
            if (rs.next()) {
				
		cliente = new Cliente();
                
                cliente.setCod_cliente(rs.getInt("cod_cliente"));
                cliente.setNome(rs.getString("nome"));
                cliente.setSexo(rs.getString("sexo"));
                cliente.setDataNasc(rs.getString("dataNasc"));
                cliente.setRg(rs.getString("rg"));
                cliente.setCpf(rs.getString("cpf"));
                cliente.setEstado(rs.getString("estado"));
                cliente.setCidade(rs.getString("cidade"));
                cliente.setCnh(rs.getString("cnh"));
                cliente.setEndereco(rs.getString("endereco"));
                cliente.setTelefone(rs.getString("telefone"));
                cliente.setComplemento(rs.getString("complemento"));
                cliente.setCep(rs.getString("cep"));
                cliente.setEmail(rs.getString("email"));
                cliente.setSenha(rs.getString("senha"));
            }    
                System.out.println("CLIENTE ENCONTRADO");
	    } catch (SQLException e) {
                System.out.println("Erro de SQL:" + e.getMessage());
	    }
		return cliente;
	}
    
    @Override
    public List<Cliente> buscaCliente() throws SQLException{
        
        Cliente cliente = null;
        
        String sql = "select * from cliente";
        
        PreparedStatement pst = null;
        Connection conexao = ConnectionFactory.getConnection();
        ResultSet rs = null;
        
        List <Cliente> clientes = new ArrayList<>();
        
        try{
        
            pst = conexao.prepareStatement(sql);
            rs = pst.executeQuery();
            
            
            while (rs.next()){
                
                cliente = new Cliente();
                
                cliente.setCod_cliente(rs.getInt("cod_cliente"));
                cliente.setNome(rs.getString("nome"));
                cliente.setSexo(rs.getString("sexo"));
                cliente.setDataNasc(rs.getString("dataNasc"));
                cliente.setRg(rs.getString("rg"));
                cliente.setCpf(rs.getString("cpf"));
                cliente.setEstado(rs.getString("estado"));
                cliente.setCidade(rs.getString("cidade"));
                cliente.setCnh(rs.getString("cnh"));
                cliente.setEndereco(rs.getString("endereco"));
                cliente.setTelefone(rs.getString("telefone"));
                cliente.setComplemento(rs.getString("complemento"));
                cliente.setCep(rs.getString("cep"));
                cliente.setEmail(rs.getString("email"));
                cliente.setSenha(rs.getString("senha"));
            }
       
        }
    
        catch (SQLException ex) {
            System.err.println("Erro "+ex);
        }finally{
            ConnectionFactory.closeConection(conexao);
        }        
            
            
        return clientes;
            
    }
    
    
    @Override
    public void alterarCliente(Cliente c) throws SQLException {
       
        Connection conexao = ConnectionFactory.getConnection();
        PreparedStatement pst = null;
        
        int id = c.getCod_cliente();
        
        try{
            pst = conexao.prepareStatement("update cliente set estado=?, cidade=?, endereco=?, complemento=?, "
                    + "telefone=?, cep=?, email=? where cod_cliente = "+id);
                              
            pst.setString(1, c.getEstado());
            pst.setString(2, c.getCidade());
            pst.setString(3, c.getEndereco());
            pst.setString(4, c.getComplemento()); 
            pst.setString(5, c.getTelefone());
            pst.setString(6, c.getCep());
            pst.setString(7, c.getEmail());
                  
            pst.execute();
               
        }catch (SQLException ex) {
            System.err.println("Erro "+ex);
        }finally{
            ConnectionFactory.closeConection(conexao);
        }
    }
        
}

    
    
       
    
    
    
    
    
    
    
    
    
    

