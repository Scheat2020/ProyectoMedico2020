
package com.proyectomedicowebapp.objects;

/**
 *
 * @author windows
 */
public class RecetaObj {
    
     private String m_idPaciente;
     private String m_receta;
     private String m_fecha;
     private String m_idReceta;
     


    public RecetaObj(String p_idPaciente, String p_receta, String p_fecha, String p_idReceta) 
    {
        setIdPaciente(p_idPaciente);
        setReceta(p_receta);
        setFecha(p_fecha);
        setIdReceta(p_idReceta);
    }

     //Getters
    public String getIdPaciente() {
        return m_idPaciente;
    }

    public String getReceta() {
        return m_receta;
    }

    public String getFecha() {
        return m_fecha;
    }

    public String getIdReceta() {
        return m_idReceta;
    }
     
    //Setters

    private void setIdPaciente(String p_idPaciente) {
        m_idPaciente = p_idPaciente;
    }

    private void setReceta(String p_receta) {
        m_receta = p_receta;
    }

    private void setFecha(String p_fecha) {
        m_fecha = p_fecha;
    }

    private void setIdReceta(String p_idReceta) {
        m_idReceta = p_idReceta;
    }
    
}
