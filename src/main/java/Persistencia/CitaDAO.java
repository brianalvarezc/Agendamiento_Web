/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Persistencia;

import Logica.Cita;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author AlvarezCuadros
 */
public class CitaDAO {
    
    // Instrucciones SQL
    private String cita_query = "SELECT c.cita_Id, c.cita_Fecha, c.cita_Hora, c.cita_Autorizacion_Id, "
                                + "e.entidad_Nombre, p.paciente_Nombre, m.medico_Nombre, es.estado_Nombre, "
                                + "con.consultorio_Nombre, con.consultorio_Ubicacion "
                                + "FROM cita c " 
                                + "JOIN entidad e ON (c.cita_Entidad_Id = e.entidad_Id) "
                                + "JOIN paciente p ON (c.cita_Paciente_Id = p.paciente_Id) "
                                + "JOIN medico m ON (c.cita_Medico_Id = m.medico_Id) " 
                                + "JOIN estados es ON (c.cita_Estado_Id = es.estado_Id) " 
                                + "JOIN consultorio con ON (c.cita_Consultorio_Id = con.consultorio_Id)";
        
    
    public ArrayList<Cita> consultarCita(){
        ArrayList<Cita> lista_cita = new ArrayList<>();
        ConexionBD conexion = new ConexionBD();
        ResultSet rs = conexion.ejecutarQuery(cita_query);
        try{
            while(rs.next()){
                int cita_Id = rs.getInt("cita_Id");
                String cita_Fecha = rs.getString("cita_Fecha");
                String cita_Hora = rs.getString("cita_Hora");
                int cita_Autorizacion_Id = rs.getInt("cita_Autorizacion_Id");
                String entidad_Nombre = rs.getString("entidad_Nombre");
                String paciente_Nombre = rs.getString("paciente_Nombre");
                String medico_Nombre = rs.getString("medico_Nombre");
                String estado_Nombre = rs.getString("estado_Nombre");
                String consultorio_Nombre = rs.getString("consultorio_Nombre");
                String consultorio_Ubicacion = rs.getString("consultorio_Ubicacion");
                // Crear el objeto con los datos extraidos de la BD
                Cita cita = new Cita();
                cita.setCita_Id(cita_Id);
                cita.setCita_Fecha(cita_Fecha);
                cita.setCita_Hora(cita_Hora);
                cita.setCita_Autorizacion_Id(cita_Autorizacion_Id);
                cita.setCita_Entidad_Nombre(entidad_Nombre);
                cita.setCita_Paciente_Nombre(paciente_Nombre);
                cita.setCita_Medico_Nombre(medico_Nombre);
                cita.setCita_Estado_Nombre(estado_Nombre);
                cita.setCita_Consultorio_Nombre(consultorio_Nombre);
                cita.setCita_Consultorio_Ubicacion(consultorio_Ubicacion);
                
                lista_cita.add(cita);                
            }
        }
        catch(SQLException ex){
            conexion.desconectar();
            return null;
        }
        conexion.desconectar();
        return lista_cita;
    }
    
    public int crearCita(Cita c){
        ConexionBD conexion = new ConexionBD();
        // Se traen los datos del objeto que se creó en la pagina nuevaCita.jsp y que recibio recibidoCita.jsp
        String cita_Fecha = c.getCita_Fecha();
        String cita_Hora = c.getCita_Hora();
        int cita_Autorizacion_Id = c.getCita_Autorizacion_Id();
        int cita_Entidad_Id = c.getCita_Entidad_Id();
        int cita_Paciente_Id = c.getCita_Paciente_Id();
        int cita_Medico_Id = c.getCita_Medico_Id();
        int cita_Estado_Id = c.getCita_Estado_Id();
        int cita_Consultorio_Id = c.getCita_Consultorio_Id();
        
        // Se concatena la instruccion de INSERT
        String sql = "INSERT INTO `cita`(`cita_Fecha`, `cita_Hora`, `cita_Autorizacion_Id`, `cita_Entidad_Id`, `cita_Paciente_Id`, `cita_Medico_Id`, `cita_Estado_Id`, `cita_Consultorio_Id`) "
                    + "VALUES ('" + cita_Fecha + "','" + cita_Hora + "','" + cita_Autorizacion_Id + "','" + cita_Entidad_Id + "','" + cita_Paciente_Id + "','" + cita_Medico_Id + "','" + cita_Estado_Id + "','" + cita_Consultorio_Id + "')";

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
