/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Persistencia;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;


/**
 *
 * @author AlvarezCuadros
 */
public class ConexionBD {
    
    // Atributos
    private String conectorInstalado = "jdbc:mariadb:";
    private String host = "localhost:3306";
    private String baseDatos = "agendamientoweb";
    private String username = "root";
    private String password = "";
    private Connection conexion; 
    private Statement ejecutar;
    
    // Constructor
    public ConexionBD() {
        conectar();
    }

    // Metodos
    
    // Metodo para verificar que el objeto Connection conexion es diferente de nulo, es decir, que si hay una conexion
    public boolean isConectado(){
        return (this.conexion != null);
    }
    
    // Metodo para conectar con la BD
    private void conectar() {
        try{
            String cadenaConexion = conectorInstalado + "//" + host + "/" + baseDatos;
            Class.forName("org.mariadb.jdbc.Driver");
            conexion = DriverManager.getConnection(cadenaConexion, username, password);
            ejecutar = conexion.createStatement();
            ejecutar.setQueryTimeout(30);
            
        }
        catch(Exception error){
            error.printStackTrace();
        }
            
    }
    
    // Metodos para consulta y actualizacion de datos de BD
    // Query
    public ResultSet ejecutarQuery(String sql){
        ResultSet rs = null;
        try{
            rs = ejecutar.executeQuery(sql);
        }
        catch(Exception error){
            error.printStackTrace();
        }
        return rs;
    }
    // Update
    public ResultSet ejecutarUpdate(String sql){
        ResultSet rs = null;
        try{
            int cant = ejecutar.executeUpdate(sql); // Recibe la cantidad de filas afectadas
            if(cant > 0){
                rs = ejecutar.getGeneratedKeys();
            }
        }
        catch(Exception error){
            error.printStackTrace();
        }
        return rs;
    }
    
    // Insert
    public ResultSet ejecutarInsert(String sql){
        ResultSet rs = null;
        try{
            int cant = ejecutar.executeUpdate(sql, Statement.RETURN_GENERATED_KEYS);
            if (cant > 0){
                rs = ejecutar.getGeneratedKeys();
            }
        }
        catch(Exception error){
            error.printStackTrace();
        }
        return rs;
    }
    
    // Metodo desconectar
    public void desconectar(){
        try{
                conexion.close();
                conexion = null;
        }
        catch(Exception error){
                error.printStackTrace();
        }
    }
}
