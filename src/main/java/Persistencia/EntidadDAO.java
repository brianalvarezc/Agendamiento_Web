/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Persistencia;

import Logica.Entidad;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author AlvarezCuadros
 */
public class EntidadDAO {
    // Se declaran las variables que se van a usar
    private String sql = "SELECT e.entidad_Id, e.entidad_Nombre, e.entidad_Tarifa, e.entidad_Telefono, es.estado_Nombre, e.entidad_Ubicacion FROM entidad e JOIN estados es ON (e.entidad_Estado_Id = es.estado_Id);"; // Variable que contiene las instrucciones SQL
    
    // Se crea la función para consultar datos
    public ArrayList<Entidad> consultarLista(){
        // La entidad DAO ejecuta las consultas a la base de datos por medio de su conexion a ella y retorna un Array de objetos Entidad
        ArrayList<Entidad> lista_entidades = new ArrayList<>();
        // un objeto conexion que conecte con la base de datos
        ConexionBD conexion = new ConexionBD();
        // Un ResultSet para almacenar todas las filas que entrega la consulta de la BD
        ResultSet rs = conexion.ejecutarQuery(sql);
        
        // Luego de esto, recorremos el resultset para extraer los datos y crear los objetos
        try{
            while(rs.next()){
                int entidad_Id = rs.getInt("entidad_Id");
                String entidad_Nombre = rs.getString("entidad_Nombre");
                String entidad_Tarifa = rs.getString("entidad_Tarifa");
                int entidad_Telefono = rs.getInt("entidad_Telefono");
                String entidad_Estado_Nombre = rs.getString("estado_Nombre");
                String entidad_Ubicacion = rs.getString("entidad_Ubicacion");
                                
                // Luego se crea el objeto con la fila de datos
                Entidad e = new Entidad();
                e.setEntidad_Id(entidad_Id);
                e.setEntidad_Nombre(entidad_Nombre);
                e.setEntidad_Tarifa(entidad_Tarifa);
                e.setEntidad_Telefono(entidad_Telefono);
                e.setEntidad_Estado_Nombre(entidad_Estado_Nombre);
                e.setEntidad_Ubicacion(entidad_Ubicacion);
                
                // Se agrega al array que se esta construyendo
                lista_entidades.add(e);
                
            }
        }
        catch (SQLException e) {
            conexion.desconectar();
            return null;
        }
        conexion.desconectar();
        return lista_entidades;
    }
    
    // Funcion de insertar datos a la BD
    public int crearEntidad(Entidad e){
        // Necesitamos armar una instruccion sql para ejecutarla
        String sql = "INSERT INTO `entidad`(`entidad_Nombre`, `entidad_Estado_Id`, `entidad_Ubicacion`, `entidad_Telefono`, `entidad_Tarifa`) VALUES ('"+e.getEntidad_Nombre()+"','"+e.getEntidad_Estado_Id()+"','"+e.getEntidad_Ubicacion()+"','"+e.getEntidad_Telefono()+"','"+e.getEntidad_Tarifa()+"');";
        // Luego se envia por medio de la conexion a la base de datos las  instrucciones SQL
        ConexionBD conexion = new ConexionBD();
        // Se define un resultset porque es el tipo de dato que devuelve la base de datos
        ResultSet rs = conexion.ejecutarInsert(sql);
        // Este resultset lo que hace es almacenar la cantidad de columnas afectadas, que para este caso, al ser insert, debe ser una sola
        // entonces preguntamos si se afecto una o más filas y con eso sabremos que se inserto una fila en la tabla de la BD
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
        