/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Persistencia;

import Logica.Autorizacion;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author AlvarezCuadros
 */
public class AutorizacionDAO {
    
    // Instrucciones SQL
    private String autorizacion_query = "SELECT au.autorizacion_Id, e.entidad_Nombre, p.paciente_Nombre, au.autorizacion_fecha, es.estado_Nombre "
                                        + "FROM autorizacion au "
                                        + "JOIN entidad e ON (au.autorizacion_Entidad_Id = e.entidad_Id) "
                                        + "JOIN paciente p ON (au.autorizacion_Paciente_Id = p.paciente_Id) "
                                        + "JOIN estados es ON (au.autorizacion_Estado_Id = es.estado_Id) ;";
        
    
    public ArrayList<Autorizacion> consultarAutorizacion(){
        ArrayList<Autorizacion> lista_autorizacion = new ArrayList<>();
        ConexionBD conexion = new ConexionBD();
        ResultSet rs = conexion.ejecutarQuery(autorizacion_query);
        try{
            while(rs.next()){
                int autorizacion_Id = rs.getInt("autorizacion_Id");
                String autorizacion_Nombre_Entidad = rs.getString("entidad_Nombre");
                String paciente_Nombre = rs.getString("paciente_Nombre");
                String autorizacion_fecha = rs.getString("autorizacion_fecha");
                String estado_Nombre = rs.getString("estado_Nombre");
                // Crear el objeto con los datos extraidos de la BD
                Autorizacion autorizacion = new Autorizacion(autorizacion_Id, autorizacion_Nombre_Entidad, paciente_Nombre, autorizacion_fecha, estado_Nombre);
                lista_autorizacion.add(autorizacion);                
            }
        }
        catch(SQLException ex){
            conexion.desconectar();
            return null;
        }
        conexion.desconectar();
        return lista_autorizacion;
    }
    
    public int crearAutorizacion(Autorizacion a){
        ConexionBD conexion = new ConexionBD();
        // Se traen los datos del objeto que se creó en la pagina nueva_Autorizacion.jsp
        int autorizacion_Entidad_Id = a.getAutorizacion_Entidad_Id();
        int autorizacion_Paciente_Id = a.getAutorizacion_Paciente_Id();
        String autorizacion_Fecha = a.getAutorizacion_Fecha();
        int autorizacion_Estado_Id = a.getAutorizacion_Estado_Id();
        
        // Se concatena la instruccion de INSERT
        String sql = "INSERT INTO `autorizacion`(`autorizacion_Entidad_Id`, `autorizacion_Paciente_Id`, `autorizacion_fecha`, `autorizacion_Estado_Id`) "
                   + "VALUES ('" + autorizacion_Entidad_Id + "', '"+ autorizacion_Paciente_Id + "', '" + autorizacion_Fecha + "', '" + autorizacion_Estado_Id + "')";

        // Se ejecuta el query concatenado
        ResultSet rs = conexion.ejecutarInsert(sql);
        int id = 0;
        try{
            if(rs.next()){
                id = rs.getInt(1);
            }
        }
        catch(SQLException error){
            conexion.desconectar();
            return 0;
        }
        conexion.desconectar();
        return id;
    }
            
}
