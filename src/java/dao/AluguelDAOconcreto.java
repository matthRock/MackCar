package dao;
import banco.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javabeans.Aluguel;


public class AluguelDAOconcreto implements AluguelDAO {
    
    @Override
    public void salvarAluguel (Aluguel a) throws SQLException{
        
        Connection conexao = ConnectionFactory.getConnection();
        PreparedStatement pst = null;
        
        
        try{
            pst = conexao.prepareStatement("insert into locacao (cod_locacao, cod_veiculo, cod_cliente, data_retirada,"
                    + "end_retirada, com_retirada, cep_retirada, qtd_dias, data_devolucao, end_devolucao, com_devolucao, cep_devolucao, valor_total)"
                    + "values (?,?,?,?,?,?,?,?,?,?,?,?,?)");
                  
            pst.setInt(1, a.getCod_locacao());
            pst.setInt(2, a.getCod_veiculo());
            pst.setInt(3, a.getCod_cliente());
            pst.setString(4, a.getData_retirada());
            pst.setString(5, a.getEnd_retirada());
            pst.setString(6, a.getCom_retirada());
            pst.setString(7, a.getCep_retirada());
            pst.setString(8, a.getQtd_dias());
            pst.setString(9, a.getData_devolucao());
            pst.setString(10, a.getEnd_devolucao());
            pst.setString(11, a.getCom_devolucao());
            pst.setString(12, a.getCep_devolucao());
            pst.setDouble(13, a.getValor_total());
                        
            pst.executeUpdate();
            
            
        }catch (SQLException ex) {
            System.err.println("Erro "+ex);
        }finally{
            ConnectionFactory.closeConection(conexao);
        }
            
    }

    @Override
    public List<Aluguel> buscaAluguelId(int id) throws SQLException {

        Aluguel aluguel = null;
        Connection conexao = ConnectionFactory.getConnection();
        PreparedStatement pst = null;
        
        List <Aluguel> alugueis = new ArrayList<>();
        
        try{
            
            pst = conexao.prepareStatement("select * from locacao where cod_cliente = ?");
            pst.setInt(1, id);
            ResultSet rs = pst.executeQuery();
                       
            while (rs.next()) {
                aluguel = new Aluguel();
                aluguel.setCod_locacao(rs.getInt("cod_locacao"));
                aluguel.setCod_veiculo(rs.getInt("cod_veiculo"));
                aluguel.setCod_cliente(rs.getInt("cod_cliente"));
                aluguel.setData_retirada(rs.getString("data_retirada"));
                aluguel.setEnd_retirada(rs.getString("end_retirada"));
                aluguel.setCom_retirada(rs.getString("com_retirada"));
                aluguel.setCep_retirada(rs.getString("cep_retirada"));
                aluguel.setQtd_dias(rs.getString("qtd_dias"));
                aluguel.setData_devolucao(rs.getString("data_devolucao"));
                aluguel.setEnd_devolucao(rs.getString("end_devolucao"));
                aluguel.setCom_devolucao(rs.getString("com_devolucao"));
                aluguel.setCep_devolucao(rs.getString("cep_devolucao"));
                aluguel.setValor_total(rs.getDouble("valor_total"));   
                alugueis.add(aluguel);
            }
        }
        
            catch (SQLException ex) {
                System.err.println("Erro "+ex);
            }finally{
                ConnectionFactory.closeConection(conexao);
            }        
            
        return alugueis;


    }
    

    @Override
    public void deletarAluguel(int id) throws SQLException {
        
        Connection conexao = ConnectionFactory.getConnection();
        PreparedStatement pst = null;
             
        try{
            pst = conexao.prepareStatement("delete from locacao where cod_locacao = ?");
            pst.setInt(1, id);
            pst.executeUpdate();
        
        }catch (SQLException ex) {
            System.err.println("Erro "+ex);
        }finally{
            ConnectionFactory.closeConection(conexao);
        }
        
        
    }
        
       
}
