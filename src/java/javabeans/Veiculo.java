package javabeans;


public class Veiculo {
    
    private int cod_veiculo;
    private String placa;
    private String nome_modelo;
    private String marca;
    private String cor;
    private String ano;
    private int qtd_disponivel;
    private int valor_diaria;

    public Veiculo() {
        this.cod_veiculo = cod_veiculo;
        this.placa = placa;
        this.nome_modelo = nome_modelo;
        this.marca = marca;
        this.cor = cor;
        this.ano = ano;
        this.qtd_disponivel = qtd_disponivel;
        this.valor_diaria = valor_diaria;
    }

    public int getCod_veiculo() {
        return cod_veiculo;
    }

    public void setCod_veiculo(int cod_veiculo) {
        this.cod_veiculo = cod_veiculo;
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public String getNome_modelo() {
        return nome_modelo;
    }

    public void setNome_modelo(String nome_modelo) {
        this.nome_modelo = nome_modelo;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public String getAno() {
        return ano;
    }

    public void setAno(String ano) {
        this.ano = ano;
    }

    public int getQtd_disponivel() {
        return qtd_disponivel;
    }

    public void setQtd_disponivel(int qtd_disponivel) {
        this.qtd_disponivel = qtd_disponivel;
    }

    public int getValor_diaria() {
        return valor_diaria;
    }

    public void setValor_diaria(int valor_diaria) {
        this.valor_diaria = valor_diaria;
    }
    
    
    
}
