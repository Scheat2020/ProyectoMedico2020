/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.proyectomedicowebapp.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author sergi
 */
@WebServlet(name = "controladorSalir", urlPatterns = {"/controladorSalir.do"})
public class controladorSalir extends HttpServlet {

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
            throws ServletException, IOException 
    {
        //Cerrar sesión
        
        String strFormId = request.getParameter("formid");
        //Paciente
        if(strFormId.equals("1"))
        {
        
            HttpSession cerrarSesion = request.getSession(true);
            cerrarSesion.removeAttribute("logged_user");
            cerrarSesion.removeAttribute("logged_Inf");
            cerrarSesion.removeAttribute("user");
            cerrarSesion.invalidate();
            request.getRequestDispatcher("index.jsp")
                    .forward(request, response);
        }
        
        if(strFormId.equals("2"))
        {
        
            HttpSession cerrarSesion = request.getSession(true);
            cerrarSesion.removeAttribute("logged_user");
            cerrarSesion.removeAttribute("logged_Inf");
            cerrarSesion.removeAttribute("user");
            cerrarSesion.removeAttribute("usuarios");
            cerrarSesion.removeAttribute("first_user");
            cerrarSesion.invalidate();
            request.getRequestDispatcher("index.jsp")
                    .forward(request, response);
        }
        if(strFormId.equals("3"))
        {
            
            HttpSession cerrarSesion = request.getSession(true);
            cerrarSesion.removeAttribute("logged_user");
            cerrarSesion.removeAttribute("logged_Inf");
            cerrarSesion.removeAttribute("usuarios");
            cerrarSesion.removeAttribute("doctores");
            cerrarSesion.removeAttribute("tabla");
            cerrarSesion.removeAttribute("user");
            cerrarSesion.invalidate();
            request.getRequestDispatcher("index.jsp")
                    .forward(request, response);
        }
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
