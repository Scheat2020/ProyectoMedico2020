/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.proyectomedicowebapp.servlets;

import com.proyectomedicowebapp.logic.UserLogic;
import com.proyectomedicowebapp.objects.UserObj;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "LoginRegistroServlet", urlPatterns = {"/LoginRegistroServlet"})
public class LoginRegistroServlet extends HttpServlet {

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
        
        UserLogic CLogic = new UserLogic(connString);
        
        if(strFormId.equals("1"))
        {
            //accion es log in
            
            
            String strUser = request.getParameter("usuario");
            String strPassword = request.getParameter("password");
            String strTabla = "clinicasdb.pacientes";
            
            //necesito un metodo que me permita saber si el usuario existe o no
            UserObj CLoginUser = CLogic.getUserInDB(strUser, strPassword, strTabla);
            
            //verificacion como yo la necesito
            if(CLoginUser!=null)
            {
                //log in al usuario eeexitooooo
                request.getSession().setAttribute("logged_user", CLoginUser);
                
                request.getRequestDispatcher("FichaTecnica.jsp")
                       .forward(request, response);
            }
            else
            {
                String strMessage = "User or Password are incorrect please try again";
                request.getSession().setAttribute("message", strMessage);
                
                //usuario o password estan equivocados
                request.getRequestDispatcher("errorMessage.jsp")
                       .forward(request, response);
            }
        }
        
        if(strFormId.equals("3"))
        {
            //accion es log in
            
            
            String strUser = request.getParameter("usuario");
            String strPassword = request.getParameter("password");
            String strTabla = "clinicasdb.doctores";
            
            //necesito un metodo que me permita saber si el usuario existe o no
            UserObj CLoginUser = CLogic.getUserInDB(strUser, strPassword, strTabla);
            
            //verificacion como yo la necesito
            if(CLoginUser!=null)
            {
                //log in al usuario eeexitooooo
                request.getSession().setAttribute("logged_user", CLoginUser);
                
                request.getRequestDispatcher("informacionMedico.jsp")
                       .forward(request, response);
            }
            else
            {
                String strMessage = "User or Password are incorrect please try again";
                request.getSession().setAttribute("message", strMessage);
                
                //usuario o password estan equivocados
                request.getRequestDispatcher("errorMessage.jsp")
                       .forward(request, response);
            }
        }
        if(strFormId.equals("2"))
        {
            String strNombre = request.getParameter("firstname");
            String strApellidos = request.getParameter("apellidos");
            String strFoto = request.getParameter("foto");
            String strNacimiento = request.getParameter("nacimiento");
            String strDUI = request.getParameter("dui");
            String strDireccion = request.getParameter("dir");
            String strUser = request.getParameter("username");
            String strPassword = request.getParameter("password");
            String strCelular = request.getParameter("celular");
            String strEmail = request.getParameter("email");
            String strSexo = request.getParameter("sexo");

            String strEstatura = request.getParameter("estatura");
            String strSangre = request.getParameter("tipoSangre");
            String strAlergias = request.getParameter("alergias");
            String strHistorial = request.getParameter("historial");
            
            if (strFoto.equals("")){
                strFoto = "NULL";
            }
            
            UserLogic CLogic2 = new UserLogic(connString);
            boolean hasFailed = 
                    CLogic2.insertUser(strNombre, strApellidos, strFoto, strNacimiento, strDUI, strDireccion, strUser, strPassword, strCelular, strEmail, strSexo, strEstatura, strSangre, strAlergias, strHistorial);
            
            request.getRequestDispatcher("inicioPaciente.jsp")
                   .forward(request, response);
        }
    }
//jejeje


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
