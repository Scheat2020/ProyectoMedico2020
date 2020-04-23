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
public class InfoObj {


        private String m_nombres;
        private String m_apellidos;
        private String m_fechaNacimiento;
        private String m_DUI;
        private String m_direccion;
        private String m_celular;
        private String m_correo;
        private String m_sexo;
        private String m_estatura;
        private String m_tipoSangre;
        private String m_alergias;
        private String m_historialFamiliar;
        private String m_receta;

        public InfoObj( String p_nombres, String p_apellidos, String p_fechaNacimiento, String p_DUI, String p_direccion, String p_celular, String p_correo, String p_sexo, String p_estatura, String p_tipoSangre, String p_alergias, String p_historialFamiliar, String p_receta) {

            setNombres(p_nombres);
            setApellidos(p_apellidos);
            setFechaNacimiento(p_fechaNacimiento);
            setDUI(p_DUI);
            setDireccion(p_direccion);
            setCelular(p_celular);
            setCorreo(p_correo);
            setSexo(p_sexo);
            setEstatura(p_estatura);
            setTipoSangre(p_tipoSangre);
            setAlergias(p_alergias);
            setHistorialFamiliar(p_historialFamiliar);
            setReceta(p_receta);
        }
        
        
        //Getters
        

        public String getNombres() {
            return m_nombres;
        }

        public String getApellidos() {
            return m_apellidos;
        }

        public String getFechaNacimiento() {
            return m_fechaNacimiento;
        }

        public String getDUI() {
            return m_DUI;
        }

        public String getDireccion() {
            return m_direccion;
        }

        public String getCelular() {
            return m_celular;
        }

        public String getCorreo() {
            return m_correo;
        }

        public String getSexo() {
            return m_sexo;
        }

        public String getEstatura() {
            return m_estatura;
        }

        public String getTipoSangre() {
            return m_tipoSangre;
        }

        public String getAlergias() {
            return m_alergias;
        }

        public String getHistorialFamiliar() {
            return m_historialFamiliar;
        }

        public String getReceta() {
            return m_receta;
        }
        
        //setters

       
        private void setNombres(String p_nombres) {
           m_nombres = p_nombres;
        }

        private void setApellidos(String p_apellidos) {
            m_apellidos = p_apellidos;
        }

        private void setFechaNacimiento(String p_fechaNacimiento) {
            m_fechaNacimiento = p_fechaNacimiento;
        }

        private void setDUI(String p_DUI) {
            m_DUI = p_DUI;
        }

        private void setDireccion(String p_direccion) {
            m_direccion = p_direccion;
        }

        private void setCelular(String p_celular) {
            m_celular = p_celular;
        }

        private void setCorreo(String p_correo) {
            m_correo = p_correo;
        }

        private void setSexo(String p_sexo) {
            m_sexo = p_sexo;
        }

        private void setEstatura(String p_estatura) {
            m_estatura = p_estatura;
        }

        private void setTipoSangre(String p_tipoSangre) {
            m_tipoSangre = p_tipoSangre;
        }

        private void setAlergias(String p_alergias) {
            m_alergias = p_alergias;
        }

        private void setHistorialFamiliar(String p_historialFamiliar) {
            m_historialFamiliar = p_historialFamiliar;
        }

        private void setReceta(String p_receta) {
            m_receta = p_receta;
        }
        
        
        
 }
