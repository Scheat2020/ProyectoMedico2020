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
public class TablaAsisObj {
    private String m_nombresPa;
    private String m_apellidosPa;
    private int m_idPaciente;
    private String m_fecha;
    private String m_hora;
    private int m_idDoctor;
    private String m_nombresDoc;
    private String m_apellidosDoc;
    private String m_correo;
    private String m_numero;
    

    public TablaAsisObj(String p_nombresPa, String p_apellidosPa, int p_idPaciente, String p_fecha, String p_hora, int p_idDoctor, String p_nombresDoc, 
            String p_apellidosDoc, String p_correo, String p_numero) 
    {
        setNombresPa(p_nombresPa);
        setApellidosPa(p_apellidosPa);
        setIdPaciente(p_idPaciente);
        setFecha(p_fecha);
        setHora(p_hora);
        setIdDoctor(p_idDoctor);
        setNombresDoc(p_nombresDoc);
        setApellidosDoc(p_apellidosDoc);
        setCorreo(p_correo);
        setNumero(p_numero);
    }

    public String getCorreo() {
        return m_correo;
    }
    
    private void setCorreo(String p_correo) {
        m_correo = p_correo;
    }

    public String getNumero() {
        return m_numero;
    }

    private void setNumero(String p_numero) {
        m_numero = p_numero;
    }
    
    

    public String getNombresPa() {
        return m_nombresPa;
    }

    private void setNombresPa(String p_nombresPa) {
        m_nombresPa = p_nombresPa;
    }

    public String getApellidosPa() {
        return m_apellidosPa;
    }

    private void setApellidosPa(String p_apellidosPa) {
        m_apellidosPa = p_apellidosPa;
    }

    public int getIdPaciente() {
        return m_idPaciente;
    }

    private void setIdPaciente(int p_idPaciente) {
        m_idPaciente = p_idPaciente;
    }

    public String getFecha() {
        return m_fecha;
    }

    private void setFecha(String p_fecha) {
        m_fecha = p_fecha;
    }

    public String getHora() {
        return m_hora;
    }

    private void setHora(String p_hora) {
        m_hora = p_hora;
    }

    public int getIdDoctor() {
        return m_idDoctor;
    }

    private void setIdDoctor(int p_idDoctor) {
        m_idDoctor = p_idDoctor;
    }

    public String getNombresDoc() {
        return m_nombresDoc;
    }

    private void setNombresDoc(String p_nombresDoc) {
        m_nombresDoc = p_nombresDoc;
    }

    public String getApellidosDoc() {
        return m_apellidosDoc;
    }

    private void setApellidosDoc(String p_apellidosDoc) {
        m_apellidosDoc = p_apellidosDoc;
    }
    
    
    
}
