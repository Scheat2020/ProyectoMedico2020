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
    
    public UserObj getUserInDB(String p_strUser, String p_strPassword) 
    {
        UserObj CUserDB = null;
        DatabaseX CDatabase = getDatabase();
        String strSQL = "select *"
                +" from clinicasdb.pacientes"
                +" where usuario like '"+p_strUser+"'"
                +"and password like '"+p_strPassword+"';";
        ResultSet CResult = CDatabase.executeQuery(strSQL);
        
        System.out.println(strSQL);
        
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
                    
                    CUserDB = new UserObj(iId, strUser, strPassword);
                    
                }
            } 
            catch (SQLException ex) 
            {
                Logger.getLogger(UserLogic.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        return CUserDB;
    }
        
}
