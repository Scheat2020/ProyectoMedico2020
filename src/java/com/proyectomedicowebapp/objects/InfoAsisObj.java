/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.proyectomedicowebapp.objects;

public class InfoAsisObj {
        private String m_nombres;
        private String m_telefono;
        private String m_correo;
        private String m_apellidos;

    public InfoAsisObj(String p_nombres, String p_apellidos,String p_telefono, String p_correo) {
        setNombres(p_nombres);
        setApellidos(p_apellidos);
        setCorreo(p_correo);
        setTelefono(p_telefono);

    }
        
      //Getters
     public String getNombres() {
            return m_nombres;
    }

    public String getApellidos() {
            return m_apellidos;
    }

    public String getCorreo() {
        return m_correo;
    }


    public String getTelefono() {
        return m_telefono;
    }
    
   
     //Setters

    private void setNombres(String p_nombres) {
           m_nombres = p_nombres;
    }

    private void setApellidos(String p_apellidos) {
            m_apellidos = p_apellidos;
    }

    private void setCorreo(String p_correo) {
        m_correo = p_correo;
    }

    private void setTelefono(String p_telefono) {
        m_telefono = p_telefono;
    }
    
   
    
}

