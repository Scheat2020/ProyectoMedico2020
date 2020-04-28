/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.proyectomedicowebapp.logic;

import balcorpfw.database.DatabaseX;
import balcorpfw.logic.Logic;
import com.proyectomedicowebapp.objects.InfoAsisObj;
import com.proyectomedicowebapp.objects.InfoDocObj;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import com.proyectomedicowebapp.objects.InfoObj;
import com.proyectomedicowebapp.objects.RecetaObj;
import com.proyectomedicowebapp.objects.TablaObj;


/**
 *
 * @author Alexia
 */
public class InfoLogic extends Logic
{
    
    public InfoLogic(String connString) 
    {
        super(connString);
    }
    
    public InfoObj getInfoDB(String p_usuario ) {
        
        InfoObj CInfoDB = null;
        
        DatabaseX CDatabase = getDatabase();
        
        String strSQL = "select pacientes.*, citas.fecha, citas.hora "
                + "from clinicasdb.pacientes left join clinicasdb.citas on pacientes.idPaciente = citas.idPaciente "
                + "where pacientes.usuario = '"+p_usuario+"'";
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
                    String strFoto;
                    String strIdPaciente;
                    String strFecha;
                    String strHora;

                    while(CResult.next())
                    {
                        //Variables para inicio de sesiòn
                        strUser = CResult.getString("usuario");
                        strIdPaciente = CResult.getString("idPaciente");
                        
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
                        strFoto = CResult.getString("foto");
                        strFecha = CResult.getString("fecha");
                        strHora = CResult.getString("hora");

                        CInfoDB = new InfoObj(strNombre, strApellido, strFechaNacimiento, strDUI, strDireccion, strCelular, strCorreo, strSexo, strEstatura, strTipoSangre,strAlergias, strHistorialFamiliar, strFoto, strIdPaciente, strFecha, strHora);

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
                    String strPassword;
                    //declarar variables para informaciòn
                    String strNombre;
                    String strApellido;
                    String strCelular;
                    String strCorreo;
                    String strCredencial;
                    String strDireccion;
                    String strEspecialidad;
                    String strFoto;

                    while(CResult.next())
                    {
                        //Variables para inicio de sesiòn
                        strUser = CResult.getString("usuario");
                        strPassword = CResult.getString("password");
                        
                        //Variables para ddatos del usuario
                        strNombre= CResult.getString("nombres");
                        strApellido = CResult.getString("apellidos");
                        strCelular = CResult.getString("celular");
                        strCorreo = CResult.getString("correo");
                        strCredencial = CResult.getString("credencial");
                        strDireccion = CResult.getString("direccion");
                        strEspecialidad = CResult.getString("especialidad");
                        strFoto = CResult.getString("foto");

                        CInfoDB = new InfoDocObj(strNombre, strApellido,  strCelular, strCorreo, strCredencial, strDireccion, strEspecialidad, strUser, strPassword, strFoto);

                    }
                } 
                catch (SQLException ex) 
                {
                    Logger.getLogger(UserLogic.class.getName()).log(Level.SEVERE, null, ex);
                }
                
                
            }
            
        return CInfoDB;  
    }
    
    
    public InfoObj getInfoPaciente(String p_id) {
        
        InfoObj CInfoDB = null;
        
        DatabaseX CDatabase = getDatabase();
        
        String strSQL = "select pacientes.*, citas.fecha, citas.hora "
                + "from clinicasdb.pacientes left join clinicasdb.citas on pacientes.idPaciente = citas.idPaciente "
                + "where pacientes.idPaciente like '"+p_id+"'";
        ResultSet CResult = CDatabase.executeQuery(strSQL);
        
        System.out.println(strSQL);
        

            
            if(CResult!=null)
            {
                try 
                {
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
                    String strFoto;
                    String strIdPaciente;
                    String strFecha;
                    String strHora;

                    while(CResult.next())
                    {
                        
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
                        strFoto = CResult.getString("foto");
                        strIdPaciente = CResult.getString("idPaciente");
                        strFecha = CResult.getString("fecha");
                        strHora = CResult.getString("hora");

                        CInfoDB = new InfoObj(strNombre, strApellido, strFechaNacimiento, strDUI, strDireccion, strCelular, strCorreo, strSexo, strEstatura, strTipoSangre,strAlergias, strHistorialFamiliar, strFoto, strIdPaciente, strFecha, strHora);

                    }
                } 
                catch (SQLException ex) 
                {
                    Logger.getLogger(UserLogic.class.getName()).log(Level.SEVERE, null, ex);
                }
                
                
            }
            
        return CInfoDB;  
    }
    
    
    public TablaObj getCita(String p_idPaciente)
    {
        TablaObj CFistUser = null;
        DatabaseX CDatabase = getDatabase();
         String strSQL = "select pacientes.idPaciente, pacientes.nombres, pacientes.apellidos, citas.fecha, citas.hora " 
                 + "from clinicasdb.citas inner join clinicasdb.pacientes on citas.idPaciente = pacientes.idPaciente " 
                 + "where pacientes.idPaciente = "+p_idPaciente+";";
        ResultSet CResult = CDatabase.executeQuery(strSQL);
        
        if(CResult!=null)
        {
            try 
            {
                int IdPaciente;
                String strNombres;
                String strApellidos;
                String strCita;
                String strHora;
                
                while(CResult.next())
                {
                    IdPaciente = CResult.getInt("idPaciente");
                    strNombres = CResult.getString("nombres");
                    strApellidos = CResult.getString("apellidos"); 
                    strCita = CResult.getString("fecha"); 
                    strHora = CResult.getString("hora"); 
                    
                    CFistUser = new TablaObj(strNombres, strApellidos, IdPaciente, strCita, strHora);
                   
                }
            } catch (SQLException ex) 
            {
                Logger.getLogger(UserLogic.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        return CFistUser;
    }
    
    public boolean updateReceta(String p_idPaciente, String p_receta)  
        {
            boolean hasFailed;
            DatabaseX database = getDatabase();

            String strSql = "UPDATE clinicasdb.pacientes SET pacientes.receta='"+p_receta+"' where pacientes.idPaciente = "+p_idPaciente+";";

            hasFailed = database.executeNonQueryBool(strSql);

            System.out.println(strSql);

            return hasFailed;
        }
    
 
        public InfoAsisObj getInfoDBAsis(String p_usuario ) {
        
        InfoAsisObj CInfoDB = null;
        
        DatabaseX CDatabase = getDatabase();
        
        String strSQL = "select * "
                + "from clinicasdb.asistente "
                + "where usuario like '"+p_usuario+"'";
        ResultSet CResult = CDatabase.executeQuery(strSQL);
        
        System.out.println(strSQL);
            
            if(CResult!=null)
            {
                try 
                {
                    //varibles locales que capturen esos datos
                    String strUser;
                    String strPassword;
                    //declarar variables para informaciòn
                    String strNombre;
                    String strApellido;
                    String strCelular;
                    String strCorreo;
                    String strFoto;

                    while(CResult.next())
                    {
                        //Variables para inicio de sesiòn
                        strUser = CResult.getString("usuario");
                        strPassword = CResult.getString("password");
                        
                        //Variables para ddatos del usuario
                        strNombre= CResult.getString("nombres");
                        strApellido = CResult.getString("apellidos");
                        strCelular = CResult.getString("celular");
                        strCorreo = CResult.getString("correo");
                        strFoto = CResult.getString("foto");

                        CInfoDB = new InfoAsisObj(strNombre, strApellido,  strCelular, strCorreo, strUser, strPassword, strFoto);

                    }
                } 
                catch (SQLException ex) 
                {
                    Logger.getLogger(UserLogic.class.getName()).log(Level.SEVERE, null, ex);
                }
                
                
            }
            
        return CInfoDB;  
    }
        
    public RecetaObj getUltRec(String p_UserPaciente){
        RecetaObj CFistUser = null;
        DatabaseX CDatabase = getDatabase();
         String strSQL ="SELECT * FROM clinicasdb.recetas inner join clinicasdb.pacientes on recetas.idPaciente = pacientes.idPaciente "
                 + "where pacientes.usuario = '"+p_UserPaciente+"' order by recetas.fecha desc LIMIT 1;";
                 

        ResultSet CResult = CDatabase.executeQuery(strSQL);
        
        if(CResult!=null)
        {
            try 
            {
                
                String stridReceta;
                String strPaciente;
                String strReceta;
                String strFecha;
                
                while(CResult.next())
                {
                    stridReceta = CResult.getString("idReceta");
                    strPaciente = CResult.getString("idPaciente");
                    strReceta = CResult.getString("receta"); 
                    strFecha = CResult.getString("fecha"); 
                    
                    CFistUser = new RecetaObj(strPaciente, strReceta, strFecha, stridReceta);
                   
                }
            } catch (SQLException ex) 
            {
                Logger.getLogger(UserLogic.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        return CFistUser;
    }
}