/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.proyectomedicowebapp.objects;

/**
 *
 * @author sergi
 */
public class TablaDocObj 
{
    
    private int m_idPaciente;
    private String m_nombres;
    private String m_apellidos;

    public TablaDocObj(int p_idPaciente, String p_nombres, String p_apellidos) {
        setIdPaciente(p_idPaciente);
        setNombres(p_nombres);
        setApellidos(p_apellidos);
    }
    
    
    
    
    public int getIdPaciente() {
        return m_idPaciente;
    }

    private void setIdPaciente(int p_idPaciente) {
        m_idPaciente = p_idPaciente;
    }

    public String getNombres() {
        return m_nombres;
    }

    private void setNombres(String p_nombres) {
        m_nombres = p_nombres;
    }

    public String getApellidos() {
        return m_apellidos;
    }

    private void setApellidos(String p_apellidos) {
        m_apellidos = p_apellidos;
    }
    
    
    
    
    
    
}
