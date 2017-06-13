/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import banco.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javabeans.Admin;

/**
 *
 * @author mathe
 */
public class AdminDAOconcreto implements AdminDAO {

    /**
     *
     * @param a
     * @return admin
     */
    @Override
    public Admin autenticacao(Admin a) {

        Admin admin = null;
        Connection conexao = ConnectionFactory.getConnection();
        PreparedStatement pst = null;

        try {

            pst = conexao.prepareStatement("select * from Administrador where login = ? and senha = ?");

            pst.setString(1, a.getLogin());
            pst.setString(2, a.getSenha());

            ResultSet rs = pst.executeQuery();

            if (rs.next()) {

                admin = new Admin();

                admin.setCod_admin(rs.getInt("cod_adm"));
                admin.setNome(rs.getString("nome"));
                admin.setLogin(rs.getString("login"));
                admin.setSenha(rs.getString("senha"));
            }
            System.out.println("Administrador ENCONTRADO");
        } catch (SQLException e) {
            System.out.println("Erro de SQL:" + e.getMessage());
        }
        return admin;
    }

    @Override
    public void alterar(Admin a) {
        Connection conexao = ConnectionFactory.getConnection();
        PreparedStatement pst = null;

        int id = a.getCod_admin();

        try {
            pst = conexao.prepareStatement("update administrador set nome=?, login=?, senha=? where cod_admin = " + id);

            pst.setString(1, a.getNome());
            pst.setString(2, a.getLogin());
            pst.setString(3, a.getSenha());

            pst.execute();

        } catch (SQLException ex) {
            System.err.println("Erro " + ex);
        } finally {
            ConnectionFactory.closeConection(conexao);
        }

    }

}
