/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.proyectomedicowebapp.logic;

import balcorpfw.database.DatabaseX;
import balcorpfw.logic.Logic;
import com.proyectomedicowebapp.objects.UserObj;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UserLogic extends Logic
{

    public UserLogic(String connString) 
    {
        super(connString);
    }
    
    public UserObj getUserInDB(String p_strUser, String p_strPassword, String p_strTabla) 
    {
        UserObj CUserDB = null;
        DatabaseX CDatabase = getDatabase();
        String strSQL = "select * "
                + "from "+p_strTabla+" "
                + "where usuario like '"+p_strUser+"' "
                + "and password like '"+p_strPassword+"';";
        ResultSet CResult = CDatabase.executeQuery(strSQL);
        //hOLA CHICOS LOCOS LLENOS DE LOCURA
        System.out.println(strSQL);
        
        
        if(p_strTabla.equals("clinicasdb.pacientes")) {
            
        
            if(CResult!=null)
            {
                try 
                {
                    //varibles locales que capturen esos datos
                    int iId;
                    String strUser;
                    String strPassword;

                    while(CResult.next())
                    {
                        iId = CResult.getInt("idPaciente");
                        strUser = CResult.getString("usuario");
                        strPassword = CResult.getString("password");


                        CUserDB = new UserObj(iId, strUser, strPassword, p_strTabla);

                    }
                } 
                catch (SQLException ex) 
                {
                    Logger.getLogger(UserLogic.class.getName()).log(Level.SEVERE, null, ex);
                }
                
                
            }

            
            
        } else if(p_strTabla.equals("clinicasdb.doctores")) {
            
            if(CResult!=null)
            {
                try 
                {
                    //varibles locales que capturen esos datos
                    int iId;
                    String strUser;
                    String strPassword;

                    while(CResult.next())
                    {
                        iId = CResult.getInt("idDoctor");
                        strUser = CResult.getString("usuario");
                        strPassword = CResult.getString("password");


                        CUserDB = new UserObj(iId, strUser, strPassword, p_strTabla);

                    }
                } 
                catch (SQLException ex) 
                {
                    Logger.getLogger(UserLogic.class.getName()).log(Level.SEVERE, null, ex);
                }
                
                
            }
        
        
        }
        return CUserDB;  
    }
     
    public boolean insertUser(String p_strNombre, 
            String p_strApellido, String p_strFoto, String p_strFecha,
            String p_strDUI, String p_strDirección, String p_strUser,
            String p_strPassword, String p_strCelular, String p_strEmail,
            String p_strSexo, String p_strEstatura, String p_strSangre,
            String p_strAlergias, String p_strHistrial)  
    {
        boolean hasFailed;
        DatabaseX database = getDatabase();
        
        String strSql = "INSERT INTO clinicasdb.pacientes"
                + "(usuario, password, nombres, apellidos, foto, fechaNacimiento, DUI, direccion, celular, correo, sexo, estatura, tipoSangre, alergias, historialFamiliar) "
                + "VALUES('"+p_strUser+"', '"+p_strPassword+"', '"+p_strNombre+"', '"+p_strApellido+"', "+p_strFoto+", '"+p_strFecha+"', '"+p_strDUI+"', "
                + "'"+p_strDirección+"', '"+p_strCelular+"', '"+p_strEmail+"', '"+p_strSexo+"', '"+p_strEstatura+"', '"+p_strSangre+"', '"+p_strAlergias+"', '"+p_strHistrial+"');";
        
        hasFailed = database.executeNonQueryBool(strSql);
        
        System.out.println(strSql);
        
        return hasFailed;
    }
    
}