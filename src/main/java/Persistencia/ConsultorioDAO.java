/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Persistencia;

import Logica.Consultorio;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author AlvarezCuadros
 */
public class ConsultorioDAO {
    // CRUD de Consultorio
    
    // Crear
    public int crearConsultorio(Consultorio c){
        // Se crea el objeto con la informacion que se ingreso en nuevoConsultorio.jsp y recibido por recibidoConsultorio.jsp
        String consultorio_Nombre = c.getConsultorio_Nombre();
        String consultorio_Ubicacion = c.getConsultorio_Ubicacion();
        int consultorio_Estado_Id = c.getConsultorio_Estado_Id();
        
        // Se crea la instruccion para crear un nuevo registro
        String sql = "INSERT INTO `consultorio`(`consultorio_Nombre`, `consultorio_Ubicacion`, `consultorio_Estado_Id`) VALUES ('"+consultorio_Nombre+"','"+consultorio_Ubicacion+"','"+consultorio_Estado_Id+"');";
        
        // Se crea una variable que guarda cuantas filas fueron afectadas
        int filasAfectadas = 0;
        
        // Se ejecuta el query para insertar en la BD
        ConexionBD conexion = new ConexionBD();
        ResultSet rs = conexion.ejecutarInsert(sql);
        
        // Se pregunta si hay algun valor en el resultset
        try {
            if(rs.next()){
                filasAfectadas = rs.getInt(1);
            }
        } catch (Exception e) {
            conexion.desconectar();
            return 0;
        }
        conexion.desconectar();
        return filasAfectadas;
        
        
    }
    
    
    // Recuperar o consultar
    // Debe devolver un arraylist de objetos para imprimirlo en pantalla
    public ArrayList<Consultorio> consultarConsultorio(){
        ArrayList<Consultorio> lista = new ArrayList<>();
        // Ese arrayList debo traerlo de la BD, por lo que necesito una conexionBD
        ConexionBD conexion = new ConexionBD();
        // Debo obtener un ResultSet de la BD porque esa es la forma de obtener los datos
        // Debo enviar una consulta en SQL para traer los datos
        String sql = "SELECT c.consultorio_Id, c.consultorio_Nombre, c.consultorio_Ubicacion, e.estado_Nombre FROM consultorio c JOIN estados e ON c.consultorio_Estado_Id = e.estado_Id; ";
        ResultSet rs = conexion.ejecutarQuery(sql);
        // Usando try Catch se hace la consulta
        try {
            // Mientras exista un registro siguiente...
            while(rs.next()){
                // Guardo los atributos de los objetos 
                int consultorio_Id = rs.getInt("consultorio_Id");
                String consultorio_Nombre = rs.getString("consultorio_Nombre");
                String consultorio_Ubicacion = rs.getString("consultorio_Ubicacion");
                String consultorio_Estado_Nombre = rs.getString("estado_Nombre");
                
                // Creo el objeto y le doy sus atributos
                Consultorio c = new Consultorio();
                c.setConsultorio_Id(consultorio_Id);
                c.setConsultorio_Nombre(consultorio_Nombre);
                c.setConsultorio_Ubicacion(consultorio_Ubicacion);
                c.setConsultorio_Estado_Nombre(consultorio_Estado_Nombre);
                
                // Agrego el objeto al arraylist
                lista.add(c);
            }
            
        } catch (SQLException e) {
            conexion.desconectar();
            return null;
        }
        // desconecto de la BD
        conexion.desconectar();
        // Devuelvo el arreglo con todos los objetos creados
        return lista;
        
    }
    
    // Update o Actualizar
    
    // Borrar (deshabilitar)
    
    
}
