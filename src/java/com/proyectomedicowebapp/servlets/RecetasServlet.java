/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.proyectomedicowebapp.servlets;

import com.proyectomedicowebapp.logic.InfoLogic;
import com.proyectomedicowebapp.objects.InfoDocObj;
import com.proyectomedicowebapp.objects.InfoObj;
import com.proyectomedicowebapp.objects.TablaObj;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author windows
 */
public class RecetasServlet extends HttpServlet {

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
        String connString="jdbc:mysql://localhost/clinicasdb?user=root&password=123456789&autoReconnect=true&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
        
        //Cierra sesión anterior
        HttpSession cerrarSesion = request.getSession();
        cerrarSesion.removeAttribute("logged_Inf");
        cerrarSesion.removeAttribute("logged_user");
        cerrarSesion.removeAttribute("Cita");
        cerrarSesion.removeAttribute("user");
        cerrarSesion.invalidate();
        
        String strReceta = request.getParameter("receta");
        String strId = request.getParameter("idPaciente");
        String strDoc = request.getParameter("userDoc");
        
        InfoLogic CInfoL = new InfoLogic(connString);
        boolean CUpdate =  CInfoL.updateReceta(strId, strReceta);
        InfoDocObj CDoc = CInfoL.getInfoDBDoc(strDoc);
        InfoObj CListInf = CInfoL.getInfoPaciente(strId);
        TablaObj CCita = CInfoL.getCita(strId);
        
        request.getSession().setAttribute("logged_Inf", CListInf );       
        request.getSession().setAttribute("Receta", CUpdate);
        request.getSession().setAttribute("logged_user", CDoc);
        request.getSession().setAttribute("user", strDoc);
        request.getSession().setAttribute("Cita", CCita);
        
                
        request.getRequestDispatcher("informacionPaciente.jsp")
                    .forward(request, response);
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
