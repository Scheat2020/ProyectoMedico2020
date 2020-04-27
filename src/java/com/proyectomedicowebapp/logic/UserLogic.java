/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.proyectomedicowebapp.logic;

import balcorpfw.database.DatabaseX;
import balcorpfw.logic.Logic;
import com.proyectomedicowebapp.objects.TablaAsisObj;
import com.proyectomedicowebapp.objects.TablaDocObj;
import com.proyectomedicowebapp.objects.TablaObj;
import com.proyectomedicowebapp.objects.UserObj;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UserLogic extends Logic
{

    public UserLogic(String connString) 
    {
        super(connString);
    }
    
    public List<TablaObj> getAllUsers(String strUser)
    {
        List<TablaObj> CL = null;
        DatabaseX CDatabase = getDatabase();
        String strSQL = "select pacientes.idPaciente, pacientes.nombres, pacientes.apellidos, citas.fecha, citas.hora from clinicasdb.pacientes "
                + "inner join clinicasdb.citas on citas.idPaciente = pacientes.idPaciente inner join clinicasdb.doctores on citas.idDoctor = doctores.idDoctor "
                + "where citas.fecha >= current_date() and doctores.usuario = '"+strUser+"' "
                + "Order by citas.fecha;";
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
                TablaObj CTemp;
                CL = new ArrayList<>();
                
                while(CResult.next())
                {
                    IdPaciente = CResult.getInt("idPaciente");
                    strNombres = CResult.getString("nombres");
                    strApellidos = CResult.getString("apellidos"); 
                    strCita = CResult.getString("fecha"); 
                    strHora = CResult.getString("hora"); 
                    
                    CTemp = new TablaObj(strNombres, strApellidos, IdPaciente, strCita, strHora);
                    CL.add(CTemp);
                   
                }
            } catch (SQLException ex) 
            {
                Logger.getLogger(UserLogic.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        return CL;
    }
    
    
    public List<TablaDocObj> getAllDoctors()
    {
        List<TablaDocObj> CL = null;
        DatabaseX CDatabase = getDatabase();
        String strSQL = "select * from clinicasdb.doctores order by doctores.apellidos;";
        ResultSet CResult = CDatabase.executeQuery(strSQL);
        
        if(CResult!=null)
        {
            try 
            {
                int IdDoctor;
                String strNombres;
                String strApellidos;
                
                TablaDocObj CTemp;
                CL = new ArrayList<>();
                
                while(CResult.next())
                {
                    IdDoctor = CResult.getInt("idDoctor");
                    strNombres = CResult.getString("nombres");
                    strApellidos = CResult.getString("apellidos"); 
                    
                    
                    CTemp = new TablaDocObj(IdDoctor, strNombres, strApellidos);
                    CL.add(CTemp);
                   
                }
            } catch (SQLException ex) 
            {
                Logger.getLogger(UserLogic.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        return CL;
    }
    
    
    public List<TablaDocObj> getAllPacientes()
    {
        List<TablaDocObj> CL = null;
        DatabaseX CDatabase = getDatabase();
        String strSQL = "select * from clinicasdb.pacientes order by pacientes.apellidos;";
        ResultSet CResult = CDatabase.executeQuery(strSQL);
        
        if(CResult!=null)
        {
            try 
            {
                int idPaciente;
                String strNombres;
                String strApellidos;
                
                TablaDocObj CTemp;
                CL = new ArrayList<>();
                
                while(CResult.next())
                {
                    idPaciente = CResult.getInt("idPaciente");
                    strNombres = CResult.getString("nombres");
                    strApellidos = CResult.getString("apellidos"); 
                    
                    
                    CTemp = new TablaDocObj(idPaciente, strNombres, strApellidos);
                    CL.add(CTemp);
                   
                }
            } catch (SQLException ex) 
            {
                Logger.getLogger(UserLogic.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        return CL;
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
        
        
        }else if(p_strTabla.equals("clinicasdb.asistente")) {
            
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
                        iId = CResult.getInt("idasistente");
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
        }return CUserDB;  
    }
     
    
    
    public TablaObj getFistUserInDB(String strUser)
    {
         TablaObj CFistUser = null;
        DatabaseX CDatabase = getDatabase();
         String strSQL = "select pacientes.idPaciente, pacientes.nombres, pacientes.apellidos, citas.fecha, citas.hora " 
                 + "from clinicasdb.pacientes inner join clinicasdb.citas on citas.idPaciente = pacientes.idPaciente "
                 + "inner join clinicasdb.doctores on citas.idDoctor = doctores.idDoctor "
                 + "where citas.fecha >= current_date() and doctores.usuario = '"+strUser+"' " 
                 + "order by citas.fecha and citas.hora Limit 1;";
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
                    + "VALUES('"+p_strUser+"', '"+p_strPassword+"', '"+p_strNombre+"', '"+p_strApellido+"', '"+p_strFoto+"', '"+p_strFecha+"', '"+p_strDUI+"', "
                    + "'"+p_strDirección+"', '"+p_strCelular+"', '"+p_strEmail+"', '"+p_strSexo+"', '"+p_strEstatura+"', '"+p_strSangre+"', '"+p_strAlergias+"', '"+p_strHistrial+"');";

            hasFailed = database.executeNonQueryBool(strSql);

            System.out.println(strSql);

            return hasFailed;
        }
 
    
    
        public boolean insertCita(String p_strMotivo, 
            String p_strFecha, String p_strHora, String p_strPaciente,
            String p_strDoctor)  
        {
            boolean hasFailed;
            DatabaseX database = getDatabase();

            String strSql = "INSERT INTO clinicasdb.citas"
                    + "(motivo, fecha, hora, idPaciente, idDoctor) "
                    + "VALUES('"+p_strMotivo+"', '"+p_strFecha+"', '"+p_strHora+"', '"+p_strPaciente+"', '"+p_strDoctor+"');";

            hasFailed = database.executeNonQueryBool(strSql);

            System.out.println(strSql);

            return hasFailed;
        }

    public List<TablaAsisObj> getAllCitasInfo() {
        List<TablaAsisObj> CL = null;
        DatabaseX CDatabase = getDatabase();
        String strSQL = "select pacientes.idPaciente, pacientes.nombres, pacientes.apellidos, citas.fecha, citas.hora, doctores.idDoctor, doctores.nombres, doctores.apellidos "
                + "from  clinicasdb.pacientes inner join clinicasdb.citas on citas.idPaciente = pacientes.idPaciente "
                + "inner join clinicasdb.doctores on citas.idDoctor = doctores.idDoctor "
                + "where citas.fecha >= current_date() "
                + "Order by citas.fecha;";
        ResultSet CResult = CDatabase.executeQuery(strSQL);
        
        if(CResult!=null)
        {
            try 
            {
                int IdPaciente;
                String strNombresPa;
                String strApellidosPa;
                String strCita;
                String strHora;
                int IdDoctor; 
                String strNombresDoc;
                String strApellidosDoc;
                TablaAsisObj CTemp;
                CL = new ArrayList<>();
                
                while(CResult.next())
                {
                    IdPaciente = CResult.getInt("idPaciente");
                    strNombresPa = CResult.getString("pacientes.nombres");
                    strApellidosPa = CResult.getString("pacientes.apellidos"); 
                    strCita = CResult.getString("fecha"); 
                    strHora = CResult.getString("hora");
                    IdDoctor = CResult.getInt("idDoctor");
                    strNombresDoc = CResult.getString("doctores.nombres");
                    strApellidosDoc = CResult.getString("doctores.apellidos"); 
                    
                    CTemp = new TablaAsisObj(strNombresPa, strApellidosPa, IdPaciente, strCita, strHora, IdDoctor, strNombresDoc, strApellidosDoc);
                    CL.add(CTemp);
                   
                }
            } catch (SQLException ex) 
            {
                Logger.getLogger(UserLogic.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        return CL;
    }

    public boolean deleteCita(String strFecha, String strHora, String strPaciente, String strDoctor) 
    {
            
        boolean hasFailed;
        DatabaseX database = getDatabase();

        String strSql = "DELETE FROM clinicasdb.citas WHERE idPaciente="+strPaciente+" and idDoctor = "+strDoctor+" and fecha = '"+strFecha+"' and hora = '"+strHora+"';";

        hasFailed = database.executeNonQueryBool(strSql);

        System.out.println(strSql);

        return hasFailed;
        
    }
    
}