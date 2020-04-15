
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
        String connString="jdbc:mysql://localhost/clinicasdb?user=root&password=SanJorge20&autoReconnect=true&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
        
        UserLogic CLogic = new UserLogic(connString);
        
        if(strFormId.equals("1"))
        {
            //accion es log in
            
 
            String strUser = request.getParameter("usuario");
            String strPassword = request.getParameter("password");
            
            //necesito un metodo que me permita saber si el usuario existe o no
            UserObj CLoginUser = CLogic.getUserInDB(strUser, strPassword);
            
            //verificacion como yo la necesito
            if(CLoginUser!=null)
            {
                //log in al usuario eeexitooooo
                request.getSession().setAttribute("logged_user", CLoginUser);
                
                request.getRequestDispatcher("informacionPaciente.jsp")
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
