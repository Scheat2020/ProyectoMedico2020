/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.proyectomedicowebapp.objects;

//quiero que sea un pojo
public class UserObj 
{
    //variables de instancia
    private int m_iId;
    private String m_strUser;
    private String m_strPassword;
    private String m_strTabla;

    //constructor
    public UserObj(int p_iId, String p_strUser, 
            String p_strPassword, String p_strTabla) 
    {
        setId(p_iId);
        setUser(p_strUser);
        setPassword(p_strPassword);
        setTabla(p_strTabla);
    }
        
    //getters and setters

    public int getId() {
        return m_iId;
    }

    private void setId(int p_iId) {
         m_iId = p_iId;
    }

    public String getUser() {
        return m_strUser;
    }

    private void setUser(String p_strUser) {
        m_strUser = p_strUser;
    }

    public String getPassword() {
        return m_strPassword;
    }

    private void setPassword(String p_strPassword) {
        m_strPassword = p_strPassword;
    }

    public String getTabla() {
        return m_strTabla;
    }

    private void setTabla(String p_strTabla) {
        m_strTabla = p_strTabla;
    }
}