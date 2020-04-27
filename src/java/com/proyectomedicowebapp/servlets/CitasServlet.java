/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.proyectomedicowebapp.servlets;

import com.proyectomedicowebapp.logic.InfoLogic;
import com.proyectomedicowebapp.logic.UserLogic;
import com.proyectomedicowebapp.objects.InfoAsisObj;
import com.proyectomedicowebapp.objects.TablaAsisObj;
import com.proyectomedicowebapp.objects.TablaDocObj;
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
 * @author sergi
 */
public class CitasServlet extends HttpServlet {

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
        
        String strFormId = request.getParameter("formid");
        String connString="jdbc:mysql://localhost/clinicasdb?user=root&password=123456789&autoReconnect=true&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
        
        //Registro de citas
        if(strFormId.equals("1"))
        {
            String strMotivo = request.getParameter("motivo");
            String strFecha = request.getParameter("fecha");
            String strHora = request.getParameter("hora");
            String strPaciente = request.getParameter("paciente");
            String strDoctor = request.getParameter("doctor");
            String strUser = request.getParameter("asistente");
            String strPassword = request.getParameter("password");
            
            //Cierra la sesión anterior 
            HttpSession cerrarSesion = request.getSession(true);
            cerrarSesion.removeAttribute("logged_user");
            cerrarSesion.removeAttribute("logged_Inf");
            cerrarSesion.removeAttribute("usuarios");
            cerrarSesion.removeAttribute("doctores");
            cerrarSesion.removeAttribute("tabla");
            cerrarSesion.removeAttribute("user");
            cerrarSesion.invalidate();
            
            //Obtengo info necesaria 
            UserLogic CLogic = new UserLogic(connString);
            String strTabla = "clinicasdb.asistente";
            
            //necesito un metodo que me permita saber si el usuario existe o no
            UserObj CLoginUser = CLogic.getUserInDB(strUser, strPassword, strTabla);
            
            //Actualiza la tabla
            InfoLogic CInfoL = new InfoLogic(connString);
            InfoAsisObj CListInf = CInfoL.getInfoDBAsis(strUser);

            //Obtengo a todos los pacientes
            UserLogic CL = new UserLogic(connString);
            List<TablaDocObj> CList = CL.getAllPacientes();



            //Obtengo a todos los doctores
            UserLogic CLDoc = new UserLogic(connString);
            List<TablaDocObj> CListDoc = CLDoc.getAllDoctors();

            //Obtengo las citas creadas
            List<TablaAsisObj> CListTab = CL.getAllCitasInfo();


            //log in al usuario eeexitooooo
            request.getSession().setAttribute("logged_user", CLoginUser);
            request.getSession().setAttribute("logged_Inf", CListInf );
            request.getSession().setAttribute("usuarios", CList );
            request.getSession().setAttribute("doctores", CListDoc );
            request.getSession().setAttribute("tabla", CListTab );
            request.getSession().setAttribute("user", strUser );

            request.getRequestDispatcher("asistenteProfile.jsp")
                   .forward(request, response);
                        
            //Inserto en tabla los registros
            UserLogic CLogic2 = new UserLogic(connString);
            boolean hasFailed = 
                    CLogic2.insertCita(strMotivo, strFecha, strHora, strPaciente, strDoctor);
            
            request.getRequestDispatcher("asistenteProfile.jsp")
                   .forward(request, response);
            
        }
        
        //Borrar cita
        if(strFormId.equals("2"))
        {
            String strFecha = request.getParameter("fecha");
            String strHora = request.getParameter("hora");
            String strPaciente = request.getParameter("paciente");
            String strDoctor = request.getParameter("doctor");
            String strUser = request.getParameter("asistente");
            String strPassword = request.getParameter("password");
            
            //Cierra la sesión anterior 
            HttpSession cerrarSesion = request.getSession(true);
            cerrarSesion.removeAttribute("logged_user");
            cerrarSesion.removeAttribute("logged_Inf");
            cerrarSesion.removeAttribute("usuarios");
            cerrarSesion.removeAttribute("doctores");
            cerrarSesion.removeAttribute("tabla");
            cerrarSesion.removeAttribute("user");
            cerrarSesion.invalidate();
            
            //Obtengo información para iniciar sesión 
            UserLogic CLogic = new UserLogic(connString);
            String strTabla = "clinicasdb.asistente";
            
            //necesito un metodo que me permita saber si el usuario existe o no
            UserObj CLoginUser = CLogic.getUserInDB(strUser, strPassword, strTabla);
            
            //Actualiza la tabla
            InfoLogic CInfoL = new InfoLogic(connString);
            InfoAsisObj CListInf = CInfoL.getInfoDBAsis(strUser);

            //Obtengo a todos los pacientes
            UserLogic CL = new UserLogic(connString);
            List<TablaDocObj> CList = CL.getAllPacientes();



            //Obtengo a todos los doctores
            UserLogic CLDoc = new UserLogic(connString);
            List<TablaDocObj> CListDoc = CLDoc.getAllDoctors();

            //Obtengo las citas creadas
            List<TablaAsisObj> CListTab = CL.getAllCitasInfo();


            //log in al usuario eeexitooooo
            request.getSession().setAttribute("logged_user", CLoginUser);
            request.getSession().setAttribute("logged_Inf", CListInf );
            request.getSession().setAttribute("usuarios", CList );
            request.getSession().setAttribute("doctores", CListDoc );
            request.getSession().setAttribute("tabla", CListTab );
            request.getSession().setAttribute("user", strUser );
                        
            //Delete de los registros deseados
            
            UserLogic CLogic2 = new UserLogic(connString);
            boolean hasFailed = 
                    CLogic2.deleteCita(strFecha, strHora, strPaciente, strDoctor);
            
            request.getRequestDispatcher("asistenteProfile.jsp")
                   .forward(request, response);
            
            
            if(strFormId.equals("3"))
            {
                

            }
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
