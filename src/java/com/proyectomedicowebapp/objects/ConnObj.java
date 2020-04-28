package com.proyectomedicowebapp.objects;

public class ConnObj {
    public String getConn() {
        String connString = "jdbc:mysql://localhost/clinicasdb?user=root&password=12345&autoReconnect=true&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
        
        return connString;
    }
}
