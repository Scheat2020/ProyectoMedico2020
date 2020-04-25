/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.proyectomedicowebapp.objects;

/**
 *
 * @author windows
 */
public class TablaObj {
    
    private String m_nombres;
        private String m_apellidos;
        private int m_idPaciente;
        private String m_fecha;

    public TablaObj(String p_nombres, String p_apellidos, int p_idPaciente, String p_fecha ) 
    {
        setNombres(p_nombres);
        setApellidos(p_apellidos);
        setIdPaciente(p_idPaciente);
        setFecha(p_fecha);

    }


        
      //Getters
     public String getNombres() {
            return m_nombres;
    }

    public String getApellidos() {
            return m_apellidos;
    }

    public int geIdPaciente() {
        return m_idPaciente;
    }

    public String getFecha() {
        return m_fecha;
    }

    
     //Setters

    private void setNombres(String p_nombres) {
           m_nombres = p_nombres;
    }

    private void setApellidos(String p_apellidos) {
            m_apellidos = p_apellidos;
    }

    private void setIdPaciente(int p_idPaciente) {
        m_idPaciente = p_idPaciente;
    }

    private void setFecha(String p_fecha) {
        m_fecha = p_fecha;
    }

}
