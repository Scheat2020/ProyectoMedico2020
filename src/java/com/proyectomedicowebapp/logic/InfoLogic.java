/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.proyectomedicowebapp.logic;

import balcorpfw.database.DatabaseX;
import balcorpfw.logic.Logic;
import com.proyectomedicowebapp.objects.InfoDocObj;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import com.proyectomedicowebapp.objects.InfoObj;


/**
 *
 * @author Alexia
 */
public class InfoLogic extends Logic{
    
    public InfoLogic(String connString) 
    {
        super(connString);
    }
    
    public InfoObj getInfoDB(String p_usuario ) {
        
        InfoObj CInfoDB = null;
        
        DatabaseX CDatabase = getDatabase();
        
        String strSQL = "select * "
                + "from clinicasdb.pacientes "
                + "where usuario like '"+p_usuario+"'";
        ResultSet CResult = CDatabase.executeQuery(strSQL);
        
        System.out.println(strSQL);
        

            
            if(CResult!=null)
            {
                try 
                {
                    //varibles locales que capturen esos datos
                    String strUser;
                    //declarar variables para informaciòn
                    String strNombre;
                    String strApellido;
                    String strFechaNacimiento;
                    String strDUI;
                    String strDireccion;
                    String strCelular;
                    String strCorreo;
                    String strSexo;
                    String strEstatura;
                    String strTipoSangre;
                    String strAlergias;
                    String strHistorialFamiliar;
                    String strReceta;
                    String strFoto;

                    while(CResult.next())
                    {
                        //Variables para inicio de sesiòn
                        strUser = CResult.getString("usuario");
                        
                        //Variables para ddatos del usuario
                        strNombre= CResult.getString("nombres");
                        strApellido = CResult.getString("apellidos");
                        strFechaNacimiento = CResult.getString("fechaNacimiento");
                        strDUI = CResult.getString("DUI");
                        strDireccion = CResult.getString("direccion");
                        strCelular = CResult.getString("celular");
                        strCorreo = CResult.getString("correo");
                        strSexo = CResult.getString("sexo");
                        strEstatura = CResult.getString("estatura");
                        strTipoSangre = CResult.getString("tipoSangre");
                        strAlergias = CResult.getString("alergias");
                        strHistorialFamiliar = CResult.getString("historialFamiliar");
                        strReceta = CResult.getString("receta");
                        strFoto = CResult.getString("foto");

                        CInfoDB = new InfoObj(strNombre, strApellido, strFechaNacimiento, strDUI, strDireccion, strCelular, strCorreo, strSexo, strEstatura, strTipoSangre,strAlergias, strHistorialFamiliar, strReceta, strFoto);

                    }
                } 
                catch (SQLException ex) 
                {
                    Logger.getLogger(UserLogic.class.getName()).log(Level.SEVERE, null, ex);
                }
                
                
            }
            
        return CInfoDB;  
    }
    
        
    public InfoDocObj getInfoDBDoc(String p_usuario ) {
        
        InfoDocObj CInfoDB = null;
        
        DatabaseX CDatabase = getDatabase();
        
        String strSQL = "select * "
                + "from clinicasdb.doctores "
                + "where usuario like '"+p_usuario+"'";
        ResultSet CResult = CDatabase.executeQuery(strSQL);
        
        System.out.println(strSQL);
        

            
            if(CResult!=null)
            {
                try 
                {
                    //varibles locales que capturen esos datos
                    String strUser;
                    //declarar variables para informaciòn
                    String strNombre;
                    String strApellido;
                    String strCelular;
                    String strCorreo;
                    String strCredencial;
                    String strDireccion;
                    String strEspecialidad;

                    while(CResult.next())
                    {
                        //Variables para inicio de sesiòn
                        strUser = CResult.getString("usuario");
                        
                        //Variables para ddatos del usuario
                        strNombre= CResult.getString("nombres");
                        strApellido = CResult.getString("apellidos");
                        strCelular = CResult.getString("celular");
                        strCorreo = CResult.getString("correo");
                        strCredencial = CResult.getString("credencial");
                        strDireccion = CResult.getString("direccion");
                        strEspecialidad = CResult.getString("especialidad");

                        CInfoDB = new InfoDocObj(strNombre, strApellido,  strCelular, strCorreo, strCredencial, strDireccion, strEspecialidad);

                    }
                } 
                catch (SQLException ex) 
                {
                    Logger.getLogger(UserLogic.class.getName()).log(Level.SEVERE, null, ex);
                }
                
                
            }
            
        return CInfoDB;  
    }
    
}
  

