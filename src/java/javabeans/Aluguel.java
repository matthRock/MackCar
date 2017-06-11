package javabeans;


public class Aluguel {
    
    private int cod_locacao;
    private int cod_veiculo;
    private int cod_cliente;
    private String data_retirada;
    private String end_retirada; 
    private String com_retirada; 
    private String cep_retirada; 
    private String qtd_dias;
    private String data_devolucao;
    private String end_devolucao;
    private String com_devolucao;
    private String cep_devolucao;
    private double valor_total;

    public Aluguel() {
        this.cod_locacao = cod_locacao;
        this.cod_veiculo = cod_veiculo;
        this.cod_cliente = cod_cliente;
        this.data_retirada = data_retirada;
        this.end_retirada = end_retirada;
        this.com_retirada = com_retirada;
        this.cep_retirada = cep_retirada;
        this.qtd_dias = qtd_dias;
        this.data_devolucao = data_devolucao;
        this.end_devolucao = end_devolucao;
        this.com_devolucao = com_devolucao;
        this.cep_devolucao = cep_devolucao;
        this.valor_total = valor_total;
    }

    public int getCod_locacao() {
        return cod_locacao;
    }

    public void setCod_locacao(int cod_locacao) {
        this.cod_locacao = cod_locacao;
    }

    public int getCod_veiculo() {
        return cod_veiculo;
    }

    public void setCod_veiculo(int cod_veiculo) {
        this.cod_veiculo = cod_veiculo;
    }

    public int getCod_cliente() {
        return cod_cliente;
    }

    public void setCod_cliente(int cod_cliente) {
        this.cod_cliente = cod_cliente;
    }

    public String getData_retirada() {
        return data_retirada;
    }

    public void setData_retirada(String data_retirada) {
        this.data_retirada = data_retirada;
    }

    public String getEnd_retirada() {
        return end_retirada;
    }

    public void setEnd_retirada(String end_retirada) {
        this.end_retirada = end_retirada;
    }

    public String getQtd_dias() {
        return qtd_dias;
    }

    public void setQtd_dias(String qtd_dias) {
        this.qtd_dias = qtd_dias;
    }

    public String getData_devolucao() {
        return data_devolucao;
    }

    public void setData_devolucao(String data_devolucao) {
        this.data_devolucao = data_devolucao;
    }

    public String getEnd_devolucao() {
        return end_devolucao;
    }

    public void setEnd_devolucao(String end_devolucao) {
        this.end_devolucao = end_devolucao;
    }

    public double getValor_total() {
        return valor_total;
    }

    public void setValor_total(double valor_total) {
        this.valor_total = valor_total;
    }

    public String getCom_retirada() {
        return com_retirada;
    }

    public void setCom_retirada(String com_retirada) {
        this.com_retirada = com_retirada;
    }

    public String getCep_retirada() {
        return cep_retirada;
    }

    public void setCep_retirada(String cep_retirada) {
        this.cep_retirada = cep_retirada;
    }

    public String getCom_devolucao() {
        return com_devolucao;
    }

    public void setCom_devolucao(String com_devolucao) {
        this.com_devolucao = com_devolucao;
    }

    public String getCep_devolucao() {
        return cep_devolucao;
    }

    public void setCep_devolucao(String cep_devolucao) {
        this.cep_devolucao = cep_devolucao;
    }
    
    
    
}
