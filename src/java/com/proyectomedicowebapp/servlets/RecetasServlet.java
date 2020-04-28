/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.proyectomedicowebapp.servlets;

import com.proyectomedicowebapp.logic.InfoLogic;
import com.proyectomedicowebapp.logic.UserLogic;
import com.proyectomedicowebapp.objects.InfoDocObj;
import com.proyectomedicowebapp.objects.InfoObj;
import com.proyectomedicowebapp.objects.RecetaObj;
import com.proyectomedicowebapp.objects.TablaObj;
import com.proyectomedicowebapp.objects.UserObj;
import java.io.IOException;
import java.util.List;
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
        String connString="jdbc:mysql://localhost/clinicasdb?user=root&password=SanJorge20&autoReconnect=true&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
        
        String strFormId = request.getParameter("formid");
            
        //Registra recetas
        if(strFormId.equals("1"))
        {
        
            //Cierra sesión anterior
            HttpSession cerrarSesion = request.getSession();
            cerrarSesion.removeAttribute("logged_Inf2");
            cerrarSesion.removeAttribute("logged_user2");
            cerrarSesion.removeAttribute("Cita");
            cerrarSesion.removeAttribute("user2");
            cerrarSesion.invalidate();

            String strReceta = request.getParameter("receta");
            String strId = request.getParameter("idPaciente");
            String strDoc = request.getParameter("userDoc");

            InfoLogic CInfoL = new InfoLogic(connString);
            boolean CUpdate =  CInfoL.agregarReceta(strId, strReceta);
            InfoDocObj CDoc = CInfoL.getInfoDBDoc(strDoc);
            InfoObj CListInf = CInfoL.getInfoPaciente(strId);
            TablaObj CCita = CInfoL.getCita(strId);
            UserLogic CUserL = new UserLogic (connString);
            List<RecetaObj> CRecetas = CUserL.getAllRecetas(strId);

            request.getSession().setAttribute("logged_Inf2", CListInf );       
            request.getSession().setAttribute("logged_user2", CDoc);
            request.getSession().setAttribute("user2", strDoc);
            request.getSession().setAttribute("Cita", CCita);
            request.getSession().setAttribute("Receta", CRecetas);


            request.getRequestDispatcher("informacionPaciente.jsp")
                        .forward(request, response);
        }
        
        //Regresa a la página del doctor
        if(strFormId.equals("2"))
        {
            
            //Cierra sesión anterior
            HttpSession cerrarSesion = request.getSession();
            cerrarSesion.removeAttribute("logged_Inf2");
            cerrarSesion.removeAttribute("logged_user2");
            cerrarSesion.removeAttribute("Cita");
            cerrarSesion.removeAttribute("user2");
            cerrarSesion.invalidate();
            
            String strUser = request.getParameter("usuario");
            String strPassword = request.getParameter("password");
            String strTabla = "clinicasdb.doctores";
            
            //Recoge para iniciar sesión de nuevo del doctor
            UserLogic CLogic = new UserLogic(connString);
            UserObj CLoginUser = CLogic.getUserInDB(strUser, strPassword, strTabla);
            
            InfoLogic CInfoL = new InfoLogic(connString);
            InfoDocObj CListInfDoc = CInfoL.getInfoDBDoc(strUser);

            //Obtengo los todos usuarios
            UserLogic CL = new UserLogic(connString);
            List<TablaObj> CList = CL.getAllUsers(strUser);

            //Obtengo la cita mas proxima
            UserLogic CFirst = new UserLogic(connString);
            TablaObj CFistDB = CFirst.getFistUserInDB(strUser);

            //log in al usuario eeexitooooo
            
            request.getSession().setAttribute("logged_user", CLoginUser);
            request.getSession().setAttribute("logged_Inf", CListInfDoc );
            request.getSession().setAttribute("user", strUser );
            request.getSession().setAttribute("usuarios", CList );
            request.getSession().setAttribute("first_user", CFistDB );
                
                
            request.getRequestDispatcher("informacionMedico.jsp")
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
