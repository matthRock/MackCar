package javabeans;

public class Multa {
    
    private int cod_multa;
    private String descricao;
    private int cod_cliente;
    private double valor;

    public Multa() {
        this.cod_multa = cod_multa;
        this.descricao = descricao;
        this.cod_cliente = cod_cliente;
        this.valor = valor;
    }

    public int getCod_multa() {
        return cod_multa;
    }

    public void setCod_multa(int cod_multa) {
        this.cod_multa = cod_multa;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public int getCod_cliente() {
        return cod_cliente;
    }

    public void setCod_cliente(int cod_cliente) {
        this.cod_cliente = cod_cliente;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    
    

}
