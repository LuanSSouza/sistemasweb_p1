/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ifsp.p1.servlet;

import com.ifsp.p1.classes.Cliente;
import com.ifsp.p1.classes.Endereco;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Luan
 */
public class ClienteServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession sessao = request.getSession();
        if(sessao.getAttribute("sessao") == null) {
            request.setAttribute("erro", "Usuário não autenticado!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
        
        Endereco endereco = new Endereco();
        endereco.setLogradouro(request.getParameter("logradouro"));
        endereco.setCep(request.getParameter("cep"));
        endereco.setCidade(request.getParameter("cidade"));
        endereco.setBairro(request.getParameter("bairro"));
        
        Cliente cliente = new Cliente();
        cliente.setNome(request.getParameter("nome"));
        cliente.setEmail(request.getParameter("email"));
        cliente.setCpf(request.getParameter("cpf"));
        cliente.setRg(request.getParameter("rg"));
        int idade = (!request.getParameter("idade").equals(""))?Integer.parseInt(request.getParameter("idade")):0;
        cliente.setIdade(idade);
        cliente.setEndereco(endereco);
        
        request.setAttribute("cliente", cliente);
        request.getRequestDispatcher("Editar_Cliente.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
