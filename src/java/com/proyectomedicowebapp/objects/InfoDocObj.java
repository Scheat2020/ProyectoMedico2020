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
public class InfoDocObj {
        private String m_nombres;
        private String m_apellidos;
        private String m_correo;
        private String m_credencial;
        private String m_telefono;
        private String m_direccion;
        private String m_especialidad;
        private String m_usuario;
        private String m_password;

    public InfoDocObj(String p_nombres, String p_apellidos,String p_telefono, String p_correo, String p_credencial,String p_direccion, String p_especialidad, String p_usuario, String p_password) {
        setNombres(p_nombres);
        setApellidos(p_apellidos);
        setCorreo(p_correo);
        setCredencial(p_credencial);
        setTelefono(p_telefono);
        setDireccion(p_direccion);
        setEspecialidad(p_especialidad);
        setUsuario(p_usuario);
        setPassword(p_password);
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

    public String getCredencial() {
        return m_credencial;
    }

    public String getTelefono() {
        return m_telefono;
    }
    
    public String getDireccion() {
        return m_direccion;
    }
    
    public String getEspecialidad() {
        return m_especialidad;
    }  
        
    public String getUsuario() {
        return m_usuario;
    }    
    public String getPassword() {
        return m_password;
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

    private void setCredencial(String p_credencial) {
        m_credencial = p_credencial;
    }

    private void setTelefono(String p_telefono) {
        m_telefono = p_telefono;
    }
    
    private void setDireccion(String p_direccion) {
        m_direccion = p_direccion;
    }
    
    private void setEspecialidad(String p_especialidad) {
        m_especialidad = p_especialidad;
    }
    private void setUsuario(String p_usuario) {
        m_usuario = p_usuario;
    }
    private void setPassword(String p_password) {
        m_password = p_password;
    }
   
}
